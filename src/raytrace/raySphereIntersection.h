#pragma once

/// \file raytrace/raySphereIntersection.h
///
/// Ray sphere intersection test.
///
/// The points along the surface of a 3D sphere (centered at origin) can be defined by the following algebraic equation:
///
/// \f$(1)\f$ \f$x^2+y^2+z^2=R^2\f$
///
/// Such that \f$x\f$, \f$y\f$, and \f$z\f$ are the coordinates of the points along the surface and \f$R\f$ is the
/// radius of the sphere.
///
/// \f$(1)\f$ can be further simplified, by replacement of the sum of squares with the <em>dot product</em> of the
/// surface point:
///
/// \f$(2)\f$ \f$P^2+R^2=0\f$
///
/// The points along the surface of a 3D sphere centered at a arbituary coordinate \f$(c_0,c_1,c_2\f$ can then be written as:
///
/// \f$(3)\f$ \f$(x-c_0)^2+(y-c_1)^2+(z-c_2)^2=R^2\f$
///
/// Applying the same simplication from \f$(1)\f$ to \f$(2)\f$ onto \f$(3)\f$ produces:
///
/// \f$(4)\f$ \f$(P-C)^2-R^2\f$
///
/// Any point \f$P\f$ along a ray is defined by the following function:
///
/// \f$(5)\f$ \f$O+tD=P\f$
///
/// such that \f$O\f$ is the ray origin, \f$D\f$ the ray direction, \f$t\f$ is the ray magnitude.
///
/// Substituting \f$(5)\f$ into \f$(4)\f$ gives:
///
/// \f$(4)\f$ \f$(O+tD-C)^2-R^2=0\f$
///
/// Which can be expanded into:
///
/// \f$(5)\f$ \f$D^2t^2+2(O-C)Dt+(O-C)^2-R^2=0\f$
///
/// Fitting the root quadratic form \f$ax^2+bx+c=0\f$ such that \f$x=t\f$, \f$a=D^2\f$, \f$b=2D(O-C)\f$, and
/// \f$c=(O-C)^2-R^2\f$.
///
/// The roots can be solved, forming the magnitudes which will produce the points of intersection.

#include <raytrace/quadraticRoots.h>
#include <raytrace/raytrace.h>

#include <gm/functions/dotProduct.h>
#include <gm/functions/rayPosition.h>
#include <gm/types/vec3f.h>

RAYTRACE_NS_OPEN

/// Compute the intersection(s)
///
/// \param i_sphereOrigin The origin or center of the sphere.
/// \param i_sphereRadius The radius of the sphere.
/// \param i_rayOrigin The origin of the ray.
/// \param i_rayDirection The direction of the ray.
/// \param o_firstIntersection The first ray-sphere intersection point, if available.
/// \param o_firstIntersection The second ray-sphere intersection point, if available.
///
/// \return The number of times the ray intersections the sphere.
/// \retval 0 The ray does not intersect the sphere at all.
/// \retval 1 The ray intersects the surface of the sphere exactly.
/// \retval 2 the ray intersects through the volume of the sphere.
int RaySphereIntersection( const gm::Vec3f& i_sphereOrigin,
                           float            i_sphereRadius,
                           const gm::Vec3f& i_rayOrigin,
                           const gm::Vec3f& i_rayDirection,
                           gm::Vec3f&       o_firstIntersection,
                           gm::Vec3f&       o_secondIntersection )
{
    // Compute quadratic co-efficients
    gm::Vec3f originDiff = i_rayOrigin - i_sphereOrigin;
    float a = gm::DotProduct( i_rayDirection, i_rayDirection );
    float b = 2.0f * gm::DotProduct( i_rayDirection, originDiff );
    float c = gm::DotProduct( originDiff, originDiff ) - i_sphereRadius * i_sphereRadius;

    // Solve for quadratic roots.
    float firstRoot, secondRoot;
    int   numRoots = SolveQuadraticRoots( a, b, c, firstRoot, secondRoot );

    // Check for number of roots (number of intersections).
    // The conditionals are ordered in terms of likeliness to occur.
    if ( numRoots == 0 )
    {
        // No intersections - immediately return.
        return 0;
    }
    else if ( numRoots == 2 )
    {
        // Two intersections.

        // Store the intersection farther from the ray origin in the second root.
        if ( firstRoot > secondRoot )
        {
            std::swap( firstRoot, secondRoot );
        }

        // Root negative check, as to not intersect with objects behind the ray direction.
        if ( firstRoot < 0 )
        {
            std::swap( firstRoot, secondRoot );
            if ( firstRoot < 0 )
            {
                // Both roots are negative, count it as no intersection.
                return 0;
            }
            else
            {
                // First, and only root is positive, compute intersection and return.
                o_firstIntersection = gm::RayPosition( i_rayOrigin, i_rayDirection, firstRoot );
                return 1;
            }
        }
        else
        {
            // Both roots are positive.  Compute them.
            o_firstIntersection  = gm::RayPosition( i_rayOrigin, i_rayDirection, firstRoot );
            o_secondIntersection = gm::RayPosition( i_rayOrigin, i_rayDirection, secondRoot );
            return 2;
        }
    }
    else
    {
        // A single intersection.

        if ( firstRoot < 0 )
        {
            // Do not intersect with spheres opposite of the ray direction.
            return 0;
        }
        else
        {
            // Positive root - compute intersection and return a single intersection.
            o_firstIntersection = gm::RayPosition( i_rayOrigin, i_rayDirection, firstRoot );
            return 1;
        }
    }
}

RAYTRACE_NS_CLOSE

