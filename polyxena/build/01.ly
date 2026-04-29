    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (1 30 33 26.5)))
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #1 \raise #14 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 48" } } }
              %! +SCORE
            \noBreak
            \once \override TimeSignature.stencil = #(three-seven-time-signature)
            \set Score.proportionalNotationDuration = #(ly:make-moment 2/105)
            \time 3/8
            s1 * 3/8
              %! +SCORE
            \noBreak
            \set Score.proportionalNotationDuration = #(ly:make-moment 1/30)
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (8 38 28)))
            \once \override TimeSignature.stencil = #(three-seven-time-signature)
            \set Score.proportionalNotationDuration = #(ly:make-moment 2/105)
            \time 3/8
            s1 * 3/8
              %! +SCORE
            - \tweak padding #23
              %! +SCORE
            - \tweak transparent ##t
              %! +SCORE
            ^ \markup { S }
              %! +SCORE
            \noBreak
            \set Score.proportionalNotationDuration = #(ly:make-moment 1/30)
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
            \once \override TimeSignature.stencil = #(three-seven-time-signature)
            \set Score.proportionalNotationDuration = #(ly:make-moment 2/105)
            \time 3/8
            s1 * 3/8
              %! +SCORE
            \noBreak
            \set Score.proportionalNotationDuration = #(ly:make-moment 1/30)
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'14
            - \tweak padding -3
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
                                      %! +SCORE
                                    \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.Clef.stencil = ##f
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Viola da Gamba }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { viol. }
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
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
                                                \with
                                                {
                                                    \remove Time_signature_engraver
                                                    \remove Staff_symbol_engraver
                                                    \override Stem.direction = #up
                                                    \override Stem.length = 5
                                                    \override TupletBracket.bracket-visibility = ##t
                                                    \override TupletBracket.direction = #up
                                                    \override TupletBracket.minimum-length = 4
                                                    \override TupletBracket.padding = 1.25
                                                    \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                                    \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                                    \override TupletNumber.font-size = 0
                                                    \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                                    tupletFullLength = ##t
                                                }
                                                {
                                                    c'4.
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    \times 1/1
                                    {
                                        \once \override Staff.Clef.X-extent = ##f
                                        \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                                        \override Dots.staff-position = #2
                                        \override Staff.Clef.stencil = #ly:text-interface::print
                                        \override Staff.Clef.text = \seven-string-clef
                                        \staff-line-count 7
                                        \override Staff.Accidental.stencil = ##f
                                        \override Staff.NoteHead.no-ledgers = ##t
                                        \set Staff.forceClef = ##t
                                        \once \override Beam.grow-direction = #left
                                        \clef "percussion"
                                        g'32 * 5/4
                                        \pp
                                        ^ \punta-to-talon
                                        [
                                        (
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #8.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "xp." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanOne
                                        \set Staff.forceClef = ##f
                                        e'32 * 43/32
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'32 * 51/32
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b'32 * 65/32
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'32 * 85/32
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        \afterGrace
                                        e'32 * 25/8
                                        ]
                                        - \abjad-zero-padding-glissando
                                        \glissando
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
                                            \once \override NoteHead.transparent = ##t
                                            b'16
                                            )
                                            \stopTextSpanOne
                                        }
                                    }
                                    \revert TupletNumber.text
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
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/8
                                      %! +SCORE
                                    \stopStaff \startStaff
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
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                    \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/8
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
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \clef "bass"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <
                                            \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                            \tweak Accidental.font-size #-2.5
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-2.5
                                            \tweak style #'harmonic
                                            ef
                                            \tweak style #'harmonic
                                            a
                                        >16
                                        \mp
                                        [
                                        (
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "t." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanTwo
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #8.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "scr." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 0.5
                                        \startTextSpanOne
                                        - \tweak font-size 2
                                        - \tweak padding #11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "IV" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanThree
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        <
                                            \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                            \tweak Accidental.font-size #-2.5
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-2.5
                                            \tweak style #'harmonic
                                            d
                                            \tweak style #'harmonic
                                            a
                                        >16
                                        <
                                            \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                            \tweak Accidental.font-size #-2.5
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-2.5
                                            \tweak style #'harmonic
                                            ef
                                            \tweak style #'harmonic
                                            a
                                        >16
                                        )
                                        <
                                            \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                            \tweak Accidental.font-size #-2.5
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-2.5
                                            \tweak style #'harmonic
                                            d
                                            \tweak style #'harmonic
                                            a
                                        >16
                                        \stopTextSpanOne
                                        (
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #8.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "norm." }
                                        \startTextSpanOne
                                        <
                                            \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                            \tweak Accidental.font-size #-2.5
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-2.5
                                            \tweak style #'harmonic
                                            ef
                                            \tweak style #'harmonic
                                            a
                                        >16
                                        <
                                            \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                            \tweak Accidental.font-size #-2.5
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-2.5
                                            \tweak style #'harmonic
                                            d
                                            \tweak style #'harmonic
                                            a
                                        >16
                                        \revert Staff.Stem.stemlet-length
                                        <
                                            \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                            \tweak Accidental.font-size #-2.5
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-2.5
                                            \tweak style #'harmonic
                                            ef
                                            \tweak style #'harmonic
                                            a
                                        >16
                                        \!
                                        )
                                        \stopTextSpanOne
                                        \stopTextSpanThree
                                        \stopTextSpanTwo
                                        ]
                                    }
                                    r4
                                    <<
                                        \context Voice = "cello 2 voice  "
                                        {
                                            <<
                                                \context Voice = "cello 2 voice  "
                                                {
                                                    <<
                                                        \context Voice = "cello 2 voice  "
                                                        {
                                                            <<
                                                                \context Voice = "cello 2 voice "
                                                                {
                                                                    \voiceOne
                                                                    \voiceOne
                                                                    \voiceOne
                                                                    \voiceTwo
                                                                    s1 * 3/8
                                                                }
                                                                \context Voice = "cello 2 voice gliss 1 sub 1"
                                                                {
                                                                    \override Dots.staff-position = #2
                                                                    \big-half-harmonic
                                                                    \voiceOne
                                                                    f'8
                                                                    - \accent
                                                                    [
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    - \tweak font-name "Bodoni72 Book Italic" 
                                                                    - \tweak font-size 2
                                                                    - \tweak padding #14
                                                                    - \abjad-dashed-line-with-hook
                                                                    - \tweak bound-details.left.text \markup \concat { { "( LH finger percussion on accents )" } \hspace #0.5 }
                                                                    \startTextSpanOne
                                                                    \once \override Accidental.stencil = ##f
                                                                    \override NoteHead.X-extent = #'(0 . 0)
                                                                    \override NoteHead.transparent = ##t
                                                                    \override NoteHead.no-ledgers = ##t
                                                                    a'8
                                                                    - \accent
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    \once \override Accidental.stencil = ##f
                                                                    \afterGrace
                                                                    d'8
                                                                    - \accent
                                                                    ]
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    {
                                                                        \once \override Accidental.stencil = ##f
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
                                                                        f'16
                                                                        \stopTextSpanOne
                                                                    }
                                                                    \revert NoteHead.X-extent
                                                                    \revert NoteHead.transparent
                                                                    \revert NoteHead.no-ledgers
                                                                }
                                                            >>
                                                            \oneVoice
                                                        }
                                                        \context Voice = "cello 2 voice gliss 2 sub 1"
                                                        {
                                                            \override Dots.staff-position = #2
                                                            \big-half-harmonic
                                                            \once \override RepeatTie.transparent = ##t
                                                            \once \override Beam.stencil = ##f
                                                            \once \override Flag.stencil = ##f
                                                            \once \override Dots.stencil = ##f
                                                            \once \override Tie.stencil = ##f
                                                            \once \override NoteHead.duration-log = 2
                                                            \once \override Stem.stencil = ##f
                                                            \voiceTwo
                                                            cf'32.
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override RepeatTie.transparent = ##t
                                                            \once \override Beam.stencil = ##f
                                                            \once \override Flag.stencil = ##f
                                                            \once \override Dots.stencil = ##f
                                                            \once \override Tie.stencil = ##f
                                                            \once \override NoteHead.duration-log = 2
                                                            \once \override Stem.stencil = ##f
                                                            \override NoteHead.X-extent = #'(0 . 0)
                                                            \override NoteHead.transparent = ##t
                                                            \override NoteHead.no-ledgers = ##t
                                                            d'32.
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override RepeatTie.transparent = ##t
                                                            \once \override Beam.stencil = ##f
                                                            \once \override Flag.stencil = ##f
                                                            \once \override Dots.stencil = ##f
                                                            \once \override Tie.stencil = ##f
                                                            \once \override NoteHead.duration-log = 2
                                                            \once \override Stem.stencil = ##f
                                                            b32.
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override RepeatTie.transparent = ##t
                                                            \once \override Beam.stencil = ##f
                                                            \once \override Flag.stencil = ##f
                                                            \once \override Dots.stencil = ##f
                                                            \once \override Tie.stencil = ##f
                                                            \once \override NoteHead.duration-log = 2
                                                            \once \override Stem.stencil = ##f
                                                            d'32.
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override RepeatTie.transparent = ##t
                                                            \once \override Beam.stencil = ##f
                                                            \once \override Flag.stencil = ##f
                                                            \once \override Dots.stencil = ##f
                                                            \once \override Tie.stencil = ##f
                                                            \once \override NoteHead.duration-log = 2
                                                            \once \override Stem.stencil = ##f
                                                            b32.
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override RepeatTie.transparent = ##t
                                                            \once \override Beam.stencil = ##f
                                                            \once \override Flag.stencil = ##f
                                                            \once \override Dots.stencil = ##f
                                                            \once \override Tie.stencil = ##f
                                                            \once \override NoteHead.duration-log = 2
                                                            \once \override Stem.stencil = ##f
                                                            d'32.
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override RepeatTie.transparent = ##t
                                                            \once \override Beam.stencil = ##f
                                                            \once \override Flag.stencil = ##f
                                                            \once \override Dots.stencil = ##f
                                                            \once \override Tie.stencil = ##f
                                                            \once \override NoteHead.duration-log = 2
                                                            \once \override Stem.stencil = ##f
                                                            b32.
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override RepeatTie.transparent = ##t
                                                            \once \override Beam.stencil = ##f
                                                            \once \override Flag.stencil = ##f
                                                            \once \override Dots.stencil = ##f
                                                            \once \override Tie.stencil = ##f
                                                            \once \override NoteHead.duration-log = 2
                                                            \once \override Stem.stencil = ##f
                                                            \afterGrace
                                                            d'32.
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            {
                                                                \once \override Accidental.stencil = ##f
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
                                                                \revert Dots.staff-position
                                                                \once \override NoteHead.transparent = ##t
                                                                b16
                                                            }
                                                            \revert NoteHead.X-extent
                                                            \revert NoteHead.transparent
                                                            \revert NoteHead.no-ledgers
                                                        }
                                                    >>
                                                    \oneVoice
                                                }
                                                \context Voice = "cello 2 voice gliss 3 sub 1"
                                                {
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \tweak text #tuplet-number::calc-fraction-text
                                                    \times 6/7
                                                    {
                                                        \override Dots.staff-position = #2
                                                        \big-half-harmonic
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        \voiceTwo
                                                        af16
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        \once \override Accidental.stencil = ##f
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        \override NoteHead.X-extent = #'(0 . 0)
                                                        \override NoteHead.transparent = ##t
                                                        \override NoteHead.no-ledgers = ##t
                                                        e16
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        \once \override Accidental.stencil = ##f
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        g16
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        \once \override Accidental.stencil = ##f
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        e16
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        \once \override Accidental.stencil = ##f
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        g16
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        \once \override Accidental.stencil = ##f
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        e16
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        \once \override Accidental.stencil = ##f
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        \afterGrace
                                                        g16
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        {
                                                            \once \override Accidental.stencil = ##f
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
                                                            \revert Dots.staff-position
                                                            \once \override NoteHead.transparent = ##t
                                                            e16
                                                        }
                                                        \revert NoteHead.X-extent
                                                        \revert NoteHead.transparent
                                                        \revert NoteHead.no-ledgers
                                                    }
                                                }
                                            >>
                                            \oneVoice
                                        }
                                        \context Voice = "cello 2 voice gliss 4 sub 1"
                                        {
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \voiceTwo
                                            ef16.
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \once \override Accidental.stencil = ##f
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \override NoteHead.X-extent = #'(0 . 0)
                                            \override NoteHead.transparent = ##t
                                            \override NoteHead.no-ledgers = ##t
                                            c16.
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \once \override Accidental.stencil = ##f
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            e16.
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \once \override Accidental.stencil = ##f
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \afterGrace
                                            c16.
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            {
                                                \once \override Accidental.stencil = ##f
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
                                                \revert Dots.staff-position
                                                \once \override NoteHead.transparent = ##t
                                                e16
                                            }
                                            \revert NoteHead.X-extent
                                            \revert NoteHead.transparent
                                            \revert NoteHead.no-ledgers
                                        }
                                    >>
                                    \oneVoice
                                    <<
                                        \context Voice = "cello 2 voice  "
                                        {
                                            <<
                                                \context Voice = "cello 2 voice  "
                                                {
                                                    <<
                                                        \context Voice = "cello 2 voice  "
                                                        {
                                                            <<
                                                                \context Voice = "cello 2 voice "
                                                                {
                                                                    \voiceOne
                                                                    \voiceOne
                                                                    \voiceOne
                                                                    \voiceTwo
                                                                    s1 * 3/4
                                                                }
                                                                \context Voice = "cello 2 voice gliss 1 sub 2"
                                                                {
                                                                    \override Dots.staff-position = #2
                                                                    \big-half-harmonic
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    \voiceTwo
                                                                    cf'32
                                                                    \p
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    - \tweak font-name "Bodoni72 Book Italic" 
                                                                    - \tweak font-size 2
                                                                    - \tweak padding #17
                                                                    - \abjad-solid-line-with-arrow
                                                                    - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                                                                    \startTextSpanThree
                                                                    - \tweak stencil #constante-hairpin
                                                                    \<
                                                                    \once \override Accidental.stencil = ##f
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    \override NoteHead.X-extent = #'(0 . 0)
                                                                    \override NoteHead.transparent = ##t
                                                                    \override NoteHead.no-ledgers = ##t
                                                                    d'32
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    \once \override Accidental.stencil = ##f
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    b32
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    \once \override Accidental.stencil = ##f
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    d'32
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    \once \override Accidental.stencil = ##f
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    b32
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    \once \override Accidental.stencil = ##f
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    d'32
                                                                    \stopTextSpanThree
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    - \tweak font-name "Bodoni72 Book Italic" 
                                                                    - \tweak font-size 2
                                                                    - \tweak padding #17
                                                                    - \abjad-solid-line-with-arrow
                                                                    - \tweak bound-details.left.text \markup \concat { \upright { "fl." } \hspace #0.5 }
                                                                    \startTextSpanThree
                                                                    \once \override Accidental.stencil = ##f
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    b32
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    \once \override Accidental.stencil = ##f
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    d'32
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    \once \override Accidental.stencil = ##f
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    b16
                                                                    \stopTextSpanThree
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    - \tweak font-name "Bodoni72 Book Italic" 
                                                                    - \tweak font-size 2
                                                                    - \tweak padding #17
                                                                    - \abjad-solid-line-with-arrow
                                                                    - \tweak bound-details.left.text \markup \concat { \upright { "1/2 scr." } \hspace #0.5 }
                                                                    \startTextSpanThree
                                                                    \once \override Accidental.stencil = ##f
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    cf'16
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    \once \override Accidental.stencil = ##f
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    d'16
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    \once \override Accidental.stencil = ##f
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    b16
                                                                    \stopTextSpanThree
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    - \tweak font-name "Bodoni72 Book Italic" 
                                                                    - \tweak font-size 2
                                                                    - \tweak padding #17
                                                                    - \abjad-solid-line-with-arrow
                                                                    - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                                                                    \startTextSpanThree
                                                                    \once \override Accidental.stencil = ##f
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    d'16
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    \once \override Accidental.stencil = ##f
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    b16
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    \once \override Accidental.stencil = ##f
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    d'16
                                                                    \stopTextSpanThree
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    - \tweak font-name "Bodoni72 Book Italic" 
                                                                    - \tweak font-size 2
                                                                    - \tweak padding #17
                                                                    - \abjad-solid-line-with-arrow
                                                                    - \tweak bound-details.left.text \markup \concat { \upright { "2/3 scr." } \hspace #0.5 }
                                                                    - \tweak bound-details.right.text \markup \upright { "norm." }
                                                                    \startTextSpanThree
                                                                    \once \override Accidental.stencil = ##f
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    \afterGrace
                                                                    b16
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    {
                                                                        \once \override Accidental.stencil = ##f
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
                                                                        \revert Dots.staff-position
                                                                        \once \override NoteHead.transparent = ##t
                                                                        d'16
                                                                        \!
                                                                        \stopTextSpanThree
                                                                    }
                                                                    \revert NoteHead.X-extent
                                                                    \revert NoteHead.transparent
                                                                    \revert NoteHead.no-ledgers
                                                                }
                                                            >>
                                                            \oneVoice
                                                        }
                                                        \context Voice = "cello 2 voice gliss 2 sub 2"
                                                        {
                                                            \once \override TupletBracket.stencil = ##f
                                                            \once \override TupletNumber.stencil = ##f
                                                            \tweak text #tuplet-number::calc-fraction-text
                                                            \times 8/7
                                                            {
                                                                \override Dots.staff-position = #2
                                                                \big-half-harmonic
                                                                \once \override RepeatTie.transparent = ##t
                                                                \once \override Beam.stencil = ##f
                                                                \once \override Flag.stencil = ##f
                                                                \once \override Dots.stencil = ##f
                                                                \once \override Tie.stencil = ##f
                                                                \once \override NoteHead.duration-log = 2
                                                                \once \override Stem.stencil = ##f
                                                                \voiceTwo
                                                                af32
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                                \once \override Accidental.stencil = ##f
                                                                \once \override RepeatTie.transparent = ##t
                                                                \once \override Beam.stencil = ##f
                                                                \once \override Flag.stencil = ##f
                                                                \once \override Dots.stencil = ##f
                                                                \once \override Tie.stencil = ##f
                                                                \once \override NoteHead.duration-log = 2
                                                                \once \override Stem.stencil = ##f
                                                                \override NoteHead.X-extent = #'(0 . 0)
                                                                \override NoteHead.transparent = ##t
                                                                \override NoteHead.no-ledgers = ##t
                                                                e32
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                                \once \override Accidental.stencil = ##f
                                                                \once \override RepeatTie.transparent = ##t
                                                                \once \override Beam.stencil = ##f
                                                                \once \override Flag.stencil = ##f
                                                                \once \override Dots.stencil = ##f
                                                                \once \override Tie.stencil = ##f
                                                                \once \override NoteHead.duration-log = 2
                                                                \once \override Stem.stencil = ##f
                                                                g32
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                                \once \override Accidental.stencil = ##f
                                                                \once \override RepeatTie.transparent = ##t
                                                                \once \override Beam.stencil = ##f
                                                                \once \override Flag.stencil = ##f
                                                                \once \override Dots.stencil = ##f
                                                                \once \override Tie.stencil = ##f
                                                                \once \override NoteHead.duration-log = 2
                                                                \once \override Stem.stencil = ##f
                                                                e32
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                                \once \override Accidental.stencil = ##f
                                                                \once \override RepeatTie.transparent = ##t
                                                                \once \override Beam.stencil = ##f
                                                                \once \override Flag.stencil = ##f
                                                                \once \override Dots.stencil = ##f
                                                                \once \override Tie.stencil = ##f
                                                                \once \override NoteHead.duration-log = 2
                                                                \once \override Stem.stencil = ##f
                                                                g32
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                                \once \override Accidental.stencil = ##f
                                                                \once \override RepeatTie.transparent = ##t
                                                                \once \override Beam.stencil = ##f
                                                                \once \override Flag.stencil = ##f
                                                                \once \override Dots.stencil = ##f
                                                                \once \override Tie.stencil = ##f
                                                                \once \override NoteHead.duration-log = 2
                                                                \once \override Stem.stencil = ##f
                                                                e32
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                                \once \override Accidental.stencil = ##f
                                                                \once \override RepeatTie.transparent = ##t
                                                                \once \override Beam.stencil = ##f
                                                                \once \override Flag.stencil = ##f
                                                                \once \override Dots.stencil = ##f
                                                                \once \override Tie.stencil = ##f
                                                                \once \override NoteHead.duration-log = 2
                                                                \once \override Stem.stencil = ##f
                                                                g32
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                            }
                                                            \once \override TupletBracket.stencil = ##f
                                                            \once \override TupletNumber.stencil = ##f
                                                            \tweak text #tuplet-number::calc-fraction-text
                                                            \times 8/7
                                                            {
                                                                \once \override Accidental.stencil = ##f
                                                                \once \override RepeatTie.transparent = ##t
                                                                \once \override Beam.stencil = ##f
                                                                \once \override Flag.stencil = ##f
                                                                \once \override Dots.stencil = ##f
                                                                \once \override Tie.stencil = ##f
                                                                \once \override NoteHead.duration-log = 2
                                                                \once \override Stem.stencil = ##f
                                                                e16
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                                \once \override Accidental.stencil = ##f
                                                                \once \override RepeatTie.transparent = ##t
                                                                \once \override Beam.stencil = ##f
                                                                \once \override Flag.stencil = ##f
                                                                \once \override Dots.stencil = ##f
                                                                \once \override Tie.stencil = ##f
                                                                \once \override NoteHead.duration-log = 2
                                                                \once \override Stem.stencil = ##f
                                                                af16
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                                \once \override Accidental.stencil = ##f
                                                                \once \override RepeatTie.transparent = ##t
                                                                \once \override Beam.stencil = ##f
                                                                \once \override Flag.stencil = ##f
                                                                \once \override Dots.stencil = ##f
                                                                \once \override Tie.stencil = ##f
                                                                \once \override NoteHead.duration-log = 2
                                                                \once \override Stem.stencil = ##f
                                                                e16
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                                \once \override Accidental.stencil = ##f
                                                                \once \override RepeatTie.transparent = ##t
                                                                \once \override Beam.stencil = ##f
                                                                \once \override Flag.stencil = ##f
                                                                \once \override Dots.stencil = ##f
                                                                \once \override Tie.stencil = ##f
                                                                \once \override NoteHead.duration-log = 2
                                                                \once \override Stem.stencil = ##f
                                                                g16
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                                \once \override Accidental.stencil = ##f
                                                                \once \override RepeatTie.transparent = ##t
                                                                \once \override Beam.stencil = ##f
                                                                \once \override Flag.stencil = ##f
                                                                \once \override Dots.stencil = ##f
                                                                \once \override Tie.stencil = ##f
                                                                \once \override NoteHead.duration-log = 2
                                                                \once \override Stem.stencil = ##f
                                                                e16
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                                \once \override Accidental.stencil = ##f
                                                                \once \override RepeatTie.transparent = ##t
                                                                \once \override Beam.stencil = ##f
                                                                \once \override Flag.stencil = ##f
                                                                \once \override Dots.stencil = ##f
                                                                \once \override Tie.stencil = ##f
                                                                \once \override NoteHead.duration-log = 2
                                                                \once \override Stem.stencil = ##f
                                                                g16
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                                \once \override Accidental.stencil = ##f
                                                                \once \override RepeatTie.transparent = ##t
                                                                \once \override Beam.stencil = ##f
                                                                \once \override Flag.stencil = ##f
                                                                \once \override Dots.stencil = ##f
                                                                \once \override Tie.stencil = ##f
                                                                \once \override NoteHead.duration-log = 2
                                                                \once \override Stem.stencil = ##f
                                                                \afterGrace
                                                                e16
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                                {
                                                                    \once \override Accidental.stencil = ##f
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
                                                                    \revert Dots.staff-position
                                                                    \once \override NoteHead.transparent = ##t
                                                                    g16
                                                                }
                                                                \revert NoteHead.X-extent
                                                                \revert NoteHead.transparent
                                                                \revert NoteHead.no-ledgers
                                                            }
                                                        }
                                                    >>
                                                    \oneVoice
                                                }
                                                \context Voice = "cello 2 voice gliss 3 sub 2"
                                                {
                                                    \override Dots.staff-position = #2
                                                    \big-half-harmonic
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \voiceTwo
                                                    ef16
                                                    - \abjad-zero-padding-glissando
                                                    \glissando
                                                    - \tweak font-name "Bodoni72 Book Italic" 
                                                    - \tweak font-size 2
                                                    - \tweak padding #14.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \upright { "xp." } \hspace #0.5 }
                                                    \startTextSpanTwo
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \override NoteHead.X-extent = #'(0 . 0)
                                                    \override NoteHead.transparent = ##t
                                                    \override NoteHead.no-ledgers = ##t
                                                    c16
                                                    - \abjad-zero-padding-glissando
                                                    \glissando
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    e16
                                                    - \abjad-zero-padding-glissando
                                                    \glissando
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    c16
                                                    \stopTextSpanTwo
                                                    - \abjad-zero-padding-glissando
                                                    \glissando
                                                    - \tweak font-name "Bodoni72 Book Italic" 
                                                    - \tweak font-size 2
                                                    - \tweak padding #14.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \upright { "mst." } \hspace #0.5 }
                                                    \startTextSpanTwo
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    e8
                                                    - \abjad-zero-padding-glissando
                                                    \glissando
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    ef8
                                                    \stopTextSpanTwo
                                                    - \abjad-zero-padding-glissando
                                                    \glissando
                                                    - \tweak font-name "Bodoni72 Book Italic" 
                                                    - \tweak font-size 2
                                                    - \tweak padding #14.5
                                                    - \abjad-solid-line-with-arrow
                                                    - \tweak bound-details.left.text \markup \concat { \upright { "p." } \hspace #0.5 }
                                                    - \tweak bound-details.right.text \markup \upright { "ob." }
                                                    \startTextSpanTwo
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    c8
                                                    - \abjad-zero-padding-glissando
                                                    \glissando
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override RepeatTie.transparent = ##t
                                                    \once \override Beam.stencil = ##f
                                                    \once \override Flag.stencil = ##f
                                                    \once \override Dots.stencil = ##f
                                                    \once \override Tie.stencil = ##f
                                                    \once \override NoteHead.duration-log = 2
                                                    \once \override Stem.stencil = ##f
                                                    \afterGrace
                                                    e8
                                                    - \abjad-zero-padding-glissando
                                                    \glissando
                                                    {
                                                        \once \override Accidental.stencil = ##f
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
                                                        \revert Dots.staff-position
                                                        \once \override NoteHead.transparent = ##t
                                                        c16
                                                        \stopTextSpanTwo
                                                    }
                                                    \revert NoteHead.X-extent
                                                    \revert NoteHead.transparent
                                                    \revert NoteHead.no-ledgers
                                                }
                                            >>
                                            \oneVoice
                                        }
                                        \context Voice = "cello 2 voice gliss 4 sub 2"
                                        {
                                            \once \override TupletBracket.padding = #3
                                            \times 2/3
                                            {
                                                \override Dots.staff-position = #2
                                                \big-half-harmonic
                                                \voiceOne
                                                a,!8
                                                - \accent
                                                [
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak font-name "Bodoni72 Book Italic" 
                                                - \tweak font-size 2
                                                - \tweak padding #12
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { "( LH finger percussion on accents )" } \hspace #0.5 }
                                                \startTextSpanOne
                                                _ (
                                                \once \override Accidental.stencil = ##f
                                                \override NoteHead.X-extent = #'(0 . 0)
                                                \override NoteHead.transparent = ##t
                                                \override NoteHead.no-ledgers = ##t
                                                c8
                                                - \accent
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \once \override Accidental.stencil = ##f
                                                a,8
                                                - \accent
                                                ]
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                            }
                                            \once \override TupletBracket.padding = #2
                                            \times 2/3
                                            {
                                                \once \override Accidental.stencil = ##f
                                                c4
                                                - \accent
                                                )
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                \once \override Accidental.stencil = ##f
                                                a,4
                                                - \accent
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                _ (
                                                \once \override Accidental.stencil = ##f
                                                \afterGrace
                                                c4
                                                - \accent
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                {
                                                    \once \override Accidental.stencil = ##f
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
                                                    a,16
                                                    )
                                                    \stopTextSpanOne
                                                }
                                                \revert NoteHead.X-extent
                                                \revert NoteHead.transparent
                                                \revert NoteHead.no-ledgers
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \seven-string-clef
                                    \staff-line-count 7
                                    \override Staff.Accidental.stencil = ##f
                                    \override Staff.NoteHead.no-ledgers = ##t
                                    \set Staff.forceClef = ##t
                                    \clef "percussion"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d f a c'>8
                                    - \accent
                                    \p
                                    [
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #12
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "ob." } \hspace #0.5 }
                                    \startTextSpanOne
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #14.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak bound-details.left.text \markup {  \fontsize #5 \override #'(font-name . "ekmelos") { \char ##xe614 | \char ##xe0d8 } }
                                    - \tweak padding 0.5
                                    \startTrillSpan
                                    \set Staff.forceClef = ##f
                                    <d f a c'>8
                                    - \accent
                                    \mp
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #12
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "dp." } \hspace #0.5 }
                                    \startTextSpanOne
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #14.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "scr." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    \>
                                    \revert Staff.Stem.stemlet-length
                                    \afterGrace
                                    <d f a c'>8
                                    - \accent
                                    \p
                                    ]
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \!
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                        \stopTrillSpan
                                    }
                                    \once \override TupletBracket.direction = #DOWN
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \staff-line-count 1
                                        \once \override Dots.staff-position = #2
                                        \revert Staff.Clef.stencil
                                        \override Staff.Clef.stencil = ##f
                                        \revert Staff.StaffSymbol.line-positions
                                        \revert Staff.BarLine.bar-extent
                                        \revert Staff.Accidental.stencil
                                        \revert Staff.NoteHead.no-ledgers
                                        \clef "percussion"
                                        \afterGrace
                                        c'4
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
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        - \tweak bound-details.left.Y #-2
                                        - \tweak bound-details.right.Y #6
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #7
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "tailpiece" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "" }
                                        \startTextSpanOne
                                        \>
                                        - \tweak Y-extent ##f
                                        - \tweak bound-details.left.Y #1.5
                                        - \tweak bound-details.left.text \markup {  \fontsize #5 \override #'(font-name . "ekmelos") { \char ##xe614 | \char ##xe0a9 } }
                                        - \tweak bound-details.right.Y #1.5
                                        - \tweak bound-details.right.padding #-0.5
                                        - \tweak padding None
                                        \startTrillSpan
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
                                            \stopTrillSpan
                                        }
                                        \override Staff.Clef.stencil = #ly:text-interface::print
                                        \override Staff.Clef.text = \seven-string-clef
                                        \staff-line-count 7
                                        \override Staff.Accidental.stencil = ##f
                                        \override Staff.NoteHead.no-ledgers = ##t
                                        \set Staff.forceClef = ##t
                                        \clef "percussion"
                                        <d f a c'>16
                                        \mp
                                        \stopTextSpanOne
                                        [
                                        - \tweak bound-details.left.Y #6
                                        - \tweak bound-details.right.Y #0
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #7
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "dp." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "" }
                                        \startTextSpanOne
                                        - \tweak bound-details.left.Y #8.5
                                        - \tweak bound-details.right.Y #4
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #7
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "scr." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 0.75
                                        \startTextSpanTwo
                                        - \tweak Y-extent ##f
                                        - \tweak bound-details.left.Y #6.5
                                        - \tweak bound-details.left.text \markup {  \fontsize #5 \override #'(font-name . "ekmelos") { \char ##xe614 | \char ##xe0d8 } }
                                        - \tweak bound-details.right.Y #6.5
                                        - \tweak bound-details.right.padding #0.5
                                        - \tweak padding None
                                        \startTrillSpan
                                        \set Staff.forceClef = ##f
                                        <a c' e' g'>8
                                        ]
                                        \>
                                    }
                                    \once \override TupletBracket.direction = #DOWN
                                    \times 2/3
                                    {
                                        <f a c' e'>16
                                        \p
                                        \once \override Slur.stencil = #flare-tie
                                        \revert Staff.Clef.stencil
                                        \revert Staff.StaffSymbol.line-positions
                                        \staff-line-count 5
                                        \revert Staff.BarLine.bar-extent
                                        \revert Staff.Accidental.stencil
                                        \revert Staff.NoteHead.no-ledgers
                                        \set Staff.forceClef = ##t
                                        \clef "bass"
                                        \afterGrace
                                        <
                                            \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                            \tweak Accidental.font-size #-2.5
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-2.5
                                            \tweak style #'harmonic
                                            d
                                            \tweak style #'harmonic
                                            a
                                        >4
                                        \stopTextSpanOne
                                        \stopTrillSpan
                                        (
                                        - \tweak bound-details.left.Y #0
                                        - \tweak bound-details.right.Y #2.5
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #7
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "msp." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "t." }
                                        \startTextSpanOne
                                        - \tweak bound-details.left.Y #2.5
                                        - \tweak bound-details.right.Y #3
                                        - \tweak font-size 2
                                        - \tweak padding #7
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "IV" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanThree
                                        - \tweak TrillPitchAccidental.stencil ##f
                                        - \tweak TrillPitchHead.layer 5
                                        - \tweak TrillPitchHead.no-ledgers ##t
                                        - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                        - \tweak TrillPitchHead.whiteout 1
                                        - \tweak TrillPitchHead.whiteout-style #'outline
                                        - \tweak bound-details.right.padding #-5
                                        \startTrillSpan
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            #(define afterGraceFraction (cons 1 16))
                                            <
                                                \parenthesize
                                                \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                                \tweak Accidental.font-size #-2.5
                                                \tweak color #(x11-color 'LightSlateBlue)
                                                \tweak font-size #-2.5
                                                \tweak style #'harmonic
                                                ef
                                                \parenthesize
                                                \tweak style #'harmonic
                                                a
                                            >16
                                        }
                                        \set Staff.forceClef = ##f
                                        <
                                            \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                            \tweak Accidental.font-size #-2.5
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-2.5
                                            \tweak style #'harmonic
                                            d
                                            \tweak style #'harmonic
                                            a
                                        >16
                                        )
                                        \stopTextSpanThree
                                        \stopTrillSpan
                                    }
                                    \afterGrace
                                    <
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        \tweak style #'harmonic
                                        bf,
                                        \tweak style #'harmonic
                                        c
                                    >8
                                    \stopTextSpanTwo
                                    [
                                    - \tweak bound-details.left.Y #3.75
                                    - \tweak bound-details.right.Y #3
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "" }
                                    \startTextSpanTwo
                                    - \tweak font-size 2
                                    - \tweak padding #12
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "V" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanThree
                                    - \tweak TrillPitchAccidental.stencil ##f
                                    - \tweak TrillPitchHead.layer 5
                                    - \tweak TrillPitchHead.no-ledgers ##t
                                    - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                    - \tweak TrillPitchHead.whiteout 1
                                    - \tweak TrillPitchHead.whiteout-style #'outline
                                    - \tweak bound-details.right.padding #0.5
                                    \startTrillSpan
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        #(define afterGraceFraction (cons 1 16))
                                        <
                                            \parenthesize
                                            \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                            \tweak Accidental.font-size #-2.5
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-2.5
                                            \tweak style #'harmonic
                                            af,
                                            \parenthesize
                                            \tweak style #'harmonic
                                            c
                                        >16
                                    }
                                    \afterGrace
                                    <
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        \tweak style #'harmonic
                                        a,
                                        \tweak style #'harmonic
                                        c
                                    >8
                                    \stopTextSpanThree
                                    \stopTextSpanTwo
                                    \stopTrillSpan
                                    - \tweak bound-details.left.Y #3
                                    - \tweak bound-details.right.Y #4.5
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "norm." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "1/2 scr." }
                                    \startTextSpanTwo
                                    - \tweak bound-details.left.Y #5
                                    - \tweak bound-details.right.Y #6.5
                                    - \tweak font-size 2
                                    - \tweak padding #7
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "VI" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanThree
                                    - \tweak TrillPitchAccidental.stencil ##f
                                    - \tweak TrillPitchHead.layer 5
                                    - \tweak TrillPitchHead.no-ledgers ##t
                                    - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                    - \tweak TrillPitchHead.whiteout 1
                                    - \tweak TrillPitchHead.whiteout-style #'outline
                                    - \tweak bound-details.right.padding #0.5
                                    \startTrillSpan
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        #(define afterGraceFraction (cons 1 16))
                                        <
                                            \parenthesize
                                            \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                            \tweak Accidental.font-size #-2.5
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-2.5
                                            \tweak style #'harmonic
                                            ef,
                                            \parenthesize
                                            \tweak style #'harmonic
                                            a,
                                        >16
                                    }
                                    \afterGrace
                                    <
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        c,
                                        \tweak style #'harmonic
                                        d,
                                    >8
                                    \stopTextSpanOne
                                    \stopTextSpanThree
                                    \stopTextSpanTwo
                                    \stopTrillSpan
                                    ]
                                    - \tweak font-size 2
                                    - \tweak padding #14
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright { "VII" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -12
                                    \startTextSpanThree
                                    - \tweak TrillPitchAccidental.stencil ##f
                                    - \tweak TrillPitchHead.layer 5
                                    - \tweak TrillPitchHead.no-ledgers ##t
                                    - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                    - \tweak TrillPitchHead.whiteout 1
                                    - \tweak TrillPitchHead.whiteout-style #'outline
                                    - \tweak bound-details.right.padding #0.5
                                    \startTrillSpan
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        #(define afterGraceFraction (cons 1 16))
                                        <
                                            \parenthesize
                                            \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                            \tweak Accidental.font-size #-2.5
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-2.5
                                            a,,
                                            \parenthesize
                                            \tweak style #'harmonic
                                            d,
                                        >16
                                    }
                                    #(define afterGraceFraction (cons 15 16))
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/4
                                    \stopTextSpanThree
                                    \stopTrillSpan
                                      %! +SCORE
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
                                    \override Dots.staff-position = #2
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \fourteen-string-clef
                                    \staff-line-count 14
                                    \override Staff.Accidental.stencil = ##f
                                    \override Staff.NoteHead.no-ledgers = ##t
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Theorbo }
                                      %! +SCORE
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { thb. }
                                    \set Staff.forceClef = ##t
                                    \set glissandoMap = #'((4 . 1) (3 . 0))
                                    \clef "percussion"
                                    <a' c'' e'' g'' b''>2
                                    _ \tremolo-articulation
                                      %! abjad.glissando(7)
                                    - \tweak bound-details.right.arrow ##t
                                      %! abjad.glissando(7)
                                    - \tweak thickness #2.5
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) { \whiteout \circle { " p - c " } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) { \whiteout \circle { " i - a " } } }
                                    \startTextSpanOne
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #14.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "p." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "xp." }
                                    \startTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #17
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "( rasg. )" } \hspace #0.5 }
                                    \startTextSpanThree
                                    ~
                                    \set Staff.forceClef = ##f
                                    \once \override TupletBracket.stencil = ##f
                                    \once \override TupletNumber.stencil = ##f
                                    \times 8/9
                                    {
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
                                        <a' c'' e'' g'' b''>4
                                        \once \override Dots.staff-position = #2
                                        \once \override RepeatTie.transparent = ##t
                                        \once \override Beam.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override Dots.stencil = ##f
                                        \once \override Tie.stencil = ##f
                                        \once \override NoteHead.duration-log = 2
                                        \once \override Stem.stencil = ##f
                                        \unset glissandoMap
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        <f' a'>32
                                        _ \tremolo-articulation
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                          %! abjad.glissando(7)
                                        - \abjad-zero-padding-glissando
                                          %! abjad.glissando(7)
                                        \glissando
                                        ~
                                    }
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \revert Dots.staff-position
                                    \once \override NoteHead.transparent = ##t
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    <f' a'>4.
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
                                        <f' a'>16
                                        \stopTextSpanThree
                                    }
                                    r4
                                    r8
                                    [
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        <d, f,>128
                                        - \accent
                                        \fff
                                        <d, f,>128
                                        - \accent
                                        <d, f,>128
                                        - \accent
                                        <d, f,>128
                                        - \accent
                                        <d, f,>128
                                        - \accent
                                        <d, f,>128
                                        - \accent
                                        \set stemLeftBeamCount = 5
                                        \set stemRightBeamCount = 1
                                        <d, f,>128
                                        - \accent
                                    }
                                    r16
                                    ]
                                    r4
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \override disappearingStaff.Stem.stemlet-length = 0.75
                                        <d, f, a,>16
                                        :128
                                        - \accent
                                        \pp
                                        [
                                        (
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #12.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) { \whiteout \circle { " i - m " } } } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup { \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) { \whiteout \circle { " p - c " } } }
                                        \startTextSpanOne
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #16.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "p." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "xt." }
                                        \startTextSpanTwo
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #19
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "( rasg. )" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -3
                                        \startTextSpanThree
                                        \<
                                        <d, f, a,>16
                                        :128
                                        - \accent
                                        \mp
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        <d, f, a,>16
                                        :128
                                        - \accent
                                        \pp
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        <d, f, a,>16
                                        :128
                                        - \accent
                                        - \tweak circled-tip ##t
                                        \>
                                        <d, f, a,>16
                                        :128
                                        - \accent
                                        \mp
                                        \>
                                        <d, f, a,>16
                                        :128
                                        - \accent
                                        \pp
                                        \<
                                        \revert disappearingStaff.Stem.stemlet-length
                                        <d, f, a,>16
                                        :128
                                        - \accent
                                        \p
                                        )
                                        \stopTextSpanOne
                                        \stopTextSpanThree
                                        \stopTextSpanTwo
                                        ]
                                    }
                                    \override Dots.staff-position = #2
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \set glissandoMap = #'((4 . 1) (3 . 0))
                                    <a' c'' e'' g'' b''>4
                                    _ \tremolo-articulation
                                      %! abjad.glissando(7)
                                    - \tweak bound-details.right.arrow ##t
                                      %! abjad.glissando(7)
                                    - \tweak thickness #2.5
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak circled-tip ##t
                                    \<
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) { \whiteout \circle { " p - c " } } } \hspace #0.5 }
                                    \startTextSpanOne
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #14.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "xp." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "xt." }
                                    \startTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #17
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "( rasg. )" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -43
                                    \startTextSpanThree
                                    ~
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
                                    \override disappearingStaff.Stem.stemlet-length = 0.75
                                    <a' c'' e'' g'' b''>16.
                                    [
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \set glissandoMap = #'((1 . 2) (0 . 1))
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    <e g>32
                                    _ \tremolo-articulation
                                    \stopTextSpanOne
                                      %! abjad.glissando(7)
                                    - \tweak bound-details.right.arrow ##t
                                      %! abjad.glissando(7)
                                    - \tweak thickness #2.5
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #10.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) { \whiteout \circle { " i - m " } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) { \whiteout \circle { " p - c " } } }
                                    \startTextSpanOne
                                    ~
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
                                    \revert disappearingStaff.Stem.stemlet-length
                                    <e g>8
                                    ]
                                    ~
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \once \override NoteHead.transparent = ##t
                                    <e g>4
                                    \revert Dots.staff-position
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    <d, f, a,>4.
                                    :32
                                    \p
                                    \stopTextSpanOne
                                    \stopTextSpanThree
                                    \stopTextSpanTwo
                                    \unset glissandoMap
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
                                    \times 2/3
                                    {
                                        \override Dots.staff-position = #2
                                        \once \override DynamicLineSpanner.staff-padding = #11
                                        \override Staff.Clef.stencil = #ly:text-interface::print
                                        \override Staff.Clef.text = \string-clef
                                        \staff-line-count 4
                                        \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                                        \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                        \override Staff.Accidental.stencil = ##f
                                        \override Staff.NoteHead.no-ledgers = ##t
                                        \set Staff.forceClef = ##t
                                        \clef "treble"
                                        \tweak style #'harmonic
                                        g''8
                                        ^ \p
                                        [
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #12
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "( touching all strings affected by RH )" } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak stencil #constante-hairpin
                                        ^ \<
                                        \set Staff.forceClef = ##f
                                        \tweak style #'harmonic
                                        g8
                                        ]
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \tweak style #'harmonic
                                        bqf2
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 8/9
                                    {
                                        \override Dots.staff-position = #2
                                        \revert Dots.staff-position
                                        \tweak style #'harmonic-mixed
                                        g''4
                                        - \tweak bound-details.right.arrow ##t
                                        - \tweak thickness #1.5
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \override Dots.staff-position = #2
                                        \big-half-harmonic
                                        \revert Dots.staff-position
                                        \set stemLeftBeamCount = 3
                                        \set stemRightBeamCount = 1
                                        eqs'32
                                        [
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        \big-half-harmonic
                                        d''8.
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \big-half-harmonic
                                        \once \override Dots.staff-position = #2
                                        \revert Dots.staff-position
                                        \afterGrace
                                        d'8
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
                                            d'16
                                            \!
                                            \stopTextSpanOne
                                        }
                                    }
                                    r4
                                    r8
                                    [
                                    \override Dots.staff-position = #2
                                    \once \override Accidental.stencil = ##f
                                    \once \override NoteHead.no-ledgers = ##t
                                    \once \override NoteHead.stem-attachment = #(lambda (grob)
                                                                (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                                                      (stem (ly:grob-object grob 'stem))
                                                                      (dir (ly:grob-property stem 'direction UP)))
                                                                  (if (= dir UP)
                                                                      (cons
                                                                          0
                                                                          0.9
                                                                      )
                                                                      (if (= dir DOWN)
                                                                          (cons
                                                                              0
                                                                              -0.9
                                                                          )
                                                                      )
                                                                  )
                                                                )
                                                            )
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \twisting-clef
                                    \staff-line-count 4
                                    \override Staff.StaffSymbol.line-positions = #'(5 0 -5)
                                    \override Staff.BarLine.bar-extent = #'(-2.5 . 2.5)
                                    \override Staff.Accidental.stencil = ##f
                                    \override Staff.NoteHead.no-ledgers = ##t
                                    \set Staff.forceClef = ##t
                                    \set glissandoMap = #'((0 . 1) (1 . 0))
                                    \clef "percussion"
                                    \afterGrace
                                    <
                                        \tweak NoteHead.stencil #ly:text-interface::print
                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                        c
                                        \tweak NoteHead.stencil #ly:text-interface::print
                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIII } }
                                        a
                                    >16
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override NoteHead.stem-attachment = #(lambda (grob)
                                                                    (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                                                          (stem (ly:grob-object grob 'stem))
                                                                          (dir (ly:grob-property stem 'direction UP)))
                                                                      (if (= dir UP)
                                                                          (cons
                                                                              0
                                                                              0.9
                                                                          )
                                                                          (if (= dir DOWN)
                                                                              (cons
                                                                                  0
                                                                                  -0.9
                                                                              )
                                                                          )
                                                                      )
                                                                    )
                                                                )
                                        \revert Dots.staff-position
                                        \once \override Flag.stroke-style = #"grace"
                                        <
                                            \tweak NoteHead.stencil #ly:text-interface::print
                                            \tweak NoteHead.text \markup { \fontsize #-1 { XIII } }
                                            d
                                            \tweak NoteHead.stencil #ly:text-interface::print
                                            \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                            b
                                        >16
                                    }
                                    \set Staff.forceClef = ##f
                                    r16
                                    ]
                                    r4
                                    <<
                                        \context Voice = "guitar 2 voice XIII "
                                        {
                                            <<
                                                \context Voice = "guitar 2 voice XIII"
                                                {
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \tweak text #tuplet-number::calc-fraction-text
                                                    \times 8/7
                                                    {
                                                        \override Dots.staff-position = #2
                                                        \once \override NoteHead.no-ledgers = ##t
                                                        \once \override NoteHead.stem-attachment = #(lambda (grob)
                                                                                    (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                                                                          (stem (ly:grob-object grob 'stem))
                                                                                          (dir (ly:grob-property stem 'direction UP)))
                                                                                      (if (= dir UP)
                                                                                          (cons
                                                                                              0
                                                                                              0.9
                                                                                          )
                                                                                          (if (= dir DOWN)
                                                                                              (cons
                                                                                                  0
                                                                                                  -0.9
                                                                                              )
                                                                                          )
                                                                                      )
                                                                                    )
                                                                                )
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        \voiceOne
                                                        \voiceTwo
                                                        \tweak NoteHead.stencil #ly:text-interface::print
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIII } }
                                                        a16
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        \once \override NoteHead.no-ledgers = ##t
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        \override NoteHead.X-extent = #'(0 . 0)
                                                        \override NoteHead.transparent = ##t
                                                        \override NoteHead.no-ledgers = ##t
                                                        e64
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        \once \override NoteHead.no-ledgers = ##t
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        c'32.
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        \once \override NoteHead.no-ledgers = ##t
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        e64
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
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
                                                        c'16
                                                          %! abjad.glissando(7)
                                                        - \abjad-zero-padding-glissando
                                                          %! abjad.glissando(7)
                                                        \glissando
                                                        ~
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
                                                          %! abjad.glissando(1)
                                                        \hide NoteHead
                                                          %! abjad.glissando(1)
                                                        \override Accidental.stencil = ##f
                                                          %! abjad.glissando(1)
                                                        \override NoteColumn.glissando-skip = ##t
                                                          %! abjad.glissando(1)
                                                        \override NoteHead.no-ledgers = ##t
                                                        c'64
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 2/3
                                                    {
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
                                                        c'16
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
                                                          %! abjad.glissando(6)
                                                        \revert Accidental.stencil
                                                          %! abjad.glissando(6)
                                                        \revert NoteColumn.glissando-skip
                                                          %! abjad.glissando(6)
                                                        \revert NoteHead.no-ledgers
                                                          %! abjad.glissando(6)
                                                        \undo \hide NoteHead
                                                        e16
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
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
                                                        \afterGrace
                                                        c'16
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        {
                                                            \once \override NoteHead.no-ledgers = ##t
                                                            \once \override NoteHead.stem-attachment = #(lambda (grob)
                                                                                        (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                                                                              (stem (ly:grob-object grob 'stem))
                                                                                              (dir (ly:grob-property stem 'direction UP)))
                                                                                          (if (= dir UP)
                                                                                              (cons
                                                                                                  0
                                                                                                  0.9
                                                                                              )
                                                                                              (if (= dir DOWN)
                                                                                                  (cons
                                                                                                      0
                                                                                                      -0.9
                                                                                                  )
                                                                                              )
                                                                                          )
                                                                                        )
                                                                                    )
                                                            \once \override RepeatTie.transparent = ##t
                                                            \once \override Beam.stencil = ##f
                                                            \once \override Flag.stencil = ##f
                                                            \once \override Dots.stencil = ##f
                                                            \once \override Tie.stencil = ##f
                                                            \once \override NoteHead.duration-log = 2
                                                            \once \override Stem.stencil = ##f
                                                            \revert Dots.staff-position
                                                            \tweak NoteHead.stencil #ly:text-interface::print
                                                            \tweak NoteHead.text \markup { \fontsize #-1 { XIII } }
                                                            b16
                                                        }
                                                        \revert NoteHead.X-extent
                                                        \revert NoteHead.transparent
                                                        \revert NoteHead.no-ledgers
                                                    }
                                                }
                                                \context Voice = "XIV voice"
                                                {
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 2/3
                                                    {
                                                        \override Dots.staff-position = #2
                                                        \once \override NoteHead.no-ledgers = ##t
                                                        \once \override NoteHead.stem-attachment = #(lambda (grob)
                                                                                    (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                                                                          (stem (ly:grob-object grob 'stem))
                                                                                          (dir (ly:grob-property stem 'direction UP)))
                                                                                      (if (= dir UP)
                                                                                          (cons
                                                                                              0
                                                                                              0.9
                                                                                          )
                                                                                          (if (= dir DOWN)
                                                                                              (cons
                                                                                                  0
                                                                                                  -0.9
                                                                                              )
                                                                                          )
                                                                                      )
                                                                                    )
                                                                                )
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        \voiceTwo
                                                        \tweak NoteHead.stencil #ly:text-interface::print
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        d16
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        \once \override NoteHead.no-ledgers = ##t
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        \override NoteHead.X-extent = #'(0 . 0)
                                                        \override NoteHead.transparent = ##t
                                                        \override NoteHead.no-ledgers = ##t
                                                        c'8
                                                          %! abjad.glissando(7)
                                                        - \abjad-zero-padding-glissando
                                                          %! abjad.glissando(7)
                                                        \glissando
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \tweak text #tuplet-number::calc-fraction-text
                                                    \times 8/7
                                                    {
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
                                                          %! abjad.glissando(1)
                                                        \hide NoteHead
                                                          %! abjad.glissando(1)
                                                        \override Accidental.stencil = ##f
                                                          %! abjad.glissando(1)
                                                        \override NoteColumn.glissando-skip = ##t
                                                          %! abjad.glissando(1)
                                                        \override NoteHead.no-ledgers = ##t
                                                        c'16.
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
                                                          %! abjad.glissando(6)
                                                        \revert Accidental.stencil
                                                          %! abjad.glissando(6)
                                                        \revert NoteColumn.glissando-skip
                                                          %! abjad.glissando(6)
                                                        \revert NoteHead.no-ledgers
                                                          %! abjad.glissando(6)
                                                        \undo \hide NoteHead
                                                        e32
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
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
                                                        \afterGrace
                                                        c'16.
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        {
                                                            \once \override NoteHead.no-ledgers = ##t
                                                            \once \override NoteHead.stem-attachment = #(lambda (grob)
                                                                                        (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                                                                              (stem (ly:grob-object grob 'stem))
                                                                                              (dir (ly:grob-property stem 'direction UP)))
                                                                                          (if (= dir UP)
                                                                                              (cons
                                                                                                  0
                                                                                                  0.9
                                                                                              )
                                                                                              (if (= dir DOWN)
                                                                                                  (cons
                                                                                                      0
                                                                                                      -0.9
                                                                                                  )
                                                                                              )
                                                                                          )
                                                                                        )
                                                                                    )
                                                            \once \override RepeatTie.transparent = ##t
                                                            \once \override Beam.stencil = ##f
                                                            \once \override Flag.stencil = ##f
                                                            \once \override Dots.stencil = ##f
                                                            \once \override Tie.stencil = ##f
                                                            \once \override NoteHead.duration-log = 2
                                                            \once \override Stem.stencil = ##f
                                                            \revert Dots.staff-position
                                                            \tweak NoteHead.stencil #ly:text-interface::print
                                                            \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                            d16
                                                        }
                                                        \revert NoteHead.X-extent
                                                        \revert NoteHead.transparent
                                                        \revert NoteHead.no-ledgers
                                                    }
                                                }
                                            >>
                                            \oneVoice
                                        }
                                        \context Voice = "XII voice"
                                        {
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.stem-attachment = #(lambda (grob)
                                                                        (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                                                              (stem (ly:grob-object grob 'stem))
                                                                              (dir (ly:grob-property stem 'direction UP)))
                                                                          (if (= dir UP)
                                                                              (cons
                                                                                  0
                                                                                  0.9
                                                                              )
                                                                              (if (= dir DOWN)
                                                                                  (cons
                                                                                      0
                                                                                      -0.9
                                                                                  )
                                                                              )
                                                                          )
                                                                        )
                                                                    )
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \voiceOne
                                            \tweak NoteHead.stencil #ly:text-interface::print
                                            \tweak NoteHead.text \markup { \fontsize #-1 { XII } }
                                            g'32
                                            [
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-size 8
                                            - \tweak padding #11
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe614 } } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            \hide NoteHead
                                            \override Accidental.stencil = ##f
                                            \override NoteColumn.glissando-skip = ##t
                                            \override NoteHead.no-ledgers = ##t
                                            g'16.
                                            \stopTextSpanOne
                                            - \tweak font-size 4
                                            - \tweak padding #11
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe7fa } } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            ~
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 3
                                            g'32
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            g'16
                                            \stopTextSpanOne
                                            - \tweak font-size 8
                                            - \tweak padding #11
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe614 } } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            g'32
                                            \stopTextSpanOne
                                            - \tweak font-size 4
                                            - \tweak padding #11
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe7fa } } \hspace #0.5 }
                                            - \tweak bound-details.right.padding -8
                                            \startTextSpanOne
                                            ~
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \revert Staff.Stem.stemlet-length
                                            \afterGrace
                                            g'8
                                            \stopTextSpanOne
                                            ]
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override Dots.staff-position = #2
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
                                                \revert Accidental.stencil
                                                \revert NoteColumn.glissando-skip
                                                \revert NoteHead.no-ledgers
                                                \undo \hide NoteHead
                                                a'16
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    \once \override Staff.Clef.extra-offset = #'(2.5 . 0)
                                    \unset glissandoMap
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
                                    \tweak style #'harmonic
                                    bqf32
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #10
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "( touching all strings affected by RH )" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \set Staff.forceClef = ##f
                                    \tweak style #'harmonic
                                    g''16.
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
                                    g''16.
                                    \override Dots.staff-position = #2
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \tweak style #'harmonic
                                    eqs'32
                                      %! abjad.glissando(7)
                                    - \tweak bound-details.right.arrow ##t
                                      %! abjad.glissando(7)
                                    - \tweak thickness #1.5
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \revert Dots.staff-position
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    eqs'16.
                                    \override Dots.staff-position = #2
                                    \big-half-harmonic
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    d''32
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
                                    d''8
                                    ~
                                    \revert Dots.staff-position
                                    d''16.
                                    \big-half-harmonic
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    d'32
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
                                    \afterGrace
                                    d'8
                                    ]
                                    {
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
                                        g16
                                        \stopTextSpanOne
                                    }
                                    <<
                                        \context Voice = "guitar 2 voice XIII sub 1 "
                                        {
                                            <<
                                                \context Voice = "guitar 2 voice XIII sub 1"
                                                {
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \tweak text #tuplet-number::calc-fraction-text
                                                    \times 8/7
                                                    {
                                                        \override Dots.staff-position = #2
                                                        \once \override NoteHead.no-ledgers = ##t
                                                        \once \override NoteHead.stem-attachment = #(lambda (grob)
                                                                                    (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                                                                          (stem (ly:grob-object grob 'stem))
                                                                                          (dir (ly:grob-property stem 'direction UP)))
                                                                                      (if (= dir UP)
                                                                                          (cons
                                                                                              0
                                                                                              0.9
                                                                                          )
                                                                                          (if (= dir DOWN)
                                                                                              (cons
                                                                                                  0
                                                                                                  -0.9
                                                                                              )
                                                                                          )
                                                                                      )
                                                                                    )
                                                                                )
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        \override Staff.Clef.stencil = #ly:text-interface::print
                                                        \override Staff.Clef.text = \twisting-clef
                                                        \staff-line-count 4
                                                        \override Staff.StaffSymbol.line-positions = #'(5 0 -5)
                                                        \override Staff.BarLine.bar-extent = #'(-2.5 . 2.5)
                                                        \override Staff.Accidental.stencil = ##f
                                                        \override Staff.NoteHead.no-ledgers = ##t
                                                        \set Staff.forceClef = ##t
                                                        \clef "percussion"
                                                        \voiceOne
                                                        \voiceTwo
                                                        \tweak NoteHead.stencil #ly:text-interface::print
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIII } }
                                                        a64
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        \set Staff.forceClef = ##f
                                                        \once \override NoteHead.no-ledgers = ##t
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        \override NoteHead.X-extent = #'(0 . 0)
                                                        \override NoteHead.transparent = ##t
                                                        \override NoteHead.no-ledgers = ##t
                                                        a'16.
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 2/3
                                                    {
                                                        \once \override NoteHead.no-ledgers = ##t
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        c'16
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        \once \override NoteHead.no-ledgers = ##t
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        a'8..
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        \once \override NoteHead.no-ledgers = ##t
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        \afterGrace
                                                        c'16.
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                        {
                                                            \once \override NoteHead.no-ledgers = ##t
                                                            \once \override NoteHead.stem-attachment = #(lambda (grob)
                                                                                        (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                                                                              (stem (ly:grob-object grob 'stem))
                                                                                              (dir (ly:grob-property stem 'direction UP)))
                                                                                          (if (= dir UP)
                                                                                              (cons
                                                                                                  0
                                                                                                  0.9
                                                                                              )
                                                                                              (if (= dir DOWN)
                                                                                                  (cons
                                                                                                      0
                                                                                                      -0.9
                                                                                                  )
                                                                                              )
                                                                                          )
                                                                                        )
                                                                                    )
                                                            \once \override RepeatTie.transparent = ##t
                                                            \once \override Beam.stencil = ##f
                                                            \once \override Flag.stencil = ##f
                                                            \once \override Dots.stencil = ##f
                                                            \once \override Tie.stencil = ##f
                                                            \once \override NoteHead.duration-log = 2
                                                            \once \override Stem.stencil = ##f
                                                            \revert Dots.staff-position
                                                            \tweak NoteHead.stencil #ly:text-interface::print
                                                            \tweak NoteHead.text \markup { \fontsize #-1 { XIII } }
                                                            g'16
                                                        }
                                                        \revert NoteHead.X-extent
                                                        \revert NoteHead.transparent
                                                        \revert NoteHead.no-ledgers
                                                    }
                                                }
                                                \context Voice = "XIV voice sub 1"
                                                {
                                                    \tweak text #tuplet-number::calc-fraction-text
                                                    \times 6/7
                                                    {
                                                        \override Dots.staff-position = #2
                                                        \once \override NoteHead.no-ledgers = ##t
                                                        \once \override NoteHead.stem-attachment = #(lambda (grob)
                                                                                    (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                                                                          (stem (ly:grob-object grob 'stem))
                                                                                          (dir (ly:grob-property stem 'direction UP)))
                                                                                      (if (= dir UP)
                                                                                          (cons
                                                                                              0
                                                                                              0.9
                                                                                          )
                                                                                          (if (= dir DOWN)
                                                                                              (cons
                                                                                                  0
                                                                                                  -0.9
                                                                                              )
                                                                                          )
                                                                                      )
                                                                                    )
                                                                                )
                                                        \textSpannerDown
                                                        \override Staff.Stem.stemlet-length = 0.75
                                                        \voiceTwo
                                                        \tweak NoteHead.stencil #ly:text-interface::print
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        [
                                                          %! abjad.glissando(7)
                                                        - \abjad-zero-padding-glissando
                                                          %! abjad.glissando(7)
                                                        \glissando
                                                        - \tweak font-size 4
                                                        - \tweak padding #15
                                                        - \abjad-dashed-line-with-up-hook
                                                        - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe7fa } } \hspace #0.5 }
                                                        - \tweak bound-details.right.padding 1.5
                                                        \startTextSpanOne
                                                        - \tweak transparent ##t
                                                        ~
                                                        \once \override NoteHead.no-ledgers = ##t
                                                        \once \override NoteHead.stem-attachment = #(lambda (grob)
                                                                                    (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                                                                          (stem (ly:grob-object grob 'stem))
                                                                                          (dir (ly:grob-property stem 'direction UP)))
                                                                                      (if (= dir UP)
                                                                                          (cons
                                                                                              0
                                                                                              0.9
                                                                                          )
                                                                                          (if (= dir DOWN)
                                                                                              (cons
                                                                                                  0
                                                                                                  -0.9
                                                                                              )
                                                                                          )
                                                                                      )
                                                                                    )
                                                                                )
                                                        \textSpannerDown
                                                          %! abjad.glissando(1)
                                                        \hide NoteHead
                                                          %! abjad.glissando(1)
                                                        \override Accidental.stencil = ##f
                                                          %! abjad.glissando(1)
                                                        \override NoteColumn.glissando-skip = ##t
                                                          %! abjad.glissando(1)
                                                        \override NoteHead.no-ledgers = ##t
                                                        \tweak NoteHead.stencil #ly:text-interface::print
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        \stopTextSpanOne
                                                        - \tweak font-size 8
                                                        - \tweak padding #14.5
                                                        - \abjad-dashed-line-with-up-hook
                                                        - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe614 } } \hspace #0.5 }
                                                        - \tweak bound-details.right.padding 1.5
                                                        \startTextSpanOne
                                                        - \tweak transparent ##t
                                                        ~
                                                        \textSpannerUp
                                                        \once \override NoteHead.no-ledgers = ##t
                                                        \once \override NoteHead.stem-attachment = #(lambda (grob)
                                                                                    (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                                                                          (stem (ly:grob-object grob 'stem))
                                                                                          (dir (ly:grob-property stem 'direction UP)))
                                                                                      (if (= dir UP)
                                                                                          (cons
                                                                                              0
                                                                                              0.9
                                                                                          )
                                                                                          (if (= dir DOWN)
                                                                                              (cons
                                                                                                  0
                                                                                                  -0.9
                                                                                              )
                                                                                          )
                                                                                      )
                                                                                    )
                                                                                )
                                                        \textSpannerDown
                                                        \tweak NoteHead.stencil #ly:text-interface::print
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        \stopTextSpanOne
                                                        - \tweak font-size 4
                                                        - \tweak padding #15
                                                        - \abjad-dashed-line-with-up-hook
                                                        - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe7fa } } \hspace #0.5 }
                                                        - \tweak bound-details.right.padding 1.5
                                                        \startTextSpanOne
                                                        - \tweak transparent ##t
                                                        ~
                                                        \textSpannerUp
                                                        \once \override NoteHead.no-ledgers = ##t
                                                        \once \override NoteHead.stem-attachment = #(lambda (grob)
                                                                                    (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                                                                          (stem (ly:grob-object grob 'stem))
                                                                                          (dir (ly:grob-property stem 'direction UP)))
                                                                                      (if (= dir UP)
                                                                                          (cons
                                                                                              0
                                                                                              0.9
                                                                                          )
                                                                                          (if (= dir DOWN)
                                                                                              (cons
                                                                                                  0
                                                                                                  -0.9
                                                                                              )
                                                                                          )
                                                                                      )
                                                                                    )
                                                                                )
                                                        \textSpannerDown
                                                        \tweak NoteHead.stencil #ly:text-interface::print
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        \stopTextSpanOne
                                                        - \tweak font-size 8
                                                        - \tweak padding #14.5
                                                        - \abjad-dashed-line-with-up-hook
                                                        - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe614 } } \hspace #0.5 }
                                                        - \tweak bound-details.right.padding 1.5
                                                        \startTextSpanOne
                                                        \textSpannerUp
                                                        \once \override NoteHead.no-ledgers = ##t
                                                        \once \override NoteHead.stem-attachment = #(lambda (grob)
                                                                                    (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                                                                          (stem (ly:grob-object grob 'stem))
                                                                                          (dir (ly:grob-property stem 'direction UP)))
                                                                                      (if (= dir UP)
                                                                                          (cons
                                                                                              0
                                                                                              0.9
                                                                                          )
                                                                                          (if (= dir DOWN)
                                                                                              (cons
                                                                                                  0
                                                                                                  -0.9
                                                                                              )
                                                                                          )
                                                                                      )
                                                                                    )
                                                                                )
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
                                                        \tweak NoteHead.stencil #ly:text-interface::print
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak font-size 4
                                                        _ \markup { \override #'(font-name . "ekmelos") { \char ##xe7fa } }
                                                        \stopTextSpanOne
                                                        ]
                                                        \textSpannerUp
                                                    }
                                                }
                                            >>
                                            \oneVoice
                                        }
                                        \context Voice = "XII voice sub 1"
                                        {
                                            \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override NoteHead.stem-attachment = #(lambda (grob)
                                                                        (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                                                              (stem (ly:grob-object grob 'stem))
                                                                              (dir (ly:grob-property stem 'direction UP)))
                                                                          (if (= dir UP)
                                                                              (cons
                                                                                  0
                                                                                  0.9
                                                                              )
                                                                              (if (= dir DOWN)
                                                                                  (cons
                                                                                      0
                                                                                      -0.9
                                                                                  )
                                                                              )
                                                                          )
                                                                        )
                                                                    )
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \voiceOne
                                            \tweak NoteHead.stencil #ly:text-interface::print
                                            \tweak NoteHead.text \markup { \fontsize #-1 { XII } }
                                            f'32
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \override NoteHead.X-extent = #'(0 . 0)
                                            \override NoteHead.transparent = ##t
                                            \override NoteHead.no-ledgers = ##t
                                            c'8
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            a'16
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            c'8
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            ~
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
                                              %! abjad.glissando(1)
                                            \hide NoteHead
                                              %! abjad.glissando(1)
                                            \override Accidental.stencil = ##f
                                              %! abjad.glissando(1)
                                            \override NoteColumn.glissando-skip = ##t
                                              %! abjad.glissando(1)
                                            \override NoteHead.no-ledgers = ##t
                                            \afterGrace
                                            c'32
                                            {
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override NoteHead.stem-attachment = #(lambda (grob)
                                                                            (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                                                                  (stem (ly:grob-object grob 'stem))
                                                                                  (dir (ly:grob-property stem 'direction UP)))
                                                                              (if (= dir UP)
                                                                                  (cons
                                                                                      0
                                                                                      0.9
                                                                                  )
                                                                                  (if (= dir DOWN)
                                                                                      (cons
                                                                                          0
                                                                                          -0.9
                                                                                      )
                                                                                  )
                                                                              )
                                                                            )
                                                                        )
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \revert Dots.staff-position
                                                  %! abjad.glissando(6)
                                                \revert Accidental.stencil
                                                  %! abjad.glissando(6)
                                                \revert NoteColumn.glissando-skip
                                                  %! abjad.glissando(6)
                                                \revert NoteHead.no-ledgers
                                                  %! abjad.glissando(6)
                                                \undo \hide NoteHead
                                                \tweak NoteHead.stencil #ly:text-interface::print
                                                \tweak NoteHead.text \markup { \fontsize #-1 { XII } }
                                                g'16
                                            }
                                            \revert NoteHead.X-extent
                                            \revert NoteHead.transparent
                                            \revert NoteHead.no-ledgers
                                        }
                                    >>
                                    \oneVoice
                                      %! +SCORE
                                    \once \override Staff.Clef.X-extent = ##f
                                      %! +SCORE
                                    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                    \once \override Staff.Clef.stencil = ##f
                                    \revert Staff.Clef.stencil
                                    \revert Staff.StaffSymbol.line-positions
                                    \staff-line-count 5
                                    \revert Staff.BarLine.bar-extent
                                    \revert Staff.Accidental.stencil
                                    \revert Staff.NoteHead.no-ledgers
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \clef "bass"
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
