//
// This file is auto-generated, please do not modify directly!
//

#pragma once

/// \file vec3f.h
/// \ingroup GM_group_vectorTypes

#include <cmath>
#include <cstring>
#include <sstream>

#include <gm/base/almost.h>
#include <gm/base/assert.h>
#include <gm/gm.h>

GM_NS_OPEN

/// \class Vec3f
/// \ingroup GM_group_vectorTypes
///
/// Class definition of a vector with 3 elements.
class Vec3f final
{
public:
    /// Type of \ref Vec3f's elements.
    using ElementType = float;

    /// Default constructor.
    Vec3f() = default;

    /// Destructor.
    ~Vec3f() = default;

    /// Element-wise constructor.
    explicit Vec3f( const float& i_element0, const float& i_element1, const float& i_element2 )
        : m_elements{i_element0, i_element1, i_element2}
    {
        GM_ASSERT( !HasNans() );
    }

#ifdef GM_DEBUG
    /// Copy constructor.
    Vec3f( const Vec3f& i_vector )
    {
        std::memcpy( ( void* ) m_elements, ( const void* ) i_vector.m_elements, sizeof( float ) * 3 );
        GM_ASSERT( !HasNans() );
    }

    /// Copy assignment operator.
    Vec3f& operator=( const Vec3f& i_vector )
    {
        std::memcpy( ( void* ) m_elements, ( const void* ) i_vector.m_elements, sizeof( float ) * 3 );
        GM_ASSERT( !HasNans() );
        return *this;
    }
#endif

    /// Element-wise index read accessor.
    GM_HOST_DEVICE inline float& operator[]( size_t i_index )
    {
        GM_ASSERT( !HasNans() );
        GM_ASSERT( i_index < 3 );
        return m_elements[ i_index ];
    }

    /// Element-wise index write accessor.
    GM_HOST_DEVICE inline const float& operator[]( size_t i_index ) const
    {
        GM_ASSERT( !HasNans() );
        GM_ASSERT( i_index < 3 );
        return m_elements[ i_index ];
    }

    //
    // Arithmetic Operator Overloading.
    //

    /// Vector addition.
    GM_HOST_DEVICE inline Vec3f operator+( const Vec3f& i_vector ) const
    {
        GM_ASSERT( !HasNans() );
        return Vec3f( m_elements[ 0 ] + i_vector.m_elements[ 0 ],
                      m_elements[ 1 ] + i_vector.m_elements[ 1 ],
                      m_elements[ 2 ] + i_vector.m_elements[ 2 ] );
    }

    /// Vector addition assignment.
    GM_HOST_DEVICE inline Vec3f& operator+=( const Vec3f& i_vector )
    {
        GM_ASSERT( !HasNans() );
        m_elements[ 0 ] += i_vector.m_elements[ 0 ];
        m_elements[ 1 ] += i_vector.m_elements[ 1 ];
        m_elements[ 2 ] += i_vector.m_elements[ 2 ];
        return *this;
    }

    /// Vector subtraction.
    GM_HOST_DEVICE inline Vec3f operator-( const Vec3f& i_vector ) const
    {
        GM_ASSERT( !HasNans() );
        return Vec3f( m_elements[ 0 ] - i_vector.m_elements[ 0 ],
                      m_elements[ 1 ] - i_vector.m_elements[ 1 ],
                      m_elements[ 2 ] - i_vector.m_elements[ 2 ] );
    }

    /// Vector subtraction assignment.
    GM_HOST_DEVICE inline Vec3f& operator-=( const Vec3f& i_vector )
    {
        GM_ASSERT( !HasNans() );
        m_elements[ 0 ] -= i_vector.m_elements[ 0 ];
        m_elements[ 1 ] -= i_vector.m_elements[ 1 ];
        m_elements[ 2 ] -= i_vector.m_elements[ 2 ];
        return *this;
    }

    /// Scalar multiplication assignment.
    GM_HOST_DEVICE inline Vec3f& operator*=( const float& i_scalar )
    {
        GM_ASSERT( !HasNans() );
        m_elements[ 0 ] *= i_scalar;
        m_elements[ 1 ] *= i_scalar;
        m_elements[ 2 ] *= i_scalar;
        return *this;
    }

    /// Scalar division.
    GM_HOST_DEVICE inline Vec3f operator/( const float& i_scalar ) const
    {
        GM_ASSERT( !HasNans() );
        GM_ASSERT( i_scalar != 0.0f );
        return Vec3f( m_elements[ 0 ] / i_scalar, m_elements[ 1 ] / i_scalar, m_elements[ 2 ] / i_scalar );
    }

    /// Scalar division assignment.
    GM_HOST_DEVICE inline Vec3f& operator/=( const float& i_scalar )
    {
        GM_ASSERT( !HasNans() );
        GM_ASSERT( i_scalar != 0.0f );
        m_elements[ 0 ] /= i_scalar;
        m_elements[ 1 ] /= i_scalar;
        m_elements[ 2 ] /= i_scalar;
        return *this;
    }

    /// Unary negation.
    GM_HOST_DEVICE inline Vec3f operator-() const
    {
        GM_ASSERT( !HasNans() );
        return Vec3f( -m_elements[ 0 ], -m_elements[ 1 ], -m_elements[ 2 ] );
    }

    /// X component accessor for the first element.
    GM_HOST_DEVICE inline float X() const
    {
        GM_ASSERT( !HasNans() );
        return m_elements[ 0 ];
    }

    /// Y component accessor for the second element.
    GM_HOST_DEVICE inline float Y() const
    {
        GM_ASSERT( !HasNans() );
        return m_elements[ 1 ];
    }

    /// Z component accessor for the third element.
    GM_HOST_DEVICE inline float Z() const
    {
        GM_ASSERT( !HasNans() );
        return m_elements[ 2 ];
    }

    /// Comparison operator
    GM_HOST_DEVICE inline bool operator==( const Vec3f& i_vector ) const
    {
        return AlmostEqual( m_elements[ 0 ], i_vector.m_elements[ 0 ] ) &&
               AlmostEqual( m_elements[ 1 ], i_vector.m_elements[ 1 ] ) &&
               AlmostEqual( m_elements[ 2 ], i_vector.m_elements[ 2 ] );
    }

    /// Not equal operator
    GM_HOST_DEVICE inline bool operator!=( const Vec3f& i_vector ) const
    {
        return !( ( *this ) == i_vector );
    }

    /// Get the number of elements in this vector.
    GM_HOST_DEVICE inline static size_t GetElementSize()
    {
        return 3;
    }

    /// Are any of the element values NaNs?
    GM_HOST_DEVICE inline bool HasNans() const
    {
        return std::isnan( m_elements[ 0 ] ) || std::isnan( m_elements[ 1 ] ) || std::isnan( m_elements[ 2 ] );
    }

    /// Get the string representation.  For debugging purposes.
    ///
    /// \param i_classPrefix optional string to prefix class tokens.
    ///
    /// \return descriptive string representing this type instance.
    inline std::string GetString( const std::string& i_classPrefix = std::string() ) const
    {
        std::stringstream ss;
        ss << i_classPrefix << "Vec3f( ";
        ss << m_elements[ 0 ];
        ss << ", ";
        ss << m_elements[ 1 ];
        ss << ", ";
        ss << m_elements[ 2 ];
        ss << " )";
        return ss.str();
    }

private:
    float m_elements[ 3 ] = {0.0f, 0.0f, 0.0f};
};

/// Vector-scalar multiplication.
GM_HOST_DEVICE inline Vec3f operator*( const Vec3f& i_vector, const float& i_scalar )
{
    GM_ASSERT( !i_vector.HasNans() );
    return Vec3f( i_vector[ 0 ] * i_scalar, i_vector[ 1 ] * i_scalar, i_vector[ 2 ] * i_scalar );
}

/// Scalar-vector multiplication.
GM_HOST_DEVICE inline Vec3f operator*( const float& i_scalar, const Vec3f& i_vector )
{
    GM_ASSERT( !i_vector.HasNans() );
    return Vec3f( i_vector[ 0 ] * i_scalar, i_vector[ 1 ] * i_scalar, i_vector[ 2 ] * i_scalar );
}

/// Operator overload for << to enable writing the string representation of \p i_vector into an output
/// stream \p o_outputStream.
///
/// \param o_outputStream the output stream to write into.
/// \param i_vector the source vector value type.
///
/// \return the output stream.
inline std::ostream& operator<<( std::ostream& o_outputStream, const Vec3f& i_vector )
{
    o_outputStream << i_vector.GetString();
    return o_outputStream;
}

GM_NS_CLOSE