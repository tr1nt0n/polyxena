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
                        \override Dots.staff-position = #2
                        \override Staff.Clef.stencil = #ly:text-interface::print
                        \override Staff.Clef.text = \string-clef
                        \staff-line-count 4
                        \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                        \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                        \override Staff.Accidental.stencil = ##f
                        \override Staff.NoteHead.no-ledgers = ##t
                        \set Staff.forceClef = ##t
                        \clef "treble"
                        d''2
                        - \tweak padding #13
                        ^ \markup \fontsize #7 { Unprolated shards }
                        - \abjad-zero-padding-glissando
                        \glissando
                        - \tweak padding #9.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \open-hand \hspace #0.5 }
                        \startTextSpanOne
                        \set Staff.forceClef = ##f
                        d'8.
                        \stopTextSpanOne
                          %! abjad.glissando(7)
                        - \abjad-zero-padding-glissando
                          %! abjad.glissando(7)
                        \glissando
                        - \tweak padding #9.5
                        - \abjad-solid-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \open-hand \hspace #0.5 }
                        - \tweak bound-details.right.text \closed-hand
                        \startTextSpanOne
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
                        d'16
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
                        ef''32
                        ]
                        - \abjad-zero-padding-glissando
                        \glissando
                        bqs''8
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
                        bqs''8
                        \override Staff.Stem.stemlet-length = 0.75
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        d''16
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        fqs'16
                        \stopTextSpanOne
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
                        fqs'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        fqs'16
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
                        a'16
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
                        a'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        a'16
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
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
                        g'16
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        b'32
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        g32
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
                        g16.
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        cqs''32
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
                        cqs''32
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        ef'16.
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
                        ef'8
                        [
                        ~
                        ef'32
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        eqs'16.
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
                        eqs'2
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        eqs'8
                        [
                        ~
                        eqs'32
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        d''16.
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
                        d''8
                        [
                        ~
                        d''32
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        e''32
                        - \abjad-zero-padding-glissando
                        \glissando
                        b16
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
                        b8
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b16
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
                        bqs''16
                        ]
                        - \abjad-zero-padding-glissando
                        \glissando
                        d''4
                        - \abjad-zero-padding-glissando
                        \glissando
                        gqs''2
                        - \abjad-zero-padding-glissando
                        \glissando
                        b''4
                        - \abjad-zero-padding-glissando
                        \glissando
                        \override Staff.Stem.stemlet-length = 0.75
                        g32
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        gqs''8..
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
                        gqs''32
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        g''16
                        - \abjad-zero-padding-glissando
                        \glissando
                        eqs'32
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
                        eqs'8
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        eqs'8..
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
                        d''32
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
                        d''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        d''16.
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        g''32
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
                        g''8
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g''32
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
                        bqf16
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
                        bqf32
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        d'16.
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
                        d'8
                        [
                        ~
                        d'32
                        \revert Dots.staff-position
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        eqs'32
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/17
                        {
                            \override Dots.staff-position = #2
                            d''2.
                            - \tweak padding #13
                            ^ \markup \fontsize #7 { Shards prolated to measure groups }
                            - \abjad-zero-padding-glissando
                            \glissando
                            fqs'4
                            - \abjad-zero-padding-glissando
                            \glissando
                            a'16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        g'2
                        - \abjad-zero-padding-glissando
                        \glissando
                        b'4
                        - \abjad-zero-padding-glissando
                        \glissando
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 11/16
                        {
                            g4
                            - \abjad-zero-padding-glissando
                            \glissando
                            cqs''2.
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 18/17
                        {
                            ef'4
                            - \abjad-zero-padding-glissando
                            \glissando
                            eqs'32
                            - \abjad-zero-padding-glissando
                            \glissando
                            d''4
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \times 4/5
                        {
                            e''2
                            - \abjad-zero-padding-glissando
                            \glissando
                            b\breve
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 37/48
                        {
                            bqs''1
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Dots.staff-position
                            d''2
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 24/33
                        {
                            \override Dots.staff-position = #2
                            g2.
                            - \tweak padding #13
                            ^ \markup \fontsize #7 { Shards prolated to beat groups }
                            - \abjad-zero-padding-glissando
                            \glissando
                            cqs''4
                            - \abjad-zero-padding-glissando
                            \glissando
                            ef'32
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            eqs'2
                            - \abjad-zero-padding-glissando
                            \glissando
                            d''8
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        e''8
                        - \abjad-zero-padding-glissando
                        \glissando
                        b4
                        - \abjad-zero-padding-glissando
                        \glissando
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/17
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            bqs''8
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            d''64
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            gqs''8
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            b''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            g2.
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        gqs''2
                        - \abjad-zero-padding-glissando
                        \glissando
                        g''4
                        - \abjad-zero-padding-glissando
                        \glissando
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 16/13
                        {
                            eqs'16.
                            - \abjad-zero-padding-glissando
                            \glissando
                            d''4
                            - \abjad-zero-padding-glissando
                            \glissando
                            g''16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/4
                        {
                            bqf4.
                            - \abjad-zero-padding-glissando
                            \glissando
                            d'8
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 8/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            eqs'32
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            d''8.
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 16/15
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            fqs'16.
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            a'8
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                            ef''4
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \times 4/5
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            bqs''8.
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            d''8
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \times 8/9
                        {
                            g4
                            - \abjad-zero-padding-glissando
                            \glissando
                            g'32
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/17
                        {
                            b'4
                            - \abjad-zero-padding-glissando
                            \glissando
                            ef'32
                            - \abjad-zero-padding-glissando
                            \glissando
                            cqs''4
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \times 4/5
                        {
                            b4
                            - \abjad-zero-padding-glissando
                            \glissando
                            eqs'16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \times 4/5
                        {
                            d''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            e''2
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/11
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            gqs''16
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            b''64
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            bqs''16.
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/6
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            d''16
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            g8
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \times 4/5
                        {
                            eqs'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            d''2
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/9
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            gqs''8
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            g''32
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            g8
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/9
                        {
                            g''16
                            - \abjad-zero-padding-glissando
                            \glissando
                            eqs'2
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            d''8
                            - \abjad-zero-padding-glissando
                            \glissando
                            d'2
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 24/25
                        {
                            bqs''4
                            - \abjad-zero-padding-glissando
                            \glissando
                            \override Staff.Stem.stemlet-length = 0.75
                            d''8
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            fqs'64
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        a'4
                        - \abjad-zero-padding-glissando
                        \glissando
                        ef''8
                        - \abjad-zero-padding-glissando
                        \glissando
                        g'4
                        - \abjad-zero-padding-glissando
                        \glissando
                        b'4
                        - \abjad-zero-padding-glissando
                        \glissando
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/17
                        {
                            g2.
                            - \abjad-zero-padding-glissando
                            \glissando
                            cqs''4
                            - \abjad-zero-padding-glissando
                            \glissando
                            ef'16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        e''4
                        - \abjad-zero-padding-glissando
                        \glissando
                        b2
                        - \abjad-zero-padding-glissando
                        \glissando
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/9
                        {
                            eqs'4
                            - \abjad-zero-padding-glissando
                            \glissando
                            d''32
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \override Staff.Stem.stemlet-length = 0.75
                        bqs''32
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        d''32
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Dots.staff-position
                        \revert Staff.Stem.stemlet-length
                        gqs''8
                        ]
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
                        \override Staff.Clef.text = \fourteen-string-clef
                        \staff-line-count 14
                        \override Staff.Accidental.stencil = ##f
                        \override Staff.NoteHead.no-ledgers = ##t
                        \set Staff.forceClef = ##t
                        \clef "percussion"
                        b4
                        - \abjad-zero-padding-glissando
                        \glissando
                        \set Staff.forceClef = ##f
                        \override Staff.Stem.stemlet-length = 0.75
                        d'32
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        b32
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
                        b16
                        ]
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b16
                        [
                        ~
                        b32
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        f'32
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
                        f'16.
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        f'16
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
                        d'32
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
                        d'8..
                        ~
                        d'2
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        c''4
                        - \abjad-zero-padding-glissando
                        \glissando
                        \override Staff.Stem.stemlet-length = 0.75
                        b''32
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        a'16.
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
                        a'16.
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        c''32
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
                        c''16.
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        b32
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
                        b8..
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
                        c''32
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
                        c''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c''8..
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
                        g''32
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
                        g''8..
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
                        b''32
                        ]
                        - \abjad-zero-padding-glissando
                        \glissando
                        e''4
                        - \abjad-zero-padding-glissando
                        \glissando
                        \override Staff.Stem.stemlet-length = 0.75
                        b16
                        [
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        b''16
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
                        b''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b''16
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
                        e''16
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        c''16
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
                        c''16
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        b''32
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        g''32
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
                        g''16.
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        a'32
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
                        a'32
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        c''16.
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
                        c''8
                        [
                        ~
                        c''32
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        b16.
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
                        b4
                        ~
                        b4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b8
                        [
                        ~
                        b32
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        \revert Staff.Stem.stemlet-length
                        c''16.
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
                        c''8
                        [
                        ~
                        c''32
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        f'32
                        - \abjad-zero-padding-glissando
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        d'16
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
                        d'8.
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
                        b16
                        ]
                        - \abjad-zero-padding-glissando
                        \glissando
                        d'8..
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
                        d'32
                        [
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        c''32
                        ~
                        \revert Dots.staff-position
                        \revert Staff.Stem.stemlet-length
                        c''8
                        ]
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/11
                        {
                            \override Dots.staff-position = #2
                            f'16
                            - \abjad-zero-padding-glissando
                            \glissando
                            d'4.
                            - \abjad-zero-padding-glissando
                            \glissando
                            c''4
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        b''4
                        - \abjad-zero-padding-glissando
                        \glissando
                        a'2
                        - \abjad-zero-padding-glissando
                        \glissando
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 11/9
                        {
                            c''2
                            - \abjad-zero-padding-glissando
                            \glissando
                            b16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 9/11
                        {
                            c''4
                            - \abjad-zero-padding-glissando
                            \glissando
                            g''16
                            - \abjad-zero-padding-glissando
                            \glissando
                            b''4.
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        e''1.
                        - \abjad-zero-padding-glissando
                        \glissando
                        b2
                        - \abjad-zero-padding-glissando
                        \glissando
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 37/40
                        {
                            b''4
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Dots.staff-position
                            e''1
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/11
                        {
                            \override Dots.staff-position = #2
                            a'16
                            - \abjad-zero-padding-glissando
                            \glissando
                            c''2
                            - \abjad-zero-padding-glissando
                            \glissando
                            b8
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        c''4
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
                        c''8
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
                        g''8
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
                        g''4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            b''4
                            - \abjad-zero-padding-glissando
                            \glissando
                            e''16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            b16
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            b''32
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            e''8
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 3/4
                        {
                            c''2.
                            - \abjad-zero-padding-glissando
                            \glissando
                            b''4
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/9
                        {
                            g''16
                            - \abjad-zero-padding-glissando
                            \glissando
                            a'2
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 16/13
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c''32
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            b8
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                            c''4
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/9
                        {
                            f'4
                            - \abjad-zero-padding-glissando
                            \glissando
                            d'32
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \times 4/5
                        {
                            b4
                            - \abjad-zero-padding-glissando
                            \glissando
                            d'16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \times 4/5
                        {
                            c''4
                            - \abjad-zero-padding-glissando
                            \glissando
                            b''4
                            - \abjad-zero-padding-glissando
                            \glissando
                            d'8
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \times 8/11
                        {
                            f'16.
                            - \abjad-zero-padding-glissando
                            \glissando
                            a'4
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 16/13
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c''64
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            b''8.
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/15
                        {
                            c''4
                            - \abjad-zero-padding-glissando
                            \glissando
                            \override Staff.Stem.stemlet-length = 0.75
                            g''32
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            a'8.
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 8/7
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c''16.
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            b8
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \times 8/11
                        {
                            b''2
                            - \abjad-zero-padding-glissando
                            \glissando
                            e''8.
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/13
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            b''16
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            a'8
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            c''64
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 7/9
                        {
                            b''4
                            - \abjad-zero-padding-glissando
                            \glissando
                            g''32
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \times 2/3
                        {
                            c''4
                            - \abjad-zero-padding-glissando
                            \glissando
                            f'2
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/9
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            c''8
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            b32
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            d'8
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            c''2
                            - \abjad-zero-padding-glissando
                            \glissando
                            b''8
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        b4
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
                        b8
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
                        d'8
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
                        d'4
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/17
                        {
                              %! abjad.glissando(6)
                            \revert Accidental.stencil
                              %! abjad.glissando(6)
                            \revert NoteColumn.glissando-skip
                              %! abjad.glissando(6)
                            \revert NoteHead.no-ledgers
                              %! abjad.glissando(6)
                            \undo \hide NoteHead
                            b4.
                            - \abjad-zero-padding-glissando
                            \glissando
                            \override Staff.Stem.stemlet-length = 0.75
                            d'32
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Staff.Stem.stemlet-length
                            c''8
                            ]
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            b''4
                            - \abjad-zero-padding-glissando
                            \glissando
                            a'16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \times 8/9
                        {
                            c''2
                            - \abjad-zero-padding-glissando
                            \glissando
                            b16
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/9
                        {
                            c''4
                            - \abjad-zero-padding-glissando
                            \glissando
                            g''16
                            - \abjad-zero-padding-glissando
                            \glissando
                            a'4
                            - \abjad-zero-padding-glissando
                            \glissando
                        }
                        b''4
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
                        b''4
                          %! abjad.glissando(6)
                        \revert Accidental.stencil
                          %! abjad.glissando(6)
                        \revert NoteColumn.glissando-skip
                          %! abjad.glissando(6)
                        \revert NoteHead.no-ledgers
                          %! abjad.glissando(6)
                        \undo \hide NoteHead
                        e''4
                        - \abjad-zero-padding-glissando
                        \glissando
                        b32
                        - \abjad-zero-padding-glissando
                        \glissando
                        b''8.
                        - \abjad-zero-padding-glissando
                        \glissando
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 12/9
                        {
                            \override Staff.Stem.stemlet-length = 0.75
                            e''64
                            [
                            - \abjad-zero-padding-glissando
                            \glissando
                            g''16
                            - \abjad-zero-padding-glissando
                            \glissando
                            \revert Dots.staff-position
                            \revert Staff.Stem.stemlet-length
                            a'16
                            ]
                        }
                    }
                }
            >>
        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
