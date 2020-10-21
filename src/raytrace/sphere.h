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
    /// \param i_material Optional material, associated with this sphere.
    inline explicit Sphere( const gm::Vec3f& i_origin, float i_radius, MaterialSharedPtr i_material = nullptr )
        : m_origin( i_origin )
        , m_radius( i_radius )
        , m_material( i_material )
    {
    }

    virtual inline bool
    Hit( const Ray& i_ray, const gm::FloatRange& i_magnitudeRange, HitRecord& o_record ) const override
    {
        gm::FloatRange intersections;
        if ( RaySphereIntersection( m_origin, m_radius, i_ray.Origin(), i_ray.Direction(), intersections ) > 0 )
        {
            if ( intersections.Min() < i_magnitudeRange.Max() && intersections.Min() > i_magnitudeRange.Min() )
            {
                _Record( i_ray, intersections.Min(), o_record );
                return true;
            }
            else if ( intersections.Max() < i_magnitudeRange.Max() && intersections.Max() > i_magnitudeRange.Min() )
            {
                _Record( i_ray, intersections.Max(), o_record );
                return true;
            }
        }

        // Sorry, missed!
        return false;
    }

private:
    /// Helper method to record a ray hitting the sphere.
    ///
    /// \param i_ray The ray.
    /// \param i_rayMagnitude the magnitude of the ray intersection.
    /// \param o_record the record of a ray hit.
    inline void _Record( const Ray& i_ray, float i_rayMagnitude, HitRecord& o_record ) const
    {
        o_record.m_position  = RayPosition( i_ray.Origin(), i_ray.Direction(), i_rayMagnitude );
        o_record.m_normal    = ( o_record.m_position - m_origin ) / m_radius;
        o_record.m_magnitude = i_rayMagnitude;
        o_record.m_material  = m_material;
    }

    // The origin of the sphere.
    gm::Vec3f m_origin;

    // The radius of the sphere.
    float m_radius = 0.0f;

    // Assigned material.
    MaterialSharedPtr m_material;
};

RAYTRACE_NS_CLOSE
