#pragma once

#include <gm/gm.h>
#include <gm/types/bounds2i.h>
#include <gm/types/vec2i.h>

GM_NS_OPEN

/// \class Vec2iRange
///
/// Can be used to iterate over range of vectors from \ref i_begin to \ref i_end.
/// The iterator does not visit components equal to those of \ref i_end.
///
/// Usage:
/// gm::Bounds2i bounds( gm::Vec2i( 0, 0 ), gm::Vec2i( 10, 10 ) );
/// for ( const gm::Vec2i& point : bounds )
/// {
///     ...do something with point...
/// }
///
class Vec2iRange final
{
public:
    /// Range constructor.
    Vec2iRange( const Vec2i& i_begin, const Vec2i& i_end )
        : m_begin( i_begin )
        , m_end( i_end )
    {
    }

    class iterator final
    {
    public:
        /// Iterator ctor.
        iterator( const Vec2i& i_current, const Vec2i& i_begin, const Vec2i& i_end )
            : m_begin( i_begin )
            , m_end( i_end )
            , m_current( i_current )
        {
        }

        bool operator!=( const iterator& i_other ) const
        {
            return m_current != i_other.m_current;
        }

        Vec2i operator*() const
        {
            return m_current;
        }

        const iterator& operator++()
        {
            if ( m_current[ 0 ] < m_end[ 0 ] || ( m_current[ 0 ] == m_end[ 0 ] && m_current[ 1 ] == m_end[ 1 ] ) )
            {
                m_current[ 0 ]++;
            }
            else
            {
                if ( m_current[ 1 ] < m_end[ 1 ] )
                {
                    m_current[ 1 ]++;
                    m_current[ 0 ] = m_begin[ 0 ];
                }
            }
            return *this;
        }

    private:
        Vec2i m_begin;
        Vec2i m_end;
        Vec2i m_current;
    };

    iterator begin()
    {
        return iterator( m_begin, m_begin, Vec2i( m_end[ 0 ] - 1, m_end[ 1 ] - 1 ) );
    }

    iterator end()
    {
        return iterator( Vec2i( m_end[ 0 ], m_end[ 1 ] - 1 ), m_begin, Vec2i( m_end[ 0 ] - 1, m_end[ 1 ] - 1 ) );
    }

private:
    Vec2i m_begin;
    Vec2i m_end;
};

GM_NS_CLOSE
