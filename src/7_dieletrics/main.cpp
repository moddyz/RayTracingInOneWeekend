/// \page 7_metal Metal
///
/// Example program extending from \ref 6_metal, introducing dieletric materials
/// which may refract light rays.

#include <cxxopts.hpp>

#include <gm/base/constants.h>

#include <gm/types/floatRange.h>
#include <gm/types/ray.h>
#include <gm/types/vec3f.h>

#include <gm/functions/clamp.h>
#include <gm/functions/dotProduct.h>
#include <gm/functions/lengthSquared.h>
#include <gm/functions/linearInterpolation.h>
#include <gm/functions/linearMap.h>
#include <gm/functions/normalize.h>
#include <gm/functions/randomNumber.h>

#include <raytrace/camera.h>
#include <raytrace/dieletric.h>
#include <raytrace/hitRecord.h>
#include <raytrace/imageBuffer.h>
#include <raytrace/lambert.h>
#include <raytrace/metal.h>
#include <raytrace/ppmImageWriter.h>
#include <raytrace/sphere.h>

#include <iostream>

/// \typedef SceneObjectPtrs
///
/// A collection of scene objects.
using SceneObjectPtrs = std::vector< raytrace::SceneObjectPtr >;

/// \var c_normalizedRange
///
/// Normalized float range between 0 and 1.
constexpr gm::FloatRange c_normalizedRange( 0.0f, 1.0f );

/// \var Indentation
///
/// 4 spaces.
static const char* c_indent = "    ";

/// Compute the ray color.
///
/// The ray is tested for intersection against a collection of scene objects.
/// The color is computed based on the surface outward normal of the nearest intersection.
///
/// In the case where there is no intersection, a background color is interpolated from a top-down gradient.
///
/// \param i_ray The ray.
/// \param i_numRayBounces The number of "bounces" a ray has left before termination.
/// \param i_sceneObjectPtrs The collection of scene objects to test for ray intersection.
///
/// \return The computed ray color.
static gm::Vec3f ComputeRayColor( const gm::Ray&         i_ray,
                                  int                    i_numRayBounces,
                                  const SceneObjectPtrs& i_sceneObjectPtrs,
                                  bool                   i_printDebug )
{
    if ( i_printDebug )
    {
        std::cout << c_indent << c_indent << i_ray << std::endl;
        std::cout << c_indent << c_indent << "Num bounces: " << i_numRayBounces << std::endl;
    }

    if ( i_numRayBounces == 0 )
    {
        // No bounces left, terminate ray and do not produce any color (black).
        return gm::Vec3f( 0, 0, 0 );
    }

    // Iterate over all scene objects and test for ray hit(s).
    // We'd like to track the nearest hit and prune out farther objects.
    raytrace::HitRecord record;
    bool                objectHit           = false;
    float               nearestHitMagnitude = std::numeric_limits< float >::max();
    for ( const raytrace::SceneObjectPtr& sceneObjectPtr : i_sceneObjectPtrs )
    {
        gm::FloatRange magnitudeRange( 0.00001f, // Fix for "Shadow acne" by culling hits which are too near.
                                       nearestHitMagnitude );
        if ( sceneObjectPtr->Hit( i_ray, magnitudeRange, record ) )
        {
            objectHit           = true;
            nearestHitMagnitude = record.m_magnitude;
        }
    }

    if ( objectHit )
    {
        if ( i_printDebug )
        {
            std::cout << c_indent << c_indent << "Hit" << std::endl
                      << c_indent << c_indent << c_indent << "position: " << record.m_position << std::endl
                      << c_indent << c_indent << c_indent << "normal: " << record.m_normal << std::endl;
        }

        gm::Ray   scatteredRay;
        gm::Vec3f attenuation;
        if ( record.m_material->Scatter( i_ray, record, attenuation, scatteredRay ) )
        {
            // Material produced a new scattered ray.
            // Continue ray color recursion.
            // To resolve an aggregate color, we take the vector product.
            gm::Vec3f descendentColor =
                ComputeRayColor( scatteredRay, i_numRayBounces - 1, i_sceneObjectPtrs, i_printDebug );

            if ( i_printDebug )
            {
                std::cout << c_indent << c_indent << "Attenuation: " << attenuation << std::endl;
            }

            return gm::Vec3f( attenuation[ 0 ] * descendentColor[ 0 ],
                              attenuation[ 1 ] * descendentColor[ 1 ],
                              attenuation[ 2 ] * descendentColor[ 2 ] );
        }
        else
        {
            if ( i_printDebug )
            {
                std::cout << c_indent << c_indent << "Absorbed!" << std::endl;
            }
            // Material has completely absorbed the ray, thus return no color.
            return gm::Vec3f( 0, 0, 0 );
        }
    }

    if ( i_printDebug )
    {
        std::cout << c_indent << c_indent << "Background colour!" << std::endl;
    }

    // Compute background color, by interpolating between two colors with the weight as the function of the ray
    // direction.
    float weight = 0.5f * i_ray.Direction().Y() + 1.0;
    return gm::LinearInterpolation( gm::Vec3f( 1.0, 1.0, 1.0 ), gm::Vec3f( 0.5, 0.7, 1.0 ), weight );
}

void WritePixel( const gm::Vec2i&          i_pixelCoord,
                 int                       i_samplesPerPixel,
                 int                       i_rayBounceLimit,
                 const raytrace::Camera&   i_camera,
                 const SceneObjectPtrs&    i_sceneObjects,
                 raytrace::RGBImageBuffer& o_image,
                 bool                      i_printDebug = false )
{
    if ( i_printDebug )
    {
        std::cout << "Pixel " << i_pixelCoord << std::endl;
    }

    // Accumulate pixel color over multiple samples.
    gm::Vec3f pixelColor;
    for ( int sampleIndex = 0; sampleIndex < i_samplesPerPixel; ++sampleIndex )
    {
        // Compute normalised viewport coordinates (values between 0 and 1).
        float u = ( float( i_pixelCoord.X() ) + gm::RandomNumber( c_normalizedRange ) ) / o_image.Extent().Max().X();
        float v = ( float( i_pixelCoord.Y() ) + gm::RandomNumber( c_normalizedRange ) ) / o_image.Extent().Max().Y();

        gm::Ray ray( /* origin */ i_camera.Origin(),               // The origin of the ray is the camera origin.
                     /* direction */ i_camera.ViewportBottomLeft() // Starting from the viewport bottom left...
                         + ( u * i_camera.ViewportHorizontal() )   // Horizontal offset.
                         + ( v * i_camera.ViewportVertical() )     // Vertical offset.
                         - i_camera.Origin()                       // Get difference vector from camera origin.
        );

        // Normalize the direction of the ray.
        ray.Direction() = gm::Normalize( ray.Direction() );

        if ( i_printDebug )
        {
            std::cout << c_indent << "Sample: " << sampleIndex << std::endl;
        }

        // Accumulate color.
        gm::Vec3f sampleColor = ComputeRayColor( ray, i_rayBounceLimit, i_sceneObjects, i_printDebug );
        pixelColor += sampleColor;
        if ( i_printDebug )
        {
            std::cout << c_indent << "Sample color: " << sampleColor << std::endl;
        }
    }

    // Divide by number of samples to produce average color.
    pixelColor /= ( float ) i_samplesPerPixel;

    // Correct for gamma 2, by raising to 1/gamma.
    pixelColor[ 0 ] = sqrt( pixelColor[ 0 ] );
    pixelColor[ 1 ] = sqrt( pixelColor[ 1 ] );
    pixelColor[ 2 ] = sqrt( pixelColor[ 2 ] );

    // Clamp the value down to [0,1).
    pixelColor = gm::Clamp( pixelColor, c_normalizedRange );

    // Assign finalized colour.
    o_image( i_pixelCoord.X(), i_pixelCoord.Y() ) = pixelColor;
}

int main( int i_argc, char** i_argv )
{
    // ------------------------------------------------------------------------
    // Parse command line arguments.
    // ------------------------------------------------------------------------

    cxxopts::Options options( "7_dieletrics",
                              "Ray tracing with dieletric material (glass, diamonond, refractive mediums)." );
    options.add_options()                                                                       // Command line options.
        ( "w,width", "Width of the image.", cxxopts::value< int >()->default_value( "384" ) )   // Width
        ( "h,height", "Height of the image.", cxxopts::value< int >()->default_value( "256" ) ) // Height;
        ( "o,output", "Output file", cxxopts::value< std::string >()->default_value( "out.ppm" ) ) // Output file.
        ( "s,samplesPerPixel",
          "Number of samples per-pixel.",
          cxxopts::value< int >()->default_value( "100" ) ) // Number of samples.
        ( "b,rayBounceLimit",
          "Number of bounces possible for a ray until termination.",
          cxxopts::value< int >()->default_value( "50" ) ) // Maximum number of light bounces before termination.
        ( "d,debug", "Turn on debug mode.", cxxopts::value< bool >()->default_value( "false" ) ) // Width
        ( "x,debugXCoord",
          "The x-coordinate of the pixel in the image to print debug information for.",
          cxxopts::value< int >()->default_value( "0" ) ) // Xcoord.
        ( "y,debugYCoord",
          "The y-coordinate of the pixel in the image to print debug information for.",
          cxxopts::value< int >()->default_value( "0" ) ); // Ycoord.

    auto        args            = options.parse( i_argc, i_argv );
    int         imageWidth      = args[ "width" ].as< int >();
    int         imageHeight     = args[ "height" ].as< int >();
    int         samplesPerPixel = args[ "samplesPerPixel" ].as< int >();
    int         rayBounceLimit  = args[ "rayBounceLimit" ].as< int >();
    std::string filePath        = args[ "output" ].as< std::string >();
    bool        debug           = args[ "debug" ].as< bool >();
    int         debugXCoord     = args[ "debugXCoord" ].as< int >();
    int         debugYCoord     = imageHeight - args[ "debugYCoord" ].as< int >();

    // ------------------------------------------------------------------------
    // Allocate image buffer & camera.
    // ------------------------------------------------------------------------

    // Allocate the image to write into.
    raytrace::RGBImageBuffer image( imageWidth, imageHeight );

    // Camera model.
    raytrace::Camera camera( ( float ) imageWidth / imageHeight );

    // ------------------------------------------------------------------------
    // Allocate scene objects.
    // ------------------------------------------------------------------------

    SceneObjectPtrs sceneObjects;

    // Lambert sphere.
    sceneObjects.push_back( std::make_unique< raytrace::Sphere >(
        gm::Vec3f( 0.0f, 0.0f, -1.0f ),
        0.5,
        std::make_shared< raytrace::Lambert >( /* albedo */ gm::Vec3f( 0.7f, 0.3f, 0.3f ) ) ) );

    // Ground plane (also lambert).
    sceneObjects.push_back( std::make_unique< raytrace::Sphere >(
        gm::Vec3f( 0.0f, -100.5, -1.0f ),
        100,
        std::make_shared< raytrace::Lambert >( /* albedo */ gm::Vec3f( 0.8f, 0.8f, 0.0f ) ) ) );

    // Reflective metal spheres, with some fuzziness.
    sceneObjects.push_back( std::make_unique< raytrace::Sphere >(
        gm::Vec3f( 1.0f, 0.0f, -1.0f ),
        0.5,
        std::make_shared< raytrace::Metal >( /* albedo */ gm::Vec3f( 0.8f, 0.6f, 0.2f ), /* fuzziness */ 0.02 ) ) );
    sceneObjects.push_back( std::make_unique< raytrace::Sphere >(
        gm::Vec3f( -1.0f, 0.0f, -1.0f ),
        0.5,
        std::make_shared< raytrace::Dieletric >( /* refractiveIndex = glass */ 1.5 ) ) );

    // ------------------------------------------------------------------------
    // Compute ray colors.
    // ------------------------------------------------------------------------

    for ( const gm::Vec2i& pixelCoord : image.Extent() )
    {
        WritePixel( pixelCoord, samplesPerPixel, rayBounceLimit, camera, sceneObjects, image );
    }

    // ------------------------------------------------------------------------
    // Print debug pixel
    // ------------------------------------------------------------------------

    if ( debug )
    {
        WritePixel( gm::Vec2i( debugXCoord, debugYCoord ),
                    samplesPerPixel,
                    rayBounceLimit,
                    camera,
                    sceneObjects,
                    image,
                    /* printDebug */ true );
    }

    // ------------------------------------------------------------------------
    // Write out image.
    // ------------------------------------------------------------------------

    if ( !raytrace::WritePPMImage( image, filePath ) )
    {
        return -1;
    }

    return 0;
}
