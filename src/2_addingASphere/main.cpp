/// \file 2_addingASphere/main.cpp
///
/// Example program which uses ray sphere intersection to draw a red sphere, with a background.

#include <cxxopts.hpp>

#include <gm/types/vec2iRange.h>
#include <gm/types/vec3f.h>

#include <gm/functions/lerp.h>
#include <gm/functions/normalize.h>
#include <gm/functions/raySphereIntersection.h>

#include <raytrace/imageBuffer.h>
#include <raytrace/intRange.h>
#include <raytrace/ppmImageWriter.h>

/// Compute the ray color based on origin & direction.
///
/// A hard-coded sphere is placed at the worldspace position \p (0, 0, -1.0).
///
/// When rays intersect the sphere, it will produce a red pixel.
/// Otherwise, the background color of a blue/white gradient is returned.
static gm::Vec3f ComputeRayColor( const gm::Vec3f& i_rayOrigin, const gm::Vec3f& i_rayDirection )
{
    // Test for sphere intersection (hard-coded placement of the sphere)
    gm::Vec2f intersections;
    if ( gm::RaySphereIntersection( gm::Vec3f( 0, 0, -1.0 ), 0.5, i_rayOrigin, i_rayDirection, intersections ) > 0 )
    {
        return gm::Vec3f( 1, 0, 0 );
    }

    // Compute background color, by interpolating between two colors with the weight as the function of the ray
    // direction.
    float weight = 0.5f * i_rayDirection.Y() + 1.0;
    return gm::Lerp( gm::Vec3f( 1.0, 1.0, 1.0 ), gm::Vec3f( 0.5, 0.7, 1.0 ), weight );
}

int main( int i_argc, char** i_argv )
{
    // Parse command line arguments.
    cxxopts::Options options( "1_sendingRays", "Sending rays into the scene to produce colors." );
    options.add_options()                                                                       // Command line options.
        ( "w,width", "Width of the image.", cxxopts::value< int >()->default_value( "256" ) )   // Width
        ( "h,height", "Height of the image.", cxxopts::value< int >()->default_value( "256" ) ) // Height;
        ( "o,output", "Output file", cxxopts::value< std::string >()->default_value( "out.ppm" ) ); // Output file.

    auto        args        = options.parse( i_argc, i_argv );
    int         imageWidth  = args[ "width" ].as< int >();
    int         imageHeight = args[ "height" ].as< int >();
    std::string filePath    = args[ "output" ].as< std::string >();

    // Allocate the image to write into.
    raytrace::RGBImageBuffer image( imageWidth, imageHeight );
    gm::Bounds2i             imageExtent = image.Extent();

    //
    // Camera & viewport plane.
    //

    float     aspectRatio    = ( float ) imageWidth / imageHeight; // The ratio of the width to the height of the image.
    float     viewportHeight = 2.0f;                               // The fixed height of the virtual viewport.
    float     viewportWidth  = aspectRatio * viewportHeight;       // The width of the virtual viewport.
    float     focalLength    = 1.0f;   //  The distance between the camera origin and the viewport plane.
    gm::Vec3f cameraOrigin( 0, 0, 0 ); // The origin of the camera.
    gm::Vec3f horizontal = gm::Vec3f( viewportWidth, 0, 0 );  // The 3D vector representation of the viewport width.
    gm::Vec3f vertical   = gm::Vec3f( 0, viewportHeight, 0 ); // The 3D vector representation of the viewport height.

    // The 3D coordinate of the bottom left corner of the viewport plane.
    gm::Vec3f viewportBottomLeft = cameraOrigin                      // From the camera origin...
                                   - ( horizontal * 0.5f )           // Horizontal translate of half the viewport plane.
                                   - ( vertical * 0.5f )             // Vertical translate of half the viewport plane.
                                   - gm::Vec3f( 0, 0, focalLength ); // Translate forwards focal length units.

    //
    // Ray direction computation.
    //

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
        rayDirection = viewportBottomLeft   // Starting from the viewport bottom left...
                       + ( u * horizontal ) // Horizontal offset.
                       + ( v * vertical )   // Vertical offset.
                       - cameraOrigin;      // Get difference vector from camera origin.

        // Normalize the direction of the ray.
        rayDirection = gm::Normalize( rayDirection );
    }

    //
    // Convert rays into colors.
    //

    for ( gm::Vec2i pixelCoord : gm::Vec2iRange( imageExtent.Min(), imageExtent.Max() ) )
    {
        const gm::Vec3f& rayDirection           = rayDirections[ pixelCoord.X() + pixelCoord.Y() * imageWidth ];
        image( pixelCoord.X(), pixelCoord.Y() ) = ComputeRayColor( cameraOrigin, rayDirection );
    }

    // Write to disk.
    if ( !raytrace::WritePPMImage( image, filePath ) )
    {
        return -1;
    }

    return 0;
}
