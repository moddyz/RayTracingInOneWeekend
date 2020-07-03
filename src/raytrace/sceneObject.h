#pragma once

/// \file raytrace/sceneObject.h
///
/// Ray-traceable scene object representation.

#include <raytrace/raytrace.h>

#include <gm/types/vec2f.h>
#include <gm/types/vec3f.h>

#include <memory>

RAYTRACE_NS_OPEN

/// \class SceneObject
///
/// SceneObject is the base class for all scene objects which are \em subject to ray tracing.
class SceneObject
{
public:
    /// Check and record if a ray hits the current object.
    ///
    /// \param i_rayOrigin The origin position of the incident ray.
    /// \param i_rayDirection The direction of the incident ray.
    /// \param i_magnitudeRange The range of \em accepted magnitudes to qualify as a ray hit.
    /// \param o_record the record of a ray hit.
    ///
    /// \retval true If the ray hits this object.
    /// \retval false If the ray does not hit this object, or if the hit is outside the range
    /// of \p i_magnitudeRange.
    virtual bool Hit( const gm::Vec3f& i_rayOrigin,
                      const gm::Vec3f& i_rayDirection,
                      const gm::Vec2f& i_magnitudeRange,
                      HitRecord&       o_record ) const = 0;
};

/// \typedef SceneObjectPtr
///
/// Pointer to the scene object.
using SceneObjectPtr = std::unique_ptr< SceneObject >;

RAYTRACE_NS_CLOSE
