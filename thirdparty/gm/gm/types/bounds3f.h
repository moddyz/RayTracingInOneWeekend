//
// This file is auto-generated, please do not modify directly!
//

#pragma once

/// \file bounds3f.h

#include <limits>
#include <sstream>

#include <gm/gm.h>
#include <gm/types/vec3f.h>

GM_NS_OPEN

/// \class Bounds3f
class Bounds3f final
{
public:
    /// Default constructor.
    Bounds3f() = default;

    /// Destructor.
    ~Bounds3f() = default;

    /// Element-wise constructor.
    explicit Bounds3f( const Vec3f& i_min, const Vec3f& i_max )
        : m_min( i_min )
        , m_max( i_max )
    {
    }

    /// Const accessor for "min".
    GM_HOST_DEVICE inline const Vec3f& Min() const
    {
        return m_min;
    }

    /// Mutable accessor for "min".
    GM_HOST_DEVICE inline Vec3f& Min()
    {
        return m_min;
    }

    /// Const accessor for "max".
    GM_HOST_DEVICE inline const Vec3f& Max() const
    {
        return m_max;
    }

    /// Mutable accessor for "max".
    GM_HOST_DEVICE inline Vec3f& Max()
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
        ss << i_classPrefix << "Bounds3f( ";
        ss << m_min.GetString( i_classPrefix );
        ss << ", ";
        ss << m_max.GetString( i_classPrefix );
        ss << " )";
        return ss.str();
    }

private:
    /// Element members.
    Vec3f m_min = Vec3f( std::numeric_limits< float >::max(),
                         std::numeric_limits< float >::max(),
                         std::numeric_limits< float >::max() );
    Vec3f m_max = Vec3f( std::numeric_limits< float >::min(),
                         std::numeric_limits< float >::min(),
                         std::numeric_limits< float >::min() );
};

/// Operator overload for << to enable writing the string representation of \p i_composite into an output
/// stream \p o_outputStream.
///
/// \param o_outputStream the output stream to write into.
/// \param i_composite the source composite value type.
///
/// \return the output stream.
inline std::ostream& operator<<( std::ostream& o_outputStream, const Bounds3f& i_composite )
{
    o_outputStream << i_composite.GetString();
    return o_outputStream;
}

GM_NS_CLOSE