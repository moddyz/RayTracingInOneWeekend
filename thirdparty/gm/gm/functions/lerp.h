//
// This file is auto-generated, please do not modify directly!
//

#pragma once

/// \file functions/lerp.h
///
/// Linear interpolation.
///
/// Linearly interpolate between two values with a supplied weight.

#include <gm/gm.h>

#include <gm/types/mat3f.h>
#include <gm/types/mat4f.h>
#include <gm/types/vec2f.h>
#include <gm/types/vec3f.h>
#include <gm/types/vec4f.h>

GM_NS_OPEN

/// Linearly interpolate between \p i_valueA and \p i_valueB, with weight \p i_weight.
///
/// \param i_valueA the source value to interpolate from.
/// \param i_valueB the target value to interpolate to.
/// \param i_weight Describes the percentage of \p i_valueB in the final, interpolated value.
///
/// \pre \p i_weight must be in the range of [0,1].
///
/// \return the interpolated value.
GM_HOST_DEVICE inline float Lerp( const float& i_valueA, const float& i_valueB, const float& i_weight )
{
    GM_ASSERT_MSG( i_weight >= 0.0f && i_weight <= 1.0f, "Expected i_weight between [0,1], got %f\n", i_weight );
    return ( ( 1.0f - i_weight ) * i_valueA ) + ( i_weight * i_valueB );
}

/// Linearly interpolate between \p i_valueA and \p i_valueB, with weight \p i_weight.
///
/// \param i_valueA the source value to interpolate from.
/// \param i_valueB the target value to interpolate to.
/// \param i_weight Describes the percentage of \p i_valueB in the final, interpolated value.
///
/// \pre \p i_weight must be in the range of [0,1].
///
/// \return the interpolated value.
GM_HOST_DEVICE inline Mat3f Lerp( const Mat3f& i_valueA, const Mat3f& i_valueB, const float& i_weight )
{
    GM_ASSERT_MSG( i_weight >= 0.0f && i_weight <= 1.0f, "Expected i_weight between [0,1], got %f\n", i_weight );
    return ( ( 1.0f - i_weight ) * i_valueA ) + ( i_weight * i_valueB );
}

/// Linearly interpolate between \p i_valueA and \p i_valueB, with weight \p i_weight.
///
/// \param i_valueA the source value to interpolate from.
/// \param i_valueB the target value to interpolate to.
/// \param i_weight Describes the percentage of \p i_valueB in the final, interpolated value.
///
/// \pre \p i_weight must be in the range of [0,1].
///
/// \return the interpolated value.
GM_HOST_DEVICE inline Mat4f Lerp( const Mat4f& i_valueA, const Mat4f& i_valueB, const float& i_weight )
{
    GM_ASSERT_MSG( i_weight >= 0.0f && i_weight <= 1.0f, "Expected i_weight between [0,1], got %f\n", i_weight );
    return ( ( 1.0f - i_weight ) * i_valueA ) + ( i_weight * i_valueB );
}

/// Linearly interpolate between \p i_valueA and \p i_valueB, with weight \p i_weight.
///
/// \param i_valueA the source value to interpolate from.
/// \param i_valueB the target value to interpolate to.
/// \param i_weight Describes the percentage of \p i_valueB in the final, interpolated value.
///
/// \pre \p i_weight must be in the range of [0,1].
///
/// \return the interpolated value.
GM_HOST_DEVICE inline Vec2f Lerp( const Vec2f& i_valueA, const Vec2f& i_valueB, const float& i_weight )
{
    GM_ASSERT_MSG( i_weight >= 0.0f && i_weight <= 1.0f, "Expected i_weight between [0,1], got %f\n", i_weight );
    return ( ( 1.0f - i_weight ) * i_valueA ) + ( i_weight * i_valueB );
}

/// Linearly interpolate between \p i_valueA and \p i_valueB, with weight \p i_weight.
///
/// \param i_valueA the source value to interpolate from.
/// \param i_valueB the target value to interpolate to.
/// \param i_weight Describes the percentage of \p i_valueB in the final, interpolated value.
///
/// \pre \p i_weight must be in the range of [0,1].
///
/// \return the interpolated value.
GM_HOST_DEVICE inline Vec3f Lerp( const Vec3f& i_valueA, const Vec3f& i_valueB, const float& i_weight )
{
    GM_ASSERT_MSG( i_weight >= 0.0f && i_weight <= 1.0f, "Expected i_weight between [0,1], got %f\n", i_weight );
    return ( ( 1.0f - i_weight ) * i_valueA ) + ( i_weight * i_valueB );
}

/// Linearly interpolate between \p i_valueA and \p i_valueB, with weight \p i_weight.
///
/// \param i_valueA the source value to interpolate from.
/// \param i_valueB the target value to interpolate to.
/// \param i_weight Describes the percentage of \p i_valueB in the final, interpolated value.
///
/// \pre \p i_weight must be in the range of [0,1].
///
/// \return the interpolated value.
GM_HOST_DEVICE inline Vec4f Lerp( const Vec4f& i_valueA, const Vec4f& i_valueB, const float& i_weight )
{
    GM_ASSERT_MSG( i_weight >= 0.0f && i_weight <= 1.0f, "Expected i_weight between [0,1], got %f\n", i_weight );
    return ( ( 1.0f - i_weight ) * i_valueA ) + ( i_weight * i_valueB );
}

GM_NS_CLOSE