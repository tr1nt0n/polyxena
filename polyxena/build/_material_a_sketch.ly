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
                        \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Viola da Gamba }
                          %! +SCORE
                        \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { viol. }
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
                        \override Dots.staff-position = #2
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \rasgueado-clef
                        \override Staff.StaffSymbol.line-positions = #'(9 0 -9)
                        \staff-line-count 3
                        \override Staff.Accidental.stencil = ##f
                        \override Staff.NoteHead.no-ledgers = ##t
                        \set Staff.forceClef = ##t
                        \clef "percussion"
                        a,4
                        - \abjad-zero-padding-glissando
                        \glissando
                        \set Staff.forceClef = ##f
                        \override Staff.Stem.stemlet-length = 0.75
                        fqs32
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        af32
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
                        \revert Staff.Stem.stemlet-length
                        af16
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af16
                        [
                        ~
                        af32
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        gqs'32
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
                        gqs'16.
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        gqs'16
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        e''32
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
                        e''8..
                        ~
                        e''2
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        cs'4
                        - \abjad-zero-padding-glissando
                        \glissando
                        \override Staff.Stem.stemlet-length = 0.75
                        fs'32
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        gqs'16.
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
                        \override Staff.Stem.stemlet-length = 0.75
                        gqs'16.
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        a,32
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
                        a,16.
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        aqf'32
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
                        \override Staff.Stem.stemlet-length = 0.75
                        aqf'8..
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        e''32
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
                        e''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e''8..
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        aqf'32
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
                        \override Staff.Stem.stemlet-length = 0.75
                        aqf'8..
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        e''32
                        ]
                        - \abjad-zero-padding-glissando
                        \glissando
                        a,4
                        - \abjad-zero-padding-glissando
                        \glissando
                        \override Staff.Stem.stemlet-length = 0.75
                        bf'16
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        cs'16
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
                        cs'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        cs'16
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        gqs'16
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
                        gqs'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        gqs'16
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        e''16
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
                        e''16
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        e'32
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        fqs32
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
                        \override Staff.Stem.stemlet-length = 0.75
                        fqs16.
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        gqs'32
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
                        gqs'32
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        a,16.
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
                        \override Staff.Stem.stemlet-length = 0.75
                        a,8
                        [
                        ~
                        a,32
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        bf16.
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
                        bf4
                        ~
                        bf4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        bf8
                        [
                        ~
                        bf32
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        eqf16.
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
                        \override Staff.Stem.stemlet-length = 0.75
                        eqf8
                        [
                        ~
                        eqf32
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        a,32
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        gqs'16
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
                        \override Staff.Stem.stemlet-length = 0.75
                        gqs'8.
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        e''16
                        ]
                        - \abjad-zero-padding-glissando
                        \glissando
                        af8..
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
                        \override Staff.Stem.stemlet-length = 0.75
                        af32
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        fqs32
                        ~
                        \revert Dots.staff-position
                        \revert Staff.Stem.stemlet-length
                        fqs8
                        ]
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
