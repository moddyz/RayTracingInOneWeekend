#include <raytrace/imageBuffer.h>
#include <raytrace/ppmImageWriter.h>

#include <gm/types/vec3f.h>

#include <cxxopts.hpp>

int main( int i_argc, char** i_argv )
{
    // Parse command line arguments.
    cxxopts::Options options( "ppmExample", "Example program of writing out an PPM image onto disk." );
    options.add_options()                                                                       // Command line options.
        ( "w,width", "Width of the image.", cxxopts::value< int >()->default_value( "384" ) )   // Width
        ( "h,height", "Height of the image.", cxxopts::value< int >()->default_value( "256" ) ) // Height;
        ( "o,output", "Output file", cxxopts::value< std::string >()->default_value( "out.ppm" ) ); // Output file.

    auto        args     = options.parse( i_argc, i_argv );
    int         width    = args[ "width" ].as< int >();
    int         height   = args[ "height" ].as< int >();
    std::string filePath = args[ "output" ].as< std::string >();

    // Author a image, with a 2 dimensional gradient transition.
    raytrace::RGBImageBuffer image( width, height );
    for ( const gm::Vec2i& pixelCoord : image.Extent() )
    {
        image( pixelCoord.X(), pixelCoord.Y() ) = gm::Vec3f( float( pixelCoord.X() ) / ( image.Width() - 1 ),
                                                             float( pixelCoord.Y() ) / ( image.Height() - 1 ),
                                                             0.25f );
    }

    // Write onto disk.
    if ( !raytrace::WritePPMImage( image, filePath ) )
    {
        return -1;
    }

    return 0;
}
