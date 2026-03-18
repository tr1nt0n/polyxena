    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 8/16
            s1 * 1/2
            \time 6/32
            s1 * 3/16
            \time 7/32
            s1 * 7/32
            \time 8/16
            s1 * 1/2
            \time 3/8
            s1 * 3/8
            \time 6/4
            s1 * 3/2
            \time 6/8
            s1 * 3/4
            \time 8/4
            s1 * 2
            \time 7/32
            s1 * 7/32
            \time 3/16
            s1 * 3/16
            \time 3/4
            s1 * 3/4
            \time 6/8
            s1 * 3/4
            \time 7/16
            s1 * 7/16
            \time 8/32
            s1 * 1/4
            \time 6/32
            s1 * 3/16
            \time 3/8
            s1 * 3/8
            \time 8/4
            s1 * 2
            \time 7/16
            s1 * 7/16
            \time 8/16
            s1 * 1/2
            \time 7/32
            s1 * 7/32
            \time 6/4
            s1 * 3/2
            \time 3/8
            s1 * 3/8
            \time 3/16
            s1 * 3/16
            \time 6/4
            s1 * 3/2
            \time 7/8
            s1 * 7/8
            \time 8/32
            s1 * 1/4
            \time 3/4
            s1 * 3/4
            \time 7/8
            s1 * 7/8
            \time 8/16
            s1 * 1/2
            \time 6/32
            s1 * 3/16
            \time 7/32
            s1 * 7/32
            \time 8/16
            s1 * 1/2
            \time 3/8
            s1 * 3/8
            \time 6/4
            s1 * 3/2
            \time 6/8
            s1 * 3/4
            \time 8/4
            s1 * 2
            \time 7/32
            s1 * 7/32
            \time 3/16
            s1 * 3/16
        }
        \context StaffGroup = "Staff Group"
        <<
            \context GrandStaff = "sub group 1"
            <<
                \context disappearingStaff = "cello 1 staff"
                {
                    \context Voice = "cello 1 voice"
                    {
                        \times 2/3
                        {
                            \override Staff.Clef.stencil = #ly:text-interface::print
                            \override Staff.Clef.text = \seven-string-clef
                            \staff-line-count 7
                            \override Staff.Accidental.stencil = ##f
                            \override Staff.NoteHead.no-ledgers = ##t
                            \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Viola da Gamba }
                              %! +SCORE
                        %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { viol. }
                            \set Staff.forceClef = ##t
                            \clef "percussion"
                            g'4
                            \set Staff.forceClef = ##f
                            e'4
                            c'4
                        }
                        \override disappearingStaff.Stem.stemlet-length = 0.75
                        b'32
                        [
                        \revert disappearingStaff.Stem.stemlet-length
                        a16
                        ]
                        ~
                        a16.
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/6
                        {
                            \override disappearingStaff.Stem.stemlet-length = 0.75
                            f16
                            [
                            \revert disappearingStaff.Stem.stemlet-length
                            a8
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 8/7
                        {
                            b'16
                            c'4
                            ~
                            \override disappearingStaff.Stem.stemlet-length = 0.75
                            c'16
                            [
                            \revert disappearingStaff.Stem.stemlet-length
                            e'16
                            ]
                        }
                        \override disappearingStaff.Stem.stemlet-length = 0.75
                        g'8
                        [
                        ~
                        g'16..
                        c'64
                        ~
                        c'32
                        \revert disappearingStaff.Stem.stemlet-length
                        a16.
                        ]
                        e'4
                        a4
                        c'4
                        c'4
                        ~
                        \override disappearingStaff.Stem.stemlet-length = 0.75
                        c'8
                        [
                        \revert disappearingStaff.Stem.stemlet-length
                        g'8
                        ]
                        ~
                        \override disappearingStaff.Stem.stemlet-length = 0.75
                        g'16
                        [
                        \revert disappearingStaff.Stem.stemlet-length
                        b'8.
                        ]
                        \override disappearingStaff.Stem.stemlet-length = 0.75
                        a16
                        [
                        e'16
                        ~
                        e'8
                        ~
                        e'16
                        \revert disappearingStaff.Stem.stemlet-length
                        a16
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            b'4
                            \override disappearingStaff.Stem.stemlet-length = 0.75
                            g'16
                            [
                            \revert disappearingStaff.Stem.stemlet-length
                            c'8
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/4
                        {
                            c'8
                            a2.
                            e'8
                        }
                        a4
                        c'4
                        b'4
                        \times 2/3
                        {
                            g'8
                            c'2
                            e'8
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/6
                        {
                            \override disappearingStaff.Stem.stemlet-length = 0.75
                            f8
                            [
                            ~
                            f32
                            \revert disappearingStaff.Stem.stemlet-length
                            a32
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \override disappearingStaff.Stem.stemlet-length = 0.75
                            f8.
                            [
                            \revert disappearingStaff.Stem.stemlet-length
                            e'32
                            ]
                        }
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/16
                        s1 * 1/4
                        s1 * 3/16
                        s1 * 3/8
                        s1 * 2
                        s1 * 7/16
                        s1 * 1/2
                        s1 * 7/32
                        s1 * 3/2
                        s1 * 3/8
                        s1 * 3/16
                        s1 * 3/2
                        s1 * 7/8
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 1/2
                        s1 * 3/16
                        s1 * 7/32
                        s1 * 1/2
                        s1 * 3/8
                        s1 * 3/2
                        s1 * 3/4
                        s1 * 2
                        s1 * 7/32
                        s1 * 3/16
                    }
                }
                \context Staff = "cello 2 staff"
                {
                    \context Voice = "cello 2 voice"
                    {
                        s1 * 1/2
                        s1 * 3/16
                        s1 * 7/32
                        s1 * 1/2
                        s1 * 3/8
                        s1 * 3/2
                        s1 * 3/4
                        s1 * 2
                        s1 * 7/32
                        s1 * 3/16
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/16
                        s1 * 1/4
                        s1 * 3/16
                        s1 * 3/8
                        s1 * 2
                        s1 * 7/16
                        s1 * 1/2
                        s1 * 7/32
                        s1 * 3/2
                        s1 * 3/8
                        s1 * 3/16
                        s1 * 3/2
                        s1 * 7/8
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 1/2
                        s1 * 3/16
                        s1 * 7/32
                        s1 * 1/2
                        s1 * 3/8
                        s1 * 3/2
                        s1 * 3/4
                        s1 * 2
                        s1 * 7/32
                        s1 * 3/16
                    }
                }
            >>
            \context GrandStaff = "sub group 2"
            <<
                \context disappearingStaff = "guitar 1 staff"
                {
                    \context Voice = "guitar 1 voice"
                    {
                        \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Theorbo }
                          %! +SCORE
                    %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { thb. }
                        s1 * 1/2
                        s1 * 3/16
                        s1 * 7/32
                        s1 * 1/2
                        s1 * 3/8
                        s1 * 3/2
                        s1 * 3/4
                        s1 * 2
                        s1 * 7/32
                        s1 * 3/16
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/16
                        s1 * 1/4
                        s1 * 3/16
                        s1 * 3/8
                        s1 * 2
                        s1 * 7/16
                        s1 * 1/2
                        s1 * 7/32
                        s1 * 3/2
                        s1 * 3/8
                        s1 * 3/16
                        s1 * 3/2
                        s1 * 7/8
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 1/2
                        s1 * 3/16
                        s1 * 7/32
                        s1 * 1/2
                        s1 * 3/8
                        s1 * 3/2
                        s1 * 3/4
                        s1 * 2
                        s1 * 7/32
                        s1 * 3/16
                    }
                }
                \context Staff = "guitar 2 staff"
                {
                    \context Voice = "guitar 2 voice"
                    {
                        s1 * 1/2
                        s1 * 3/16
                        s1 * 7/32
                        s1 * 1/2
                        s1 * 3/8
                        s1 * 3/2
                        s1 * 3/4
                        s1 * 2
                        s1 * 7/32
                        s1 * 3/16
                        s1 * 3/4
                        s1 * 3/4
                        s1 * 7/16
                        s1 * 1/4
                        s1 * 3/16
                        s1 * 3/8
                        s1 * 2
                        s1 * 7/16
                        s1 * 1/2
                        s1 * 7/32
                        s1 * 3/2
                        s1 * 3/8
                        s1 * 3/16
                        s1 * 3/2
                        s1 * 7/8
                        s1 * 1/4
                        s1 * 3/4
                        s1 * 7/8
                        s1 * 1/2
                        s1 * 3/16
                        s1 * 7/32
                        s1 * 1/2
                        s1 * 3/8
                        s1 * 3/2
                        s1 * 3/4
                        s1 * 2
                        s1 * 7/32
                        s1 * 3/16
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
