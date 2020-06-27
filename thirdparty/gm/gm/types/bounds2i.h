//
// This file is auto-generated, please do not modify directly!
//

#pragma once

/// \file bounds2i.h

#include <limits>
#include <sstream>

#include <gm/gm.h>
#include <gm/types/vec2i.h>

GM_NS_OPEN

/// \class Bounds2i
class Bounds2i final
{
public:
    /// Default constructor.
    Bounds2i() = default;

    /// Destructor.
    ~Bounds2i() = default;

    /// Element-wise constructor.
    explicit Bounds2i( const Vec2i& i_min, const Vec2i& i_max )
        : m_min( i_min )
        , m_max( i_max )
    {
    }

    /// Const accessor for "min".
    GM_HOST_DEVICE inline const Vec2i& Min() const
    {
        return m_min;
    }

    /// Mutable accessor for "min".
    GM_HOST_DEVICE inline Vec2i& Min()
    {
        return m_min;
    }

    /// Const accessor for "max".
    GM_HOST_DEVICE inline const Vec2i& Max() const
    {
        return m_max;
    }

    /// Mutable accessor for "max".
    GM_HOST_DEVICE inline Vec2i& Max()
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
        ss << i_classPrefix << "Bounds2i( ";
        ss << m_min.GetString( i_classPrefix );
        ss << ", ";
        ss << m_max.GetString( i_classPrefix );
        ss << " )";
        return ss.str();
    }

private:
    /// Element members.
    Vec2i m_min = Vec2i( std::numeric_limits< int >::max(), std::numeric_limits< int >::max() );
    Vec2i m_max = Vec2i( std::numeric_limits< int >::min(), std::numeric_limits< int >::min() );
};

/// Operator overload for << to enable writing the string representation of \p i_composite into an output
/// stream \p o_outputStream.
///
/// \param o_outputStream the output stream to write into.
/// \param i_composite the source composite value type.
///
/// \return the output stream.
inline std::ostream& operator<<( std::ostream& o_outputStream, const Bounds2i& i_composite )
{
    o_outputStream << i_composite.GetString();
    return o_outputStream;
}

GM_NS_CLOSE