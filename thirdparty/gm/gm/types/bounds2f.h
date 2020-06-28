//
// This file is auto-generated, please do not modify directly!
//

#pragma once

/// \file bounds2f.h
/// \ingroup GM_group_compositeTypes

#include <limits>
#include <sstream>

#include <gm/gm.h>
#include <gm/types/vec2f.h>

GM_NS_OPEN

/// \class Bounds2f
/// \ingroup GM_group_compositeTypes
///
/// Class definition of a composite type with named elements:
/// - min (\ref Vec2f)
/// - max (\ref Vec2f)
class Bounds2f final
{
public:
    /// Default constructor.
    GM_HOST_DEVICE constexpr inline Bounds2f() = default;

    /// Element-wise constructor.
    GM_HOST_DEVICE explicit constexpr inline Bounds2f( const Vec2f& i_min, const Vec2f& i_max )
        : m_min( i_min )
        , m_max( i_max )
    {
    }

    /// Const accessor for "min".
    GM_HOST_DEVICE inline const Vec2f& Min() const
    {
        return m_min;
    }

    /// Mutable accessor for "min".
    GM_HOST_DEVICE inline Vec2f& Min()
    {
        return m_min;
    }

    /// Const accessor for "max".
    GM_HOST_DEVICE inline const Vec2f& Max() const
    {
        return m_max;
    }

    /// Mutable accessor for "max".
    GM_HOST_DEVICE inline Vec2f& Max()
    {
        return m_max;
    }

    /// Get the string representation.  For debugging purposes.
    ///
    /// \param i_classPrefix optional string to prefix class tokens.
    ///
    /// \return descriptive string representing this type instance.
    inline std::string GetString( const std::string& i_classPrefix = std::string() ) const
    {
        std::stringstream ss;
        ss << i_classPrefix << "Bounds2f( ";
        ss << m_min.GetString( i_classPrefix );
        ss << ", ";
        ss << m_max.GetString( i_classPrefix );
        ss << " )";
        return ss.str();
    }

private:
    /// Element members.
    Vec2f m_min = Vec2f( std::numeric_limits< float >::max(), std::numeric_limits< float >::max() );
    Vec2f m_max = Vec2f( std::numeric_limits< float >::min(), std::numeric_limits< float >::min() );
};

/// Operator overload for << to enable writing the string representation of \p i_composite into an output
/// stream \p o_outputStream.
///
/// \param o_outputStream the output stream to write into.
/// \param i_composite the source composite value type.
///
/// \return the output stream.
inline std::ostream& operator<<( std::ostream& o_outputStream, const Bounds2f& i_composite )
{
    o_outputStream << i_composite.GetString();
    return o_outputStream;
}

GM_NS_CLOSE