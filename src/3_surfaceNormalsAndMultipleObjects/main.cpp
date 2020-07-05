/// \page 3_surfaceNormalsAndMultipleObjects Surface Normals and Multiple Objects
///
/// Example program extending from \ref 2_addingASphere which adds:
/// - shading to the sphere based on the sphere's surface normals
/// - multiple, ray-tracable objects into the scene.

#include <cxxopts.hpp>

#include <gm/types/floatRange.h>
#include <gm/types/ray.h>
#include <gm/types/vec2iRange.h>
#include <gm/types/vec3f.h>

#include <gm/functions/linearInterpolation.h>
#include <gm/functions/linearMap.h>
#include <gm/functions/normalize.h>

#include <raytrace/camera.h>
#include <raytrace/hitRecord.h>
#include <raytrace/imageBuffer.h>
#include <raytrace/ppmImageWriter.h>
#include <raytrace/sphere.h>

/// \typedef SceneObjectPtrs
///
/// A collection of scene objects.
using SceneObjectPtrs = std::vector< raytrace::SceneObjectPtr >;

/// Compute the ray color.
///
/// The ray is tested for intersection against a collection of scene objects.
/// The color is computed based on the surface outward normal of the nearest intersection.
///
/// In the case where there is no intersection, a background color is interpolated from a top-down gradient.
///
/// \param i_ray The ray.
/// \param i_sceneObjectPtrs The collection of scene objects to test for ray intersection.
///
/// \return The computed ray color.
static gm::Vec3f ComputeRayColor( const gm::Ray& i_ray, const SceneObjectPtrs& i_sceneObjectPtrs )
{
    // Iterate over all scene objects and test for ray hit(s).
    // We'd like to track the nearest hit and prune out farther objects.
    raytrace::HitRecord record;
    bool                objectHit           = false;
    float               nearestHitMagnitude = std::numeric_limits< float >::max();
    for ( const raytrace::SceneObjectPtr& sceneObjectPtr : i_sceneObjectPtrs )
    {
        if ( sceneObjectPtr->Hit( i_ray, gm::FloatRange( 0, nearestHitMagnitude ), record ) )
        {
            objectHit           = true;
            nearestHitMagnitude = record.m_magnitude;
        }
    }

    if ( objectHit )
    {
        const gm::FloatRange normalRange( -1.0, 1.0 );
        const gm::FloatRange colorRange( 0, 1.0 );
        return gm::LinearMap( record.m_normal, normalRange, colorRange );
    }

    // Compute background color, by interpolating between two colors with the weight as the function of the ray
    // direction.
    float weight = 0.5f * i_ray.Direction().Y() + 1.0;
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

    // Camera model.
    raytrace::Camera camera( ( float ) imageWidth / imageHeight );

    // Allocate scene objects.
    SceneObjectPtrs sceneObjectPtrs;
    sceneObjectPtrs.push_back( std::make_unique< raytrace::Sphere >( gm::Vec3f( 0.0f, 0.0f, -1.0f ), 0.5 ) );
    sceneObjectPtrs.push_back( std::make_unique< raytrace::Sphere >( gm::Vec3f( 0.0f, -100.5, -1.0f ), 100 ) );

    // Compute ray directions.
    for ( const gm::Vec2i& pixelCoord : image.Extent() )
    {
        // Compute normalised viewport coordinates (values between 0 and 1).
        float u = float( pixelCoord.X() ) / imageWidth;
        float v = float( pixelCoord.Y() ) / imageHeight;

        gm::Ray ray( /* origin */ camera.Origin(),               // The origin of the ray is the camera origin.
                     /* direction */ camera.ViewportBottomLeft() // Starting from the viewport bottom left...
                         + ( u * camera.ViewportHorizontal() )   // Horizontal offset.
                         + ( v * camera.ViewportVertical() )     // Vertical offset.
                         - camera.Origin()                       // Get difference vector from camera origin.
        );

        // Normalize the direction of the ray.
        ray.Direction() = gm::Normalize( ray.Direction() );

        // Compute pixel color.
        image( pixelCoord.X(), pixelCoord.Y() ) = ComputeRayColor( ray, sceneObjectPtrs );
    }

    // Write to disk.
    if ( !raytrace::WritePPMImage( image, filePath ) )
    {
        return -1;
    }

    return 0;
}
