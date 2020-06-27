#pragma once

/// \file quadraticRoots.h
///
/// Solve for the roots of a quadratic equation of the form \f$ax^2+bx+c=0\f$
///
/// In other words, find the \em intersections of the parabolic function and the X-axis.
///
/// The quadratic formula is as follows:
///
/// \f$x=\frac{-b\pm\sqrt{b^2-4ac}}{2a}\f$
///
/// Such that \f$x\f$ yields the root(s), if any.
///

#include <raytrace/raytrace.h>

RAYTRACE_NS_OPEN

/// Solve for the roots of a quadratic equation.
///
/// \param i_a The \f$a\f$ co-efficient.
/// \param i_b The \f$b\f$ co-efficient.
/// \param i_c The \f$c\f$ co-efficient.
/// \param o_firstRoot the first root. This value is only defined if the return value is \p 1 or \p 2.
/// \param o_secondRoot the second root. This value is only defined if the return value is \p 2.
///
/// \return the number of roots.
///
/// \retval 0 No roots.
/// \retval 1 A single intersection by the vertex of the parabola.
/// \retval 2 Two symmetrical intersections with respect to the vertex.
inline int SolveQuadraticRoots( float i_a, float i_b, float i_c, float& o_firstRoot, float& o_secondRoot )
{
    float discriminant = ( i_b * i_b ) - ( 4.0f * i_a * i_c );
    if ( discriminant < 0.0f )
    {
        // No intersections.
        return 0;
    }
    else if ( discriminant > 0.0f )
    {
        // Two roots.
        float reciprocal = 1.0f / 2.0f * i_a;
        o_firstRoot      = ( -i_b + sqrt( discriminant ) ) * reciprocal;
        o_secondRoot     = ( -i_b - sqrt( discriminant ) ) * reciprocal;
        return 2;
    }
    else
    {
        // A single root.
        o_firstRoot = -i_b / ( 2.0f * i_a );
        return 1;
    }
}

RAYTRACE_NS_CLOSE
