//
// This file is auto-generated, please do not modify directly!
//

#pragma once

/// \file vec4i.h
/// \ingroup GM_group_vectorTypes

#include <cmath>
#include <cstring>
#include <sstream>

#include <gm/base/assert.h>
#include <gm/gm.h>

GM_NS_OPEN

/// \class Vec4i
/// \ingroup GM_group_vectorTypes
///
/// Class definition of a vector with 4 elements.
class Vec4i final
{
public:
    /// Type of \ref Vec4i's elements.
    using ElementType = int;

    /// Default constructor.
    Vec4i() = default;

    /// Destructor.
    ~Vec4i() = default;

    /// Element-wise constructor.
    explicit Vec4i( const int& i_element0, const int& i_element1, const int& i_element2, const int& i_element3 )
        : m_elements{i_element0, i_element1, i_element2, i_element3}
    {
        GM_ASSERT( !HasNans() );
    }

#ifdef GM_DEBUG
    /// Copy constructor.
    Vec4i( const Vec4i& i_vector )
    {
        std::memcpy( ( void* ) m_elements, ( const void* ) i_vector.m_elements, sizeof( int ) * 4 );
        GM_ASSERT( !HasNans() );
    }

    /// Copy assignment operator.
    Vec4i& operator=( const Vec4i& i_vector )
    {
        std::memcpy( ( void* ) m_elements, ( const void* ) i_vector.m_elements, sizeof( int ) * 4 );
        GM_ASSERT( !HasNans() );
        return *this;
    }
#endif

    /// Element-wise index read accessor.
    GM_HOST_DEVICE inline int& operator[]( size_t i_index )
    {
        GM_ASSERT( !HasNans() );
        GM_ASSERT( i_index < 4 );
        return m_elements[ i_index ];
    }

    /// Element-wise index write accessor.
    GM_HOST_DEVICE inline const int& operator[]( size_t i_index ) const
    {
        GM_ASSERT( !HasNans() );
        GM_ASSERT( i_index < 4 );
        return m_elements[ i_index ];
    }

    //
    // Arithmetic Operator Overloading.
    //

    /// Vector addition.
    GM_HOST_DEVICE inline Vec4i operator+( const Vec4i& i_vector ) const
    {
        GM_ASSERT( !HasNans() );
        return Vec4i( m_elements[ 0 ] + i_vector.m_elements[ 0 ],
                      m_elements[ 1 ] + i_vector.m_elements[ 1 ],
                      m_elements[ 2 ] + i_vector.m_elements[ 2 ],
                      m_elements[ 3 ] + i_vector.m_elements[ 3 ] );
    }

    /// Vector addition assignment.
    GM_HOST_DEVICE inline Vec4i& operator+=( const Vec4i& i_vector )
    {
        GM_ASSERT( !HasNans() );
        m_elements[ 0 ] += i_vector.m_elements[ 0 ];
        m_elements[ 1 ] += i_vector.m_elements[ 1 ];
        m_elements[ 2 ] += i_vector.m_elements[ 2 ];
        m_elements[ 3 ] += i_vector.m_elements[ 3 ];
        return *this;
    }

    /// Vector subtraction.
    GM_HOST_DEVICE inline Vec4i operator-( const Vec4i& i_vector ) const
    {
        GM_ASSERT( !HasNans() );
        return Vec4i( m_elements[ 0 ] - i_vector.m_elements[ 0 ],
                      m_elements[ 1 ] - i_vector.m_elements[ 1 ],
                      m_elements[ 2 ] - i_vector.m_elements[ 2 ],
                      m_elements[ 3 ] - i_vector.m_elements[ 3 ] );
    }

    /// Vector subtraction assignment.
    GM_HOST_DEVICE inline Vec4i& operator-=( const Vec4i& i_vector )
    {
        GM_ASSERT( !HasNans() );
        m_elements[ 0 ] -= i_vector.m_elements[ 0 ];
        m_elements[ 1 ] -= i_vector.m_elements[ 1 ];
        m_elements[ 2 ] -= i_vector.m_elements[ 2 ];
        m_elements[ 3 ] -= i_vector.m_elements[ 3 ];
        return *this;
    }

    /// Scalar multiplication assignment.
    GM_HOST_DEVICE inline Vec4i& operator*=( const int& i_scalar )
    {
        GM_ASSERT( !HasNans() );
        m_elements[ 0 ] *= i_scalar;
        m_elements[ 1 ] *= i_scalar;
        m_elements[ 2 ] *= i_scalar;
        m_elements[ 3 ] *= i_scalar;
        return *this;
    }

    /// Scalar division.
    GM_HOST_DEVICE inline Vec4i operator/( const int& i_scalar ) const
    {
        GM_ASSERT( !HasNans() );
        GM_ASSERT( i_scalar != 0 );
        return Vec4i( m_elements[ 0 ] / i_scalar,
                      m_elements[ 1 ] / i_scalar,
                      m_elements[ 2 ] / i_scalar,
                      m_elements[ 3 ] / i_scalar );
    }

    /// Scalar division assignment.
    GM_HOST_DEVICE inline Vec4i& operator/=( const int& i_scalar )
    {
        GM_ASSERT( !HasNans() );
        GM_ASSERT( i_scalar != 0 );
        m_elements[ 0 ] /= i_scalar;
        m_elements[ 1 ] /= i_scalar;
        m_elements[ 2 ] /= i_scalar;
        m_elements[ 3 ] /= i_scalar;
        return *this;
    }

    /// Unary negation.
    GM_HOST_DEVICE inline Vec4i operator-() const
    {
        GM_ASSERT( !HasNans() );
        return Vec4i( -m_elements[ 0 ], -m_elements[ 1 ], -m_elements[ 2 ], -m_elements[ 3 ] );
    }

    /// X component accessor for the first element.
    GM_HOST_DEVICE inline int X() const
    {
        GM_ASSERT( !HasNans() );
        return m_elements[ 0 ];
    }

    /// Y component accessor for the second element.
    GM_HOST_DEVICE inline int Y() const
    {
        GM_ASSERT( !HasNans() );
        return m_elements[ 1 ];
    }

    /// Z component accessor for the third element.
    GM_HOST_DEVICE inline int Z() const
    {
        GM_ASSERT( !HasNans() );
        return m_elements[ 2 ];
    }

    /// W component accessor for the fourth element.
    GM_HOST_DEVICE inline int W() const
    {
        GM_ASSERT( !HasNans() );
        return m_elements[ 3 ];
    }

    /// Comparison operator
    GM_HOST_DEVICE inline bool operator==( const Vec4i& i_vector ) const
    {
        return m_elements[ 0 ] == i_vector.m_elements[ 0 ] && m_elements[ 1 ] == i_vector.m_elements[ 1 ] &&
               m_elements[ 2 ] == i_vector.m_elements[ 2 ] && m_elements[ 3 ] == i_vector.m_elements[ 3 ];
    }

    /// Not equal operator
    GM_HOST_DEVICE inline bool operator!=( const Vec4i& i_vector ) const
    {
        return !( ( *this ) == i_vector );
    }

    /// Get the number of elements in this vector.
    GM_HOST_DEVICE inline static size_t GetElementSize()
    {
        return 4;
    }

    /// Are any of the element values NaNs?
    GM_HOST_DEVICE inline bool HasNans() const
    {
        return std::isnan( m_elements[ 0 ] ) || std::isnan( m_elements[ 1 ] ) || std::isnan( m_elements[ 2 ] ) ||
               std::isnan( m_elements[ 3 ] );
    }

    /// Get the string representation.  For debugging purposes.
    ///
    /// \param i_classPrefix optional string to prefix class tokens.
    ///
    /// \return descriptive string representing this type instance.
    inline std::string GetString( const std::string& i_classPrefix = std::string() ) const
    {
        std::stringstream ss;
        ss << i_classPrefix << "Vec4i( ";
        ss << m_elements[ 0 ];
        ss << ", ";
        ss << m_elements[ 1 ];
        ss << ", ";
        ss << m_elements[ 2 ];
        ss << ", ";
        ss << m_elements[ 3 ];
        ss << " )";
        return ss.str();
    }

private:
    int m_elements[ 4 ] = {0, 0, 0, 0};
};

/// Vector-scalar multiplication.
GM_HOST_DEVICE inline Vec4i operator*( const Vec4i& i_vector, const int& i_scalar )
{
    GM_ASSERT( !i_vector.HasNans() );
    return Vec4i( i_vector[ 0 ] * i_scalar,
                  i_vector[ 1 ] * i_scalar,
                  i_vector[ 2 ] * i_scalar,
                  i_vector[ 3 ] * i_scalar );
}

/// Scalar-vector multiplication.
GM_HOST_DEVICE inline Vec4i operator*( const int& i_scalar, const Vec4i& i_vector )
{
    GM_ASSERT( !i_vector.HasNans() );
    return Vec4i( i_vector[ 0 ] * i_scalar,
                  i_vector[ 1 ] * i_scalar,
                  i_vector[ 2 ] * i_scalar,
                  i_vector[ 3 ] * i_scalar );
}

/// Operator overload for << to enable writing the string representation of \p i_vector into an output
/// stream \p o_outputStream.
///
/// \param o_outputStream the output stream to write into.
/// \param i_vector the source vector value type.
///
/// \return the output stream.
inline std::ostream& operator<<( std::ostream& o_outputStream, const Vec4i& i_vector )
{
    o_outputStream << i_vector.GetString();
    return o_outputStream;
}

GM_NS_CLOSE