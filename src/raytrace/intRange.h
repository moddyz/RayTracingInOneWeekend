#pragma once

/// \file raytrace/intRange.h
///
/// Integer range iteration.

#include <raytrace/raytrace.h>

RAYTRACE_NS_OPEN

/// \class IntRange
///
/// Convience iteration over a range of integers, with bi-directional support.
///
/// The integers in the range are \em inclusive of \p i_begin and \em exclusive  of \p i_end.
class IntRange
{
public:
    /// Initialize this integer range.
    ///
    /// If \p i_end > \p i_begin, the increment value is \p 1 for forwards iteration.
    /// If \p i_end < \p i_begin, the increment value is \p -1, for backwards iteration.
    ///
    /// \note If \p i_end == \p i_begin, the increment value is \p 0 - there will be no range to iterate over.
    ///
    /// \param i_begin the beginning of the integer range.
    /// \param i_end the end of the integer range.
    inline IntRange( int i_begin, int i_end )
        : m_begin( i_begin )
        , m_end( i_end )
    {
        if ( i_begin < i_end )
        {
            m_increment = 1;
        }
        else if ( i_begin > i_end )
        {
            m_increment = -1;
        }
    }

    /// Custom iterator over the range of integers.
    class iterator final
    {
    public:
        iterator( int i_current, int i_increment )
            : m_current( i_current )
            , m_increment( i_increment )
        {
        }

        /// In-equality operator, for check for iteration termination.
        bool operator!=( const iterator& i_other ) const
        {
            return m_current != i_other.m_current;
        }

        /// De-referencing operator, to get the value.
        int operator*() const
        {
            return m_current;
        }

        /// Increment the iterator.
        const iterator& operator++()
        {
            m_current += m_increment;
            return *this;
        }

    private:
        int m_current   = 0;
        int m_increment = 0;
    };

    /// \return The iterator referring to the \em beginning of the integer range.
    inline iterator begin() const
    {
        return iterator( m_begin, m_increment );
    }

    /// \return The iterator referring to the \em end of the integer range.
    inline iterator end() const
    {
        return iterator( m_end, m_increment );
    }

private:
    int m_begin     = 0;
    int m_end       = 0;
    int m_increment = 0;
};

RAYTRACE_NS_CLOSE
