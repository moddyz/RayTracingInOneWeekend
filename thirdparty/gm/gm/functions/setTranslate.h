//
// This file is auto-generated, please do not modify directly!
//

#pragma once

/// \file functions/setTranslate.h
///
/// Set a translation on a transformation matrix.

#include <gm/gm.h>

#include <gm/types/mat3f.h>
#include <gm/types/mat4f.h>
#include <gm/types/vec2f.h>
#include <gm/types/vec3f.h>

GM_NS_OPEN

/// Set the translation \p i_vector onto the transformation matrix \p o_matrix.
GM_HOST_DEVICE inline void SetTranslate( const Vec2f& i_vector, Mat3f& o_matrix )
{
    o_matrix( 0, 2 ) = i_vector[ 0 ];
    o_matrix( 1, 2 ) = i_vector[ 1 ];
}

/// Set the translation \p i_vector onto the transformation matrix \p o_matrix.
GM_HOST_DEVICE inline void SetTranslate( const Vec3f& i_vector, Mat4f& o_matrix )
{
    o_matrix( 0, 3 ) = i_vector[ 0 ];
    o_matrix( 1, 3 ) = i_vector[ 1 ];
    o_matrix( 2, 3 ) = i_vector[ 2 ];
}

GM_NS_CLOSE