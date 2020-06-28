//
// Example raytracing program with:
// - Simple camera model
// - Ray casting into the scene.
// - Color computation based on ray direction.
//

#include <cxxopts.hpp>

#include <gm/types/vec2iRange.h>
#include <gm/types/vec3f.h>

#include <gm/functions/linearInterpolation.h>
#include <gm/functions/normalize.h>

#include <raytrace/imageBuffer.h>
#include <raytrace/intRange.h>
#include <raytrace/ppmImageWriter.h>

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
    gm::Vec3f viewportBottomLeft =
        cameraOrigin - ( horizontal * 0.5f ) - ( vertical * 0.5f ) - gm::Vec3f( 0, 0, focalLength );

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
        const gm::Vec3f& rayDirection = rayDirections[ pixelCoord.X() + pixelCoord.Y() * imageWidth ];

        // Compute the color, by interpolating between two colors with the weight as the function of the ray direction.
        float     weight = 0.5f * rayDirection.Y() + 1.0;
        gm::Vec3f color  = gm::LinearInterpolation( gm::Vec3f( 1.0, 1.0, 1.0 ), gm::Vec3f( 0.5, 0.7, 1.0 ), weight );
        image( pixelCoord.X(), pixelCoord.Y() ) = color;
    }

    // Write to disk.
    if ( !raytrace::WritePPMImage( image, filePath ) )
    {
        return -1;
    }

    return 0;
}
