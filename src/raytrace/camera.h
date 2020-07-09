#pragma once

/// \file raytrace/camera.h
///
/// Camera representation.

#include <raytrace/raytrace.h>

#include <gm/functions/radians.h>
#include <gm/types/vec3f.h>

RAYTRACE_NS_OPEN

/// \class Camera
///
/// A simple camera model for raytracing applications.
class Camera
{
public:
    /// Construct a camera with an input \p i_aspectRatio and \p i_verticalFov.
    ///
    /// \param i_aspectRatio Ratio of the width against the height of the rendered image.
    /// \param i_verticalFov The vertical field of view, in degrees.  This is the angle formed
    /// from the camera origin towards the viewport height.
    inline explicit Camera( float i_aspectRatio, float i_verticalFov = 90.0f )
        : m_aspectRatio( i_aspectRatio )
    {
        // Compute the viewport height from the vertical field of view.
        float verticalFovRadians = gm::Radians( i_verticalFov );

        // This is the important trig ratio which will allow us to compute the viewport height
        // from the focal length.
        float halfViewportHeightOverFocalLength = tan( verticalFovRadians / 2 );
        m_viewportHeight = 2.0f * halfViewportHeightOverFocalLength * m_focalLength;

        // Compute the width of the virtual viewport.
        m_viewportWidth = m_aspectRatio * m_viewportHeight;
    }

    /// Get the 3D vector matching the virtual viewport width.
    ///
    /// \return Vertical vector of the viewport width.
    inline gm::Vec3f ViewportHorizontal() const
    {
        return gm::Vec3f( m_viewportWidth, 0, 0 );
    }

    /// Get the 3D vector matching the virtual viewport height.
    ///
    /// \return Vertical vector of the viewport height.
    inline gm::Vec3f ViewportVertical() const
    {
        return gm::Vec3f( 0, m_viewportHeight, 0 );
    }

    /// Get the 3D coordinate of the bottom left corner of the viewport plane.
    ///
    /// \return The bottom left coordinate of the viewport plane.
    inline gm::Vec3f ViewportBottomLeft() const
    {
        return m_cameraOrigin                      // From the camera origin...
               - ( ViewportHorizontal() * 0.5f )   // Horizontal translate of half the viewport plane.
               - ( ViewportVertical() * 0.5f )     // Vertical translate of half the viewport plane.
               - gm::Vec3f( 0, 0, m_focalLength ); // Translate forwards focal length units.
    }

    /// Get the \em origin, or \em eye of the camera.
    ///
    /// The origin is where rays originate.
    ///
    /// \return the origin of the camera.
    inline gm::Vec3f Origin() const
    {
        return m_cameraOrigin;
    }

private:
    // The ratio of the width to the height of the image.
    float m_aspectRatio = 0.0f;

    // The distance between the camera origin and the viewport plane.
    float m_focalLength = 1.0f;

    // The fixed height of the virtual viewport.
    float m_viewportHeight = 2.0f;

    // Variable width of the virtual viewport.
    float m_viewportWidth = 0.0f;

    // The origin of the camera.
    gm::Vec3f m_cameraOrigin;
};

RAYTRACE_NS_CLOSE
