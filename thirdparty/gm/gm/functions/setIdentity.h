//
// This file is auto-generated, please do not modify directly!
//

#pragma once

/// \file functions/setIdentity.h
///
/// Set the identity matrix, defined as the neutral element with respect to matrix multiplication.

#include <gm/gm.h>

#include <gm/types/mat3f.h>
#include <gm/types/mat4f.h>

GM_NS_OPEN

/// Set the identity matrix onto \p o_matrix.
GM_HOST_DEVICE inline void SetIdentity( Mat3f& o_matrix )
{
    o_matrix = Mat3f( 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f );
}

/// Set the identity matrix onto \p o_matrix.
GM_HOST_DEVICE inline void SetIdentity( Mat4f& o_matrix )
{
    o_matrix = Mat4f( 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f );
}

GM_NS_CLOSE