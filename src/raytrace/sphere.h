#pragma once

/// \file raytrace/sphere.h
///
/// Representation of a ray-traceable sphere.

#include <raytrace/raytrace.h>
#include <raytrace/sceneObject.h>

#include <gm/functions/normalize.h>
#include <gm/functions/rayPosition.h>
#include <gm/functions/raySphereIntersection.h>

RAYTRACE_NS_OPEN

/// \class Sphere
///
/// Sphere is a 3D geometric surface described by a \em origin and \em radius, such that
/// the distance between all surface points and the origin is its radius.
class Sphere : public SceneObject
{
public:
    /// Construct a Sphere with a origin and radius.
    ///
    /// \param i_origin The origin of the sphere.
    /// \param i_radius The radius of the sphere.
    inline explicit Sphere( const gm::Vec3f& i_origin, float i_radius )
        : m_origin( i_origin )
        , m_radius( i_radius )
    {
    }

    virtual inline bool Hit( const gm::Vec3f& i_rayOrigin,
                             const gm::Vec3f& i_rayDirection,
                             const gm::Vec2f& i_magnitudeRange,
                             HitRecord&       o_record ) const override
    {
        gm::Vec2f intersections;
        if ( gm::RaySphereIntersection( m_origin, m_radius, i_rayOrigin, i_rayDirection, intersections ) == 2 )
        {
            // TODO Float range?
            if ( intersections[ 0 ] < i_magnitudeRange[ 1 ] && intersections[ 0 ] > i_magnitudeRange[ 0 ] )
            {
                _Record( i_rayOrigin, i_rayDirection, intersections[ 0 ], o_record );
                return true;
            }
            else if ( intersections[ 1 ] < i_magnitudeRange[ 1 ] && intersections[ 1 ] > i_magnitudeRange[ 0 ] )
            {
                _Record( i_rayOrigin, i_rayDirection, intersections[ 1 ], o_record );
                return true;
            }
        }

        // Sorry, missed!
        return false;
    }

private:
    /// Helper method to record a ray hitting the sphere.
    ///
    /// \param i_rayOrigin The origin position of the incident ray.
    /// \param i_rayDirection The direction of the incident ray.
    /// \param i_rayMagnitude the magnitude of the ray intersection.
    /// \param o_record the record of a ray hit.
    inline void _Record( const gm::Vec3f& i_rayOrigin,
                         const gm::Vec3f& i_rayDirection,
                         float            i_rayMagnitude,
                         HitRecord&       o_record ) const
    {
        o_record.m_position  = gm::RayPosition( i_rayOrigin, i_rayDirection, i_rayMagnitude );
        o_record.m_normal    = gm::Normalize( o_record.m_position - m_origin );
        o_record.m_magnitude = i_rayMagnitude;
    }

    /// The origin of the sphere.
    gm::Vec3f m_origin;

    /// The radius of the sphere.
    float m_radius = 0.0f;
};

RAYTRACE_NS_CLOSE
