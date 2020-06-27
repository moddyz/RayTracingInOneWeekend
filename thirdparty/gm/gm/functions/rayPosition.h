//
// This file is auto-generated, please do not modify directly!
//

#pragma once

/// \file functions/rayPosition.h
///
/// Ray position computation.
///
/// Compute the position of the ray from an \b origin, offset by a \b direction and \b magnitude.

#include <gm/gm.h>

#include <gm/types/vec2f.h>
#include <gm/types/vec3f.h>

#include <gm/functions/length.h>

GM_NS_OPEN

/// Compute the ray position from \p i_origin project into direction \p i_direction with magnitude \p i_magnitude.
///
/// \param i_origin The origin of the ray.
/// \param i_direction The direction of the ray.
/// \param i_magnitude The magnitude to project the ray.
///
/// \return the projected ray position.
GM_HOST_DEVICE inline Vec2f RayPosition( const Vec2f& i_origin, const Vec2f& i_direction, const float& i_magnitude )
{
    GM_ASSERT_MSG( Length( i_direction ) == 1.0f, "Direction i_direction is not normalised!" );
    return i_origin + ( i_direction * i_magnitude );
}

/// Compute the ray position from \p i_origin project into direction \p i_direction with magnitude \p i_magnitude.
///
/// \param i_origin The origin of the ray.
/// \param i_direction The direction of the ray.
/// \param i_magnitude The magnitude to project the ray.
///
/// \return the projected ray position.
GM_HOST_DEVICE inline Vec3f RayPosition( const Vec3f& i_origin, const Vec3f& i_direction, const float& i_magnitude )
{
    GM_ASSERT_MSG( Length( i_direction ) == 1.0f, "Direction i_direction is not normalised!" );
    return i_origin + ( i_direction * i_magnitude );
}

GM_NS_CLOSE