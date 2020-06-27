//
// This file is auto-generated, please do not modify directly!
//

#pragma once

/// \file functions/solveQuadraticRoots.h
///
/// Solve for the roots of a quadratic equation of the form \f$ax^2+bx+c=0\f$
///
/// In other words, find the \em intersections of the parabolic function \f$f(x)=ax^2+bx+c\f$ and the X-axis.
///
/// The quadratic formula is as follows:
///
/// \f$x=\frac{-b\pm\sqrt{b^2-4ac}}{2a}\f$
///
/// Such that \f$x\f$ yields the root(s), if any.

#include <gm/gm.h>

#include <gm/base/assert.h>

GM_NS_OPEN

/// Solve for the roots of a quadratic equation.
///
/// \param i_a The \f$a\f$ co-efficient.
/// \param i_b The \f$b\f$ co-efficient.
/// \param i_c The \f$c\f$ co-efficient.
/// \param o_firstRoot the first root. This value is only defined if the number of roots is \p 1 or \p 2.
/// \param o_secondRoot the second root. This value is only defined if the number of roots is \p 2.
///
/// \return The number of roots for the quadratic equation.
///
/// \retval 0 No roots.
/// \retval 1 A single intersection by the vertex of the parabola.
/// \retval 2 Two symmetrical intersections with respect to the vertex.
GM_HOST_DEVICE inline int
SolveQuadraticRoots( const float& i_a, const float& i_b, const float& i_c, float& o_firstRoot, float& o_secondRoot )
{
    GM_ASSERT( i_a != 0.0f );

    float discriminant = ( i_b * i_b ) - ( 4.0f * i_a * i_c );
    if ( discriminant < 0.0f )
    {
        // No intersections.
        return 0;
    }
    else if ( discriminant > 0.0f )
    {
        // Two roots.
        float reciprocal = 1.0f / ( 2.0f * i_a );
        o_firstRoot      = ( -i_b + sqrt( discriminant ) ) * reciprocal;
        o_secondRoot     = ( -i_b - sqrt( discriminant ) ) * reciprocal;
        // Make the smaller root appear first.
        if ( o_firstRoot > o_secondRoot )
        {
            std::swap( o_firstRoot, o_secondRoot );
        }

        return 2;
    }
    else
    {
        // A single root.
        o_firstRoot = -i_b / ( 2.0f * i_a );
        return 1;
    }
}

GM_NS_CLOSE