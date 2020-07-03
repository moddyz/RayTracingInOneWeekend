/// \page 3_surfaceNormalsAndMultipleObjects Surface Normals and Multiple Objects
///
/// Example program extending from \ref 2_addingASphere which adds:
/// - shading to the sphere based on the sphere's surface normals
/// - multiple, ray-tracable objects into the scene.

#include <cxxopts.hpp>

#include <gm/types/vec2iRange.h>
#include <gm/types/vec3f.h>

#include <gm/functions/linearInterpolation.h>
#include <gm/functions/linearMap.h>
#include <gm/functions/normalize.h>

#include <raytrace/camera.h>
#include <raytrace/hitRecord.h>
#include <raytrace/imageBuffer.h>
#include <raytrace/intRange.h>
#include <raytrace/ppmImageWriter.h>
#include <raytrace/sphere.h>

/// \typedef SceneObjectPtrs
///
/// A collection of scene objects.
using SceneObjectPtrs = std::vector< raytrace::SceneObjectPtr >;

/// Compute the ray color based on origin & direction.
///
/// A hard-coded sphere is placed at the worldspace position \p (0, 0, -1.0).
///
/// When rays intersect the sphere, it will produce a red pixel.
/// Otherwise, the background color of a blue/white gradient is returned.
static gm::Vec3f ComputeRayColor( const gm::Vec3f&       i_rayOrigin,
                                  const gm::Vec3f&       i_rayDirection,
                                  const SceneObjectPtrs& i_sceneObjectPtrs )
{
    // Iterate over all scene objects and test for ray hit(s).
    // We'd like to track the nearest hit and prune out farther objects.
    raytrace::HitRecord record;
    bool                objectHit           = false;
    float               nearestHitMagnitude = std::numeric_limits< float >::max();
    for ( const raytrace::SceneObjectPtr& sceneObjectPtr : i_sceneObjectPtrs )
    {
        if ( sceneObjectPtr->Hit( i_rayOrigin, i_rayDirection, gm::Vec2f( 0, nearestHitMagnitude ), record ) )
        {
            objectHit           = true;
            nearestHitMagnitude = record.m_magnitude;
        }
    }

    if ( objectHit )
    {
        const gm::Vec2f normalRange( -1.0, 1.0 );
        const gm::Vec2f colorRange( 0, 1.0 );
        return gm::LinearMap( record.m_normal, normalRange, colorRange );
    }

    // Compute background color, by interpolating between two colors with the weight as the function of the ray
    // direction.
    float weight = 0.5f * i_rayDirection.Y() + 1.0;
    return gm::LinearInterpolation( gm::Vec3f( 1.0, 1.0, 1.0 ), gm::Vec3f( 0.5, 0.7, 1.0 ), weight );
}

int main( int i_argc, char** i_argv )
{
    // Parse command line arguments.
    cxxopts::Options options( "1_sendingRays", "Sending rays into the scene to produce colors." );
    options.add_options()                                                                       // Command line options.
        ( "w,width", "Width of the image.", cxxopts::value< int >()->default_value( "384" ) )   // Width
        ( "h,height", "Height of the image.", cxxopts::value< int >()->default_value( "256" ) ) // Height;
        ( "o,output", "Output file", cxxopts::value< std::string >()->default_value( "out.ppm" ) ); // Output file.

    auto        args        = options.parse( i_argc, i_argv );
    int         imageWidth  = args[ "width" ].as< int >();
    int         imageHeight = args[ "height" ].as< int >();
    std::string filePath    = args[ "output" ].as< std::string >();

    // Allocate the image to write into.
    raytrace::RGBImageBuffer image( imageWidth, imageHeight );
    gm::Bounds2i             imageExtent = image.Extent();

    // Camera model.
    raytrace::Camera camera( ( float ) imageWidth / imageHeight );

    // Allocate scene objects.
    SceneObjectPtrs sceneObjectPtrs;
    sceneObjectPtrs.push_back( std::make_unique< raytrace::Sphere >( gm::Vec3f( 0.0f, 0.0f, -1.0f ), 0.5 ) );

    // Compute ray directions.
    std::vector< gm::Vec3f > rayDirections( imageWidth * imageHeight );
    for ( gm::Vec2i pixelCoord : gm::Vec2iRange( imageExtent.Min(), imageExtent.Max() ) )
    {
        // Compute normalised viewport coordinates (values between 0 and 1).
        float u = float( pixelCoord.X() ) / imageWidth;
        float v = float( pixelCoord.Y() ) / imageHeight;

        // Get the direction of the respective ray.
        gm::Vec3f& rayDirection = rayDirections[ pixelCoord.X() + pixelCoord.Y() * imageWidth ];

        // Compute the direction of the ray, by translation from the bottom-left viewport coordinate
        // to the coordinate in the viewport plane with respect to the image pixel coordinate.
        rayDirection = camera.ViewportBottomLeft()           // Starting from the viewport bottom left...
                       + ( u * camera.ViewportHorizontal() ) // Horizontal offset.
                       + ( v * camera.ViewportVertical() )   // Vertical offset.
                       - camera.Origin();                    // Get difference vector from camera origin.

        // Normalize the direction of the ray.
        rayDirection = gm::Normalize( rayDirection );
    }

    // Convert rays into colors.
    for ( gm::Vec2i pixelCoord : gm::Vec2iRange( imageExtent.Min(), imageExtent.Max() ) )
    {
        const gm::Vec3f& rayDirection           = rayDirections[ pixelCoord.X() + pixelCoord.Y() * imageWidth ];
        image( pixelCoord.X(), pixelCoord.Y() ) = ComputeRayColor( camera.Origin(), rayDirection, sceneObjectPtrs );
    }

    // Write to disk.
    if ( !raytrace::WritePPMImage( image, filePath ) )
    {
        return -1;
    }

    return 0;
}
