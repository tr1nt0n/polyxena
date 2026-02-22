    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (1 20 38 18)))
              %! +SCORE
            \tempo 8=48
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0.5 \raise #22 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 48" } } }
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
              %! +SCORE
            \tempo 8=84
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #20 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 84" } } }
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
              %! +SCORE
            \tempo 8=48
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #20 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 48" } } }
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 15 30 15)))
            \once \override Score.TimeSignature.stencil = ##f
              %! +SCORE
            \tempo 8=84
            \time 3/4
            s1 * 3/4
              %! +SCORE
            - \tweak color #white
              %! +SCORE
            - \tweak padding #7
              %! +SCORE
            ^ \markup { \fontsize #25 { . } }
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #6.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 84" } } }
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
              %! +SCORE
            \tempo 8=48
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #6.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 48" } } }
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
              %! +SCORE
            \tempo 8=84
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #-27.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 84" } } }
              %! +SCORE
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'14
            - \tweak padding 10
            _ \short-fermata
            \bar "||"
            \once \override Score.BarLine.transparent = ##f
              %! +SCORE
            \pageBreak
        }
        \tag #'group1
        {
            \context StaffGroup = "Staff Group"
            <<
                \tag #'group2
                {
                    \context GrandStaff = "sub group 1"
                    <<
                        \tag #'voice1
                        {
                            \context disappearingStaff = "cello 1 staff"
                            {
                                \context Voice = "cello 1 voice"
                                {
                                    \times 2/3
                                    {
                                        \override Dots.staff-position = #2
                                        \override Staff.Clef.stencil = #ly:text-interface::print
                                        \override Staff.Clef.text = \string-clef
                                        \staff-line-count 4
                                        \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                                        \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                        \override Staff.Accidental.stencil = ##f
                                        \override Staff.NoteHead.no-ledgers = ##t
                                        \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Viola da Gamba }
                                          %! +SCORE
                                        \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { gambe }
                                        \set Staff.forceClef = ##t
                                        \clef "treble"
                                        a8
                                        ^ \half-up-bow
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 4
                                        - \tweak padding #19.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "II-V" } \hspace #0.5 }
                                        \startTextSpan
                                        - \tweak font-size 1
                                        - \tweak padding #16
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \downward-diagonal-draw \hspace #0.5 }
                                        \startTextSpanOne
                                        ~
                                        \set Staff.forceClef = ##f
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            a4
                                            \once \override Dots.staff-position = #2
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            b'8.
                                            ^ \half-down-bow
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                        }
                                        \once \override Dots.staff-position = #2
                                        \revert Dots.staff-position
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \afterGrace
                                        b'8
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            \revert Accidental.stencil
                                            \revert NoteColumn.glissando-skip
                                            \revert NoteHead.no-ledgers
                                            \undo \hide NoteHead
                                            g'16
                                        }
                                    }
                                    \repeat tremolo 2 {
                                        \change Staff = "cello 2 staff"
                                        \footnote #'(-1 . 1) \markup \fontsize #1 { \override #'(font-name . "Bodoni72 Book Italic") { \column { " Rapid alternation between touching the strings behind the bridge with harmonic finger pressure, and firmly pressing down on the strings. This should cause the instrument to irregularly shake, and subtly stretch the strings, resulting in an unpredictable vibrato. " } } }
                                        \override Staff.Clef.stencil = #ly:text-interface::print
                                        \override Staff.Clef.text = \six-string-clef
                                        \staff-line-count 6
                                        \override Staff.Accidental.stencil = ##f
                                        \override Staff.NoteHead.no-ledgers = ##t
                                        \set Staff.forceClef = ##t
                                        \clef "percussion"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            b
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            f'
                                        >16
                                        (
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 4
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "DP" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanTwo
                                        \set Staff.forceClef = ##f
                                        <g b d' f'>16
                                        - \accent
                                        )
                                        \stopTextSpanTwo
                                        \change Staff = "cello 1 staff"
                                    }
                                    \override Dots.staff-position = #2
                                    \once \override Dots.staff-position = #2
                                    \revert Dots.staff-position
                                    \afterGrace
                                    a4
                                    ^ \half-up-bow
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override Dots.staff-position = #2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override RepeatTie.transparent = ##t
                                        \once \override Beam.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Tie.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override Stem.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        c'16
                                    }
                                    \repeat tremolo 2 {
                                        \change Staff = "cello 2 staff"
                                        \override Staff.Clef.stencil = #ly:text-interface::print
                                        \override Staff.Clef.text = \six-string-clef
                                        \staff-line-count 6
                                        \override Staff.Accidental.stencil = ##f
                                        \override Staff.NoteHead.no-ledgers = ##t
                                        \set Staff.forceClef = ##t
                                        \clef "percussion"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            b
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            f'
                                        >8
                                        (
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 4
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "DP" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanTwo
                                        \set Staff.forceClef = ##f
                                        <g b d' f'>8
                                        - \accent
                                        )
                                        \stopTextSpanTwo
                                        \change Staff = "cello 1 staff"
                                    }
                                    \override Dots.staff-position = #2
                                    \once \override Dots.staff-position = #2
                                    f'2.
                                    ^ \half-up-bow
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \revert Dots.staff-position
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    f'2
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override Dots.staff-position = #2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override RepeatTie.transparent = ##t
                                        \once \override Beam.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Tie.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override Stem.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        b'16
                                    }
                                    r4
                                    \override Dots.staff-position = #2
                                    \once \override Dots.staff-position = #2
                                    \revert Dots.staff-position
                                    \afterGrace
                                    f'4
                                    ^ \half-up-bow
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override Dots.staff-position = #2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override RepeatTie.transparent = ##t
                                        \once \override Beam.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Tie.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override Stem.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        a'16
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \times 2/3
                                        {
                                            r4
                                            \override Dots.staff-position = #2
                                            \once \override Dots.staff-position = #2
                                            f'8
                                            ^ \half-up-bow
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
                                        }
                                        \once \override Dots.staff-position = #2
                                        \revert Dots.staff-position
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        \afterGrace
                                        f'16
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            \revert Accidental.stencil
                                            \revert NoteColumn.glissando-skip
                                            \revert NoteHead.no-ledgers
                                            \undo \hide NoteHead
                                            g'16
                                            \stopTextSpan
                                            \stopTextSpanOne
                                        }
                                        r8
                                        \revert Staff.Clef.stencil
                                        \revert Staff.StaffSymbol.line-positions
                                        \staff-line-count 5
                                        \revert Staff.BarLine.bar-extent
                                        \revert Staff.Accidental.stencil
                                        \revert Staff.NoteHead.no-ledgers
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "cello 2 staff"
                            {
                                \context Voice = "cello 2 voice"
                                {
                                    \times 2/3
                                    {
                                        \staff-line-count 1
                                        \once \override DynamicLineSpanner.staff-padding = #12
                                        \override Staff.Clef.stencil = ##f
                                        \clef "percussion"
                                        \tweak style #'cross
                                        c'8
                                        ^ #(make-dynamic-script
                                            (markup
                                                #:whiteout
                                                #:line (
                                                    #:general-align Y -2 #:normal-text #:larger "“"
                                                    #:hspace -0.1
                                                    #:dynamic "mp"
                                                    #:hspace -0.25
                                                    #:general-align Y -2 #:normal-text #:larger "”"
                                                    )
                                                )
                                            )
                                        [
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #4.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \column { \line { Tap tailpiece } \line { with fingertips } } } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {
                                            \tweak style #'cross
                                            c'8.
                                            \tweak style #'cross
                                            c'8.
                                            \tweak style #'cross
                                            c'16
                                        }
                                        \tweak style #'cross
                                        c'8
                                        \stopTextSpan
                                        ]
                                    }
                                    \change Staff = "cello 1 staff"
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \afterGrace
                                    <
                                        \tweak style #'la
                                        c'
                                    >8.
                                    ^ \half-down-bow
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.4
                                                #:dynamic "fff"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    _ \marcato
                                    [
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override Dots.staff-position = #2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override RepeatTie.transparent = ##t
                                        \once \override Beam.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Tie.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override Stem.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        b16
                                    }
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \afterGrace
                                    <
                                        \tweak style #'la
                                        d'
                                    >16
                                    ^ \half-down-bow
                                    _ \marcato
                                    ]
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override Dots.staff-position = #2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override RepeatTie.transparent = ##t
                                        \once \override Beam.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Tie.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override Stem.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        b16
                                    }
                                    \change Staff = "cello 2 staff"
                                    \staff-line-count 1
                                    \once \override DynamicLineSpanner.staff-padding = #12
                                    \override Staff.Clef.stencil = ##f
                                    \clef "percussion"
                                    \tweak style #'cross
                                    c'8.
                                    ^ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "mf"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    [
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #4.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \column { \line { Tap tailpiece } \line { with fingertips } } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpan
                                    \tweak style #'cross
                                    c'16
                                    \stopTextSpan
                                    ]
                                    \times 2/3
                                    {
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {
                                            \change Staff = "cello 1 staff"
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                a
                                            >8
                                            ^ \half-down-bow
                                            _ #(make-dynamic-script
                                                (markup
                                                    #:whiteout
                                                    #:line (
                                                        #:general-align Y -2 #:normal-text #:larger "“"
                                                        #:hspace -0.4
                                                        #:dynamic "ff"
                                                        #:hspace -0.2
                                                        #:general-align Y -2 #:normal-text #:larger "”"
                                                        )
                                                    )
                                                )
                                            _ \marcato
                                            [
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                \hide NoteHead
                                                \override Accidental.stencil = ##f
                                                \override NoteColumn.glissando-skip = ##t
                                                \override NoteHead.no-ledgers = ##t
                                                \revert Accidental.stencil
                                                \revert NoteColumn.glissando-skip
                                                \revert NoteHead.no-ledgers
                                                \undo \hide NoteHead
                                                g16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                b
                                            >16
                                            ^ \half-down-bow
                                            _ \marcato
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                \hide NoteHead
                                                \override Accidental.stencil = ##f
                                                \override NoteColumn.glissando-skip = ##t
                                                \override NoteHead.no-ledgers = ##t
                                                \revert Accidental.stencil
                                                \revert NoteColumn.glissando-skip
                                                \revert NoteHead.no-ledgers
                                                \undo \hide NoteHead
                                                a16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                a
                                            >16
                                            ^ \half-down-bow
                                            _ \marcato
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                \hide NoteHead
                                                \override Accidental.stencil = ##f
                                                \override NoteColumn.glissando-skip = ##t
                                                \override NoteHead.no-ledgers = ##t
                                                \revert Accidental.stencil
                                                \revert NoteColumn.glissando-skip
                                                \revert NoteHead.no-ledgers
                                                \undo \hide NoteHead
                                                g16
                                            }
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.X-offset = 0
                                            \once \override Staff.Accidental.stencil = ##f
                                            \once \override Voice.Glissando.thickness = #8.25
                                            \once \override NoteHead.duration-log = 2
                                            \afterGrace
                                            <
                                                \tweak style #'la
                                                c'
                                            >8.
                                            ^ \half-down-bow
                                            _ \marcato
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                \hide NoteHead
                                                \override Accidental.stencil = ##f
                                                \override NoteColumn.glissando-skip = ##t
                                                \override NoteHead.no-ledgers = ##t
                                                \revert Accidental.stencil
                                                \revert NoteColumn.glissando-skip
                                                \revert NoteHead.no-ledgers
                                                \undo \hide NoteHead
                                                b16
                                            }
                                        }
                                        \once \override Dots.staff-position = #2
                                        \once \override NoteHead.X-offset = 0
                                        \once \override Staff.Accidental.stencil = ##f
                                        \once \override Voice.Glissando.thickness = #8.25
                                        \once \override NoteHead.duration-log = 2
                                        \afterGrace
                                        <
                                            \tweak style #'la
                                            b
                                        >8
                                        ^ \half-down-bow
                                        _ \marcato
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            \hide NoteHead
                                            \override Accidental.stencil = ##f
                                            \override NoteColumn.glissando-skip = ##t
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Accidental.stencil
                                            \revert NoteColumn.glissando-skip
                                            \revert NoteHead.no-ledgers
                                            \undo \hide NoteHead
                                            a16
                                        }
                                        \once \override Dots.staff-position = #2
                                        \once \override NoteHead.X-offset = 0
                                        \once \override Staff.Accidental.stencil = ##f
                                        \once \override Voice.Glissando.thickness = #8.25
                                        \once \override NoteHead.duration-log = 2
                                        \afterGrace
                                        <
                                            \tweak style #'la
                                            c'
                                        >8
                                        ^ \half-down-bow
                                        _ \marcato
                                        ]
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                            \hide NoteHead
                                            \override Accidental.stencil = ##f
                                            \override NoteColumn.glissando-skip = ##t
                                            \override NoteHead.no-ledgers = ##t
                                            \revert Accidental.stencil
                                            \revert NoteColumn.glissando-skip
                                            \revert NoteHead.no-ledgers
                                            \undo \hide NoteHead
                                            b16
                                        }
                                        \change Staff = "cello 2 staff"
                                    }
                                    \times 2/3
                                    {
                                        \staff-line-count 1
                                        \once \override DynamicLineSpanner.staff-padding = #12
                                        \override Staff.Clef.stencil = ##f
                                        \clef "percussion"
                                        \tweak style #'cross
                                        c'16
                                        ^ #(make-dynamic-script
                                            (markup
                                                #:whiteout
                                                #:line (
                                                    #:general-align Y -2 #:normal-text #:larger "“"
                                                    #:hspace -0.1
                                                    #:dynamic "mp"
                                                    #:hspace -0.25
                                                    #:general-align Y -2 #:normal-text #:larger "”"
                                                    )
                                                )
                                            )
                                        [
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #4.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \column { \line { Tap tailpiece } \line { with fingertips } } } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {
                                            \tweak style #'cross
                                            c'8
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            \tweak style #'cross
                                            c'16.
                                            ~
                                        }
                                        \tweak style #'cross
                                        c'16
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \tweak style #'cross
                                        c'8
                                        \tweak style #'cross
                                        c'4
                                    }
                                    \times 2/3
                                    {
                                        \tweak style #'cross
                                        c'8
                                        \tweak style #'cross
                                        c'4
                                    }
                                    \times 4/6
                                    {
                                        \tweak style #'cross
                                        c'8
                                        [
                                        \tweak style #'cross
                                        c'8
                                        \tweak style #'cross
                                        c'16
                                        \tweak style #'cross
                                        c'16
                                        \tweak style #'cross
                                        c'8.
                                        \tweak style #'cross
                                        c'8.
                                        ]
                                    }
                                    r4
                                    \times 2/3
                                    {
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {
                                            \tweak style #'cross
                                            c'8
                                            [
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            \tweak style #'cross
                                            c'16.
                                            ~
                                        }
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        \tweak style #'cross
                                        c'16
                                        \tweak style #'cross
                                        c'16
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \times 2/3
                                        {
                                            r4
                                            \tweak style #'cross
                                            c'8
                                            ~
                                        }
                                        \tweak style #'cross
                                        c'16
                                        r8
                                        \stopTextSpan
                                    }
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
                \tag #'group3
                {
                    \context GrandStaff = "sub group 2"
                    <<
                        \tag #'voice3
                        {
                            \context disappearingStaff = "guitar 1 staff"
                            {
                                \context Voice = "guitar 1 voice"
                                {
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \override Staff.Clef.stencil = ##f
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Theorbo }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { thb. }
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "p"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    \>
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    \clef "percussion"
                                    c'4.
                                    ~
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    c'32
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.transparent = ##t
                                    r4
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "ppp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.transparent = ##t
                                    r16.
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.transparent = ##t
                                    \override Staff.TupletBracket.direction = #UP
                                    r8.
                                    \times 4/6
                                    {
                                        \once \override Dots.staff-position = #2
                                        \afterGrace
                                        c'8
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "( Bridge, with fingertip )" } \hspace #0.5 }
                                        \startTextSpanOne
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                        \once \override Dots.staff-position = #2
                                        \afterGrace
                                        c'4
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                        \once \override Dots.staff-position = #2
                                        \afterGrace
                                        c'8
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                        \once \override Dots.staff-position = #2
                                        \afterGrace
                                        c'4
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        \once \override Dots.staff-position = #2
                                        \afterGrace
                                        c'8
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                        \once \override Dots.staff-position = #2
                                        \afterGrace
                                        c'4
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        \once \override Dots.staff-position = #2
                                        \afterGrace
                                        c'8
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                        }
                                        \once \override Dots.staff-position = #2
                                        \afterGrace
                                        c'4
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        {
                                            \once \override Accidental.stencil = ##f
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \once \override NoteHead.transparent = ##t
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                              %! abjad.glissando(6)
                                            \revert Accidental.stencil
                                              %! abjad.glissando(6)
                                            \revert NoteColumn.glissando-skip
                                              %! abjad.glissando(6)
                                            \revert NoteHead.no-ledgers
                                              %! abjad.glissando(6)
                                            \undo \hide NoteHead
                                            c'16
                                            \stopTextSpanOne
                                        }
                                    }
                                    r8.
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \override Staff.Rest.transparent = ##t
                                    \override Staff.Dots.transparent = ##t
                                    r2
                                    \revert Staff.TupletBracket.direction
                                    \stopStaff \startStaff
                                    \revert Staff.Rest.transparent
                                    \revert Staff.Dots.transparent
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.transparent = ##t
                                    \override Staff.Stem.direction = #DOWN
                                    \override Staff.Flag.stencil = ##f
                                    \override Staff.TupletBracket.stencil = ##f
                                    \override Staff.TupletNumber.stencil = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \override Staff.Rest.transparent = ##t
                                    \override Staff.Dots.transparent = ##t
                                    r16..
                                    \once \override Dots.staff-position = #2
                                    \override Voice.Flag.stencil = ##f
                                    \override Voice.Stem.direction = #DOWN
                                    \override Voice.Stem.Y-extent = ##f
                                    \override Voice.Stem.X-extent = ##f
                                    \override Voice.Stem.details.lengths = #'(18)
                                    \stopStaff \startStaff
                                    \revert Staff.Rest.transparent
                                    \revert Staff.Dots.transparent
                                    c'64
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 0.5
                                    - \tweak padding #4.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \column { \line { "On the bridge" } \line { "with flat of nail" } } } \hspace #0.5 }
                                    \startTextSpanOne
                                    ~
                                    \once \override Dots.staff-position = #2
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    c'8
                                    ~
                                    \once \override Dots.staff-position = #2
                                    c'16
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \afterGrace
                                    c'64
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override Dots.staff-position = #2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override RepeatTie.transparent = ##t
                                        \once \override Beam.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Tie.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override Stem.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                        \stopTextSpanOne
                                    }
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \override Staff.Rest.transparent = ##t
                                    \override Staff.Dots.transparent = ##t
                                    r32.
                                    \once \override Dots.transparent = ##t
                                    \once \override Rest.transparent = ##t
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    r16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        \once \override Dots.transparent = ##t
                                        \once \override Rest.transparent = ##t
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        r16
                                        \once \override Dots.staff-position = #2
                                        \stopStaff \startStaff
                                        \revert Staff.Rest.transparent
                                        \revert Staff.Dots.transparent
                                        c'8
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 0.5
                                        - \tweak padding #4.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { \column { \line { "On the bridge" } \line { "with flat of nail" } } } \hspace #0.5 }
                                        \startTextSpanOne
                                        ~
                                    }
                                    \once \override Dots.staff-position = #2
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    c'16.
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override Dots.staff-position = #2
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override RepeatTie.transparent = ##t
                                        \once \override Beam.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Tie.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override Stem.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        c'16
                                        \stopTextSpanOne
                                        \revert Flag.stencil
                                        \revert Staff.TupletBracket.stencil
                                        \revert Staff.TupletNumber.stencil
                                        \revert Staff.Stem.direction
                                    }
                                    \revert Voice.Flag.stencil
                                    \revert Voice.Stem.direction
                                    \revert Voice.Stem.Y-extent
                                    \revert Voice.Stem.X-extent
                                    \revert Voice.Stem.details.lengths
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "guitar 2 staff"
                            {
                                \context Voice = "guitar 2 voice"
                                {
                                    <<
                                        \context Voice = "guitar 2 voice right hand"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 8/7
                                            {
                                                \clef "bass"
                                                \voiceOne
                                                <df af bf>16..
                                                [
                                                - \tweak bound-details.left.Y #11
                                                - \tweak bound-details.right.Y #25
                                                - \tweak font-size 1
                                                - \tweak padding #12
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \upward-diagonal-draw \hspace #0.5 }
                                                - \tweak bound-details.right.text \normale-draw
                                                - \tweak bound-details.right.padding -4.5
                                                \startTextSpanThree
                                                - \tweak bound-details.left.Y #4.5
                                                - \tweak bound-details.right.Y #18.5
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 4
                                                - \tweak padding #12
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \upright { "ST" } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \upright { "OB" }
                                                - \tweak bound-details.right.padding -3.5
                                                \startTextSpanOne
                                                - \tweak bound-details.left.Y #7.5
                                                - \tweak bound-details.right.Y #21.5
                                                - \tweak font-name "Bodoni72 Book Italic" 
                                                - \tweak font-size 2
                                                - \tweak padding #12
                                                - \abjad-solid-line-with-arrow
                                                - \tweak bound-details.left.text \markup \concat { \upright { "Flat of nail" } \hspace #0.5 }
                                                - \tweak bound-details.right.text \markup \upright { "Fingertip" }
                                                - \tweak bound-details.right.padding -3.5
                                                \startTextSpanTwo
                                                <c g b>64
                                                <g a bf,>16
                                                <d f! fs>32.
                                                <c ef b,>16..
                                                <df bf,>32
                                                <c ef e>16
                                                ]
                                                ~
                                            }
                                            \times 4/6
                                            {
                                                <c ef e>8
                                                [
                                                \set stemLeftBeamCount = 2
                                                \set stemRightBeamCount = 1
                                                <f g>16
                                                <fs, a, bf,>8.
                                                ]
                                                ~
                                            }
                                            <fs, a, bf,>16..
                                            [
                                            <af, b,>64
                                            ~
                                            <af, b,>8
                                            ]
                                            ~
                                            <af, b,>16
                                            [
                                            ~
                                            \set stemLeftBeamCount = 4
                                            \set stemRightBeamCount = 1
                                            <af, b,>64
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/6
                                            {
                                                \set stemLeftBeamCount = 1
                                                \set stemRightBeamCount = 2
                                                <fs, a,>16
                                                \stopTextSpanOne
                                                \stopTextSpanThree
                                                \stopTextSpanTwo
                                                \change Staff = "guitar 1 staff"
                                                \once \override Dots.staff-position = #2
                                                \set stemLeftBeamCount = 3
                                                \set stemRightBeamCount = 1
                                                c'32
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                ~
                                            }
                                            \once \override Dots.staff-position = #2
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            c'16
                                            ]
                                            ~
                                            \once \override Dots.staff-position = #2
                                            c'4
                                            ~
                                            \once \override Dots.staff-position = #2
                                            \afterGrace
                                            c'8.
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override NoteHead.transparent = ##t
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                c'16
                                            }
                                            \change Staff = "guitar 2 staff"
                                        }
                                        \context Voice = "theorbe left hand voice"
                                        {
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 8/7
                                            {
                                                \once \override Voice.DynamicLineSpanner.staff-padding = #15
                                                \override Voice.TupletBracket.stencil = ##f
                                                \override Voice.TupletNumber.stencil = ##f
                                                \override Voice.NoteHead.transparent = ##t
                                                \override Voice.Dots.stencil = ##f
                                                \override Voice.NoteHead.X-extent = #'(0 . 0)
                                                \voiceTwo
                                                <df af bf>16..
                                                - \tweak X-extent #'(0 . 0)
                                                - \tweak Y-extent #'(0 . 0)
                                                - \tweak stencil #ly:text-interface::print
                                                - \tweak text \markup { \hspace #-1 H }
                                                :128
                                                - \accent
                                                _ #(make-dynamic-script
                                                    (markup
                                                        #:whiteout
                                                        #:line (
                                                            #:general-align Y -2 #:normal-text #:larger "“"
                                                            #:hspace -0.4
                                                            #:dynamic "ff"
                                                            #:hspace -0.2
                                                            #:general-align Y -2 #:normal-text #:larger "”"
                                                            )
                                                        )
                                                    )
                                                [
                                                - \tweak circled-tip ##t
                                                \>
                                                <c g b>64
                                                - \tweak X-extent #'(0 . 0)
                                                - \tweak Y-extent #'(0 . 0)
                                                - \tweak stencil #ly:text-interface::print
                                                - \tweak text \markup { \hspace #-1 H }
                                                :128
                                                - \accent
                                                <g a bf,>16
                                                - \tweak X-extent #'(0 . 0)
                                                - \tweak Y-extent #'(0 . 0)
                                                - \tweak stencil #ly:text-interface::print
                                                - \tweak text \markup { \hspace #-1 H }
                                                :32
                                                - \accent
                                                <d f fs>32.
                                                - \tweak X-extent #'(0 . 0)
                                                - \tweak Y-extent #'(0 . 0)
                                                - \tweak stencil #ly:text-interface::print
                                                - \tweak text \markup { \hspace #-1 H }
                                                :128
                                                - \accent
                                                <c ef b,>16..
                                                - \tweak X-extent #'(0 . 0)
                                                - \tweak Y-extent #'(0 . 0)
                                                - \tweak stencil #ly:text-interface::print
                                                - \tweak text \markup { \hspace #-1 H }
                                                :128
                                                - \accent
                                                <df bf,>32
                                                - \tweak X-extent #'(0 . 0)
                                                - \tweak Y-extent #'(0 . 0)
                                                - \tweak stencil #ly:text-interface::print
                                                - \tweak text \markup { \hspace #-1 H }
                                                :64
                                                - \accent
                                                <c ef e>16
                                                - \tweak X-extent #'(0 . 0)
                                                - \tweak Y-extent #'(0 . 0)
                                                - \tweak stencil #ly:text-interface::print
                                                - \tweak text \markup { \hspace #-1 H }
                                                :32
                                                - \accent
                                                ~
                                            }
                                            \times 4/6
                                            {
                                                <c ef e>8
                                                \set stemLeftBeamCount = 2
                                                \set stemRightBeamCount = 1
                                                <f g>16
                                                - \tweak X-extent #'(0 . 0)
                                                - \tweak Y-extent #'(0 . 0)
                                                - \tweak stencil #ly:text-interface::print
                                                - \tweak text \markup { \hspace #-1 H }
                                                :32
                                                - \accent
                                                <fs, a, bf,>8.
                                                - \tweak X-extent #'(0 . 0)
                                                - \tweak Y-extent #'(0 . 0)
                                                - \tweak stencil #ly:text-interface::print
                                                - \tweak text \markup { \hspace #-1 H }
                                                :32
                                                - \accent
                                                ~
                                            }
                                            <fs, a, bf,>16..
                                            <af, b,>8..
                                            - \tweak X-extent #'(0 . 0)
                                            - \tweak Y-extent #'(0 . 0)
                                            - \tweak stencil #ly:text-interface::print
                                            - \tweak text \markup { \hspace #-1 H }
                                            :64
                                            - \accent
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/6
                                            {
                                                \set stemLeftBeamCount = 1
                                                \set stemRightBeamCount = 2
                                                <fs, a,>16
                                                - \tweak X-extent #'(0 . 0)
                                                - \tweak Y-extent #'(0 . 0)
                                                - \tweak stencil #ly:text-interface::print
                                                - \tweak text \markup { \hspace #-1 H }
                                                :32
                                                - \accent
                                                ]
                                                \override Dots.staff-position = #2
                                                \override Staff.Clef.stencil = #ly:text-interface::print
                                                \override Staff.Clef.text = \string-clef
                                                \staff-line-count 4
                                                \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                                                \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                                \override Staff.Accidental.stencil = ##f
                                                \override Staff.NoteHead.no-ledgers = ##t
                                                \override Voice.Flag.stencil = ##f
                                                \override Voice.Stem.direction = #UP
                                                \override Voice.Stem.Y-extent = ##f
                                                \override Voice.Stem.X-extent = ##f
                                                \override Voice.Stem.details.lengths = #'(24)
                                                \revert Voice.NoteHead.transparent
                                                \revert Voice.Dots.stencil
                                                \revert Voice.NoteHead.X-extent
                                                \revert Voice.TupletBracket.stencil
                                                \revert Voice.TupletNumber.stencil
                                                \set Staff.forceClef = ##t
                                                \clef "treble"
                                                c'32
                                                _ #(make-dynamic-script
                                                    (markup
                                                        #:whiteout
                                                        #:line (
                                                            #:general-align Y -2 #:normal-text #:larger "“"
                                                            #:hspace -0.1
                                                            #:dynamic "ppp"
                                                            #:hspace -0.25
                                                            #:general-align Y -2 #:normal-text #:larger "”"
                                                            )
                                                        )
                                                    )
                                                  %! abjad.glissando(7)
                                                - \abjad-zero-padding-glissando
                                                  %! abjad.glissando(7)
                                                \glissando
                                                - \tweak font-name "Bodoni72 Book" 
                                                - \tweak font-size 4
                                                - \tweak padding #7
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { \upright { "XIII-XIV" } \hspace #0.5 }
                                                \startTextSpan
                                                ~
                                                \set Staff.forceClef = ##f
                                            }
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            c'16
                                            ~
                                            c'4
                                            ~
                                            \afterGrace
                                            c'8.
                                            {
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \override Staff.TupletBracket.direction = #DOWN
                                                \revert Dots.staff-position
                                                \once \override NoteHead.transparent = ##t
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                g16
                                                \stopTextSpan
                                            }
                                            \revert Voice.Flag.stencil
                                            \revert Voice.Stem.direction
                                            \revert Voice.Stem.Y-extent
                                            \revert Voice.Stem.X-extent
                                            \revert Voice.Stem.details.lengths
                                        }
                                    >>
                                    \oneVoice
                                    \times 2/3
                                    {
                                        r4
                                        \override Dots.staff-position = #2
                                        <c' d'>2
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book" 
                                        - \tweak font-size 4
                                        - \tweak padding #7
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "XII-XIII" } \hspace #0.5 }
                                        \startTextSpan
                                        ~
                                        \revert Staff.TupletBracket.direction
                                    }
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    <c' d'>16
                                    ~
                                    <c' d'>2.
                                    ~
                                    \afterGrace
                                    <c' d'>16.
                                    [
                                    {
                                        \once \override RepeatTie.transparent = ##t
                                        \once \override Beam.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Tie.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override Stem.stencil = ##f
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \revert Dots.staff-position
                                        \once \override NoteHead.transparent = ##t
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        <g e'>16
                                        \stopTextSpan
                                    }
                                    r32
                                    r8
                                    ]
                                    r4
                                    r16.
                                    [
                                    \revert Staff.Clef.stencil
                                    \revert Staff.StaffSymbol.line-positions
                                    \staff-line-count 5
                                    \revert Staff.BarLine.bar-extent
                                    \revert Staff.Accidental.stencil
                                    \revert Staff.NoteHead.no-ledgers
                                    \set Staff.forceClef = ##t
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic
                                        c'
                                        \tweak style #'harmonic
                                        d'
                                        \tweak style #'harmonic
                                        ef
                                    >32
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.4
                                                #:dynamic "fff"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #6
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Finger pads" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanOne
                                    ~
                                    \set Staff.forceClef = ##f
                                    <
                                        \tweak style #'harmonic
                                        c'
                                        \tweak style #'harmonic
                                        d'
                                        \tweak style #'harmonic
                                        ef
                                    >8
                                    ]
                                    ~
                                    <
                                        \tweak style #'harmonic
                                        c'
                                        \tweak style #'harmonic
                                        d'
                                        \tweak style #'harmonic
                                        ef
                                    >16..
                                    \stopTextSpanOne
                                    [
                                    \override Staff.Stem.direction = #DOWN
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic
                                        b''
                                    >64
                                    ^ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "mp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    ~
                                    <
                                        \tweak style #'harmonic
                                        b''
                                    >8
                                    ]
                                    ~
                                    <
                                        \tweak style #'harmonic
                                        b''
                                    >16
                                    [
                                    ~
                                    <
                                        \tweak style #'harmonic
                                        b''
                                    >64
                                    \clef "bass"
                                    <
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak Accidental.parenthesized ##t
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        \tweak style #'harmonic
                                        df
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak Accidental.parenthesized ##t
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        \tweak style #'harmonic
                                        ef
                                        \tweak style #'harmonic
                                        bf,
                                    >32.
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.4
                                                #:dynamic "ff"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #3.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "Finger pads" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanOne
                                    ~
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    <
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak Accidental.parenthesized ##t
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        \tweak style #'harmonic
                                        df
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak Accidental.parenthesized ##t
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        \tweak style #'harmonic
                                        ef
                                        \tweak style #'harmonic
                                        bf,
                                    >16
                                    ~
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        <
                                            \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                            \tweak Accidental.font-size #-2.5
                                            \tweak Accidental.parenthesized ##t
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-2.5
                                            \tweak style #'harmonic
                                            df
                                            \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                            \tweak Accidental.font-size #-2.5
                                            \tweak Accidental.parenthesized ##t
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-2.5
                                            \tweak style #'harmonic
                                            ef
                                            \tweak style #'harmonic
                                            bf,
                                        >16
                                        \stopTextSpanOne
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic
                                            c''
                                        >8
                                        ^ #(make-dynamic-script
                                            (markup
                                                #:whiteout
                                                #:line (
                                                    #:general-align Y -2 #:normal-text #:larger "“"
                                                    #:hspace -0.1
                                                    #:dynamic "mf"
                                                    #:hspace -0.2
                                                    #:general-align Y -2 #:normal-text #:larger "”"
                                                    )
                                                )
                                            )
                                        ~
                                    }
                                    <
                                        \tweak style #'harmonic
                                        c''
                                    >16.
                                    ]
                                    \revert Staff.Stem.direction
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/4
                                      %! +SCORE
                                    \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
