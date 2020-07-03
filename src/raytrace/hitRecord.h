#pragma once

/// \file raytrace/hitRecord.h
///
/// Record of a ray hitting a \ref SceneObject.

#include <raytrace/raytrace.h>

#include <gm/types/vec3f.h>

RAYTRACE_NS_OPEN

/// \struct HitRecord
///
/// HitRecord stores a record of a ray hitting a scene object, so that it may be used to influence
/// the behavior of the next hit (of the same ray, with another object!).
struct HitRecord
{
    /// The position of the contact point.
    gm::Vec3f m_position;

    /// The outward facing normal of the surface, at the point of contact.
    gm::Vec3f m_normal;

    /// The magnitude of the ray at the point of contact.
    float m_magnitude;
};

RAYTRACE_NS_CLOSE
