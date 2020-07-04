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

#include <raytrace/camera.h>
#include <raytrace/imageBuffer.h>
#include <raytrace/ppmImageWriter.h>

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

    // Compute ray directions.
    std::vector< gm::Vec3f > rayDirections( imageWidth * imageHeight );
    for ( const gm::Vec2i& pixelCoord : image.Extent() )
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
    for ( const gm::Vec2i& pixelCoord : image.Extent() )
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
