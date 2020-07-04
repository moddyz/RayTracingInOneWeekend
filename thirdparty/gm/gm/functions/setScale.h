//
// This file is auto-generated, please do not modify directly!
//

#pragma once

/// \file functions/setScale.h
/// \ingroup gm_functions_linearAlgebra
///
/// Set scale on a transformation matrix.

#include <gm/gm.h>

#include <gm/types/mat3f.h>
#include <gm/types/mat4f.h>
#include <gm/types/vec2f.h>
#include <gm/types/vec3f.h>

GM_NS_OPEN

/// Set the scale \p i_vector onto the transformation matrix \p o_matrix.
/// \ingroup gm_functions_linearAlgebra
GM_HOST_DEVICE inline void SetScale( const Vec2f& i_vector, Mat3f& o_matrix )
{
    o_matrix( 0, 0 ) = i_vector[ 0 ];
    o_matrix( 1, 1 ) = i_vector[ 1 ];
}

/// Set the scale \p i_vector onto the transformation matrix \p o_matrix.
/// \ingroup gm_functions_linearAlgebra
GM_HOST_DEVICE inline void SetScale( const Vec3f& i_vector, Mat4f& o_matrix )
{
    o_matrix( 0, 0 ) = i_vector[ 0 ];
    o_matrix( 1, 1 ) = i_vector[ 1 ];
    o_matrix( 2, 2 ) = i_vector[ 2 ];
}

GM_NS_CLOSE