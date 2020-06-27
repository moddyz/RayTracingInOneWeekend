//
// Example program for writing a PPM image onto disk.
//

#include <cxxopts.hpp>

#include <gm/types/vec3f.h>

#include <raytrace/imageBuffer.h>
#include <raytrace/intRange.h>
#include <raytrace/ppmImageWriter.h>

int main( int i_argc, char** i_argv )
{
    // Parse command line arguments.
    cxxopts::Options options( "ppmExample", "Example program of writing out an PPM image." );
    options.add_options()                                                                       // Command line options.
        ( "w,width", "Width of the image.", cxxopts::value< int >()->default_value( "256" ) )   // Width
        ( "h,height", "Height of the image.", cxxopts::value< int >()->default_value( "256" ) ) // Height;
        ( "o,output", "Output file", cxxopts::value< std::string >()->default_value( "out.ppm" ) ); // Output file.

    auto        args     = options.parse( i_argc, i_argv );
    int         width    = args[ "width" ].as< int >();
    int         height   = args[ "height" ].as< int >();
    std::string filePath = args[ "output" ].as< std::string >();

    // Author a gradient image.
    raytrace::RGBImageBuffer image( width, height );
    for ( int xCoord : raytrace::IntRange( 0, image.Height() ) )
    {
        for ( int yCoord : raytrace::IntRange( 0, image.Width() ) )
        {
            image( xCoord, yCoord ) =
                gm::Vec3f( double( xCoord ) / ( image.Width() - 1 ), double( yCoord ) / ( image.Height() - 1 ), 0.25f );
        }
    }

    // Write to disk.
    if ( !raytrace::WritePPMImage( image, filePath ) )
    {
        return -1;
    }

    return 0;
}
