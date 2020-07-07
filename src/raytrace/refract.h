#pragma once

/// \file raytrace/refact.h
///
/// Implementation for refracting a ray through a dieletric surface.

#include <raytrace/raytrace.h>

#include <gm/functions/dotProduct.h>
#include <gm/functions/lengthSquared.h>
#include <gm/types/vec3f.h>

#include <iostream>

RAYTRACE_NS_OPEN

/// Refract an incident ray direction \p i_rayDirection, through a geometric surface.
///
/// The implementation is based on Snell's law.
///
/// \param i_rayDirection The incident ray direction.
/// \param i_normal The normal of the geometric surface.  This vector is assumed to be of unit length.
/// \param i_incidentIndex The refractive index of the medium hosting the incident ray.
/// \param i_refractedIndex The refractive index of the medium hosting the refracted ray.
///
/// \return The newly refracted ray direction.
inline gm::Vec3f
Refract( const gm::Vec3f& i_rayDirection, const gm::Vec3f& i_normal, float i_incidentIndex, float i_refractedIndex )
{
    float     cosTheta             = gm::DotProduct( -i_rayDirection, i_normal );
    gm::Vec3f refractedDirParallel = ( i_incidentIndex / i_refractedIndex ) * ( i_rayDirection + cosTheta * i_normal );
    gm::Vec3f refractedDirPerpindicular = -sqrt( 1.0f - gm::LengthSquared( refractedDirParallel ) ) * i_normal;

    std::cout << "========== Refract ============= " << std::endl;
    std::cout << "Ray direction: " << i_rayDirection << std::endl;
    std::cout << "Normal: " << i_normal << std::endl;
    std::cout << "Incident index: " << i_incidentIndex << std::endl;
    std::cout << "Refracted index: " << i_refractedIndex << std::endl;
    std::cout << "Cos theta: " << cosTheta << std::endl;
    std::cout << "Parallel component: " << refractedDirParallel << std::endl;
    std::cout << "Perpindicular component: " << refractedDirPerpindicular << std::endl;
    std::cout << "================================ " << std::endl;

    return refractedDirParallel + refractedDirPerpindicular;
}

RAYTRACE_NS_CLOSE
