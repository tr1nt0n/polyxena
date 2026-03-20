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
                            \override Dots.staff-position = #2
                            \override Staff.Clef.stencil = #ly:text-interface::print
                            \override Staff.Clef.text = \seven-string-clef
                            \staff-line-count 7
                            \override Staff.Accidental.stencil = ##f
                            \override Staff.NoteHead.no-ledgers = ##t
                            \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Viola da Gamba }
                              %! +SCORE
                            \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { viol. }
                            \set Staff.forceClef = ##t
                            \clef "percussion"
                            g'4
                            (
                            - \abjad-zero-padding-glissando
                            \glissando
                            \set Staff.forceClef = ##f
                            f4
                            - \abjad-zero-padding-glissando
                            \glissando
                            a4
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \override disappearingStaff.Stem.stemlet-length = 0.75
                        c'32
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert disappearingStaff.Stem.stemlet-length
                        b'16
                        ]
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        b'16.
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/6
                        {
                            \override disappearingStaff.Stem.stemlet-length = 0.75
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            e'16
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert disappearingStaff.Stem.stemlet-length
                            b'8
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 8/7
                        {
                            c'16
                            - \abjad-zero-padding-glissando
                            \glissando
                            a4
                              %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                              %! abjad.glissando(7)
                            \glissando
                            ~
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            \override disappearingStaff.Stem.stemlet-length = 0.75
                            a16
                            [
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            \revert disappearingStaff.Stem.stemlet-length
                            f16
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \override disappearingStaff.Stem.stemlet-length = 0.75
                        g'8
                        [
                        ~
                        \revert Dots.staff-position
                        g'16..
                        )
                        \override Dots.staff-position = #2
                        c'64
                        (
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        c'32
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert disappearingStaff.Stem.stemlet-length
                        e'16.
                        ]
                        - \abjad-zero-padding-glissando
                        \glissando
                        a4
                        - \abjad-zero-padding-glissando
                        \glissando
                        e'4
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Dots.staff-position
                        c'4
                        )
                        \override Dots.staff-position = #2
                        b'4
                        (
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \override disappearingStaff.Stem.stemlet-length = 0.75
                        b'8
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert disappearingStaff.Stem.stemlet-length
                        e'8
                        ]
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        \override disappearingStaff.Stem.stemlet-length = 0.75
                        e'16
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert disappearingStaff.Stem.stemlet-length
                        c'8.
                        ]
                        - \abjad-zero-padding-glissando
                        \glissando
                        \override disappearingStaff.Stem.stemlet-length = 0.75
                        a16
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        g'16
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        ~
                          %! abjad.glissando(1)
                        \hide NoteHead
                          %! abjad.glissando(1)
                        \override Accidental.stencil = ##f
                          %! abjad.glissando(1)
                        \override NoteColumn.glissando-skip = ##t
                          %! abjad.glissando(1)
                        \override NoteHead.no-ledgers = ##t
                        g'8
                        ~
                        g'16
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert disappearingStaff.Stem.stemlet-length
                        a16
                        ]
                        - \abjad-zero-padding-glissando
                        \glissando
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            c'4
                            - \abjad-zero-padding-glissando
                            \glissando
                            \override disappearingStaff.Stem.stemlet-length = 0.75
                            e'16
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Dots.staff-position
                            \revert disappearingStaff.Stem.stemlet-length
                            b'8
                            )
                            ]
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/4
                        {
                            \override Dots.staff-position = #2
                            c'8
                            (
                            - \abjad-zero-padding-glissando
                            \glissando
                            e'2.
                            - \abjad-zero-padding-glissando
                            \glissando
                            a8
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        e'4
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Dots.staff-position
                        c'4
                        )
                        \override Dots.staff-position = #2
                        e'4
                        (
                        - \abjad-zero-padding-glissando
                        \glissando
                        \times 2/3
                        {
                            c'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            g'2
                            - \abjad-zero-padding-glissando
                            \glissando
                            f8
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/6
                        {
                            \override disappearingStaff.Stem.stemlet-length = 0.75
                            b'8
                            [
                              %! abjad.glissando(7)
                            - \abjad-zero-padding-glissando
                              %! abjad.glissando(7)
                            \glissando
                            ~
                              %! abjad.glissando(1)
                            \hide NoteHead
                              %! abjad.glissando(1)
                            \override Accidental.stencil = ##f
                              %! abjad.glissando(1)
                            \override NoteColumn.glissando-skip = ##t
                              %! abjad.glissando(1)
                            \override NoteHead.no-ledgers = ##t
                            b'32
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            \revert disappearingStaff.Stem.stemlet-length
                            a32
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \override disappearingStaff.Stem.stemlet-length = 0.75
                            b'8.
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Dots.staff-position
                            \revert disappearingStaff.Stem.stemlet-length
                            f32
                            )
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
                        \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { thb. }
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
