  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/polyxena/polyxena/build/polyxena-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (1 30 33 26.5)))
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #14 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 48" } } }
            \once \override TimeSignature.stencil = #(three-seven-time-signature)
            \set Score.proportionalNotationDuration = #(ly:make-moment 2/105)
            \time 3/8
            s1 * 3/8
            \set Score.proportionalNotationDuration = #(ly:make-moment 1/30)
            \time 3/4
            s1 * 3/4
            \once \override TimeSignature.stencil = #(three-seven-time-signature)
            \set Score.proportionalNotationDuration = #(ly:make-moment 2/105)
            \time 3/8
            s1 * 3/8
            \set Score.proportionalNotationDuration = #(ly:make-moment 1/30)
            \time 3/4
            s1 * 3/4
            \once \override TimeSignature.stencil = #(three-seven-time-signature)
            \set Score.proportionalNotationDuration = #(ly:make-moment 2/105)
            \time 3/8
            s1 * 3/8
            \set Score.proportionalNotationDuration = #(ly:make-moment 1/30)
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
                                        - \tweak bound-details.left.text \markup \concat { { "pont. moltiss." } \hspace #0.5 }
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
                                        )
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
                                            \tweak Accidental.parenthesized ##t
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
                                        - \tweak bound-details.left.text \markup \concat { { "scratch" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding 0.5
                                        \startTextSpanOne
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #8.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "tasto" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanTwo
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
                                            \tweak Accidental.parenthesized ##t
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
                                            \tweak Accidental.parenthesized ##t
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
                                            \tweak Accidental.parenthesized ##t
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
                                        - \tweak padding #6
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "" } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "norm." }
                                        \startTextSpanOne
                                        <
                                            \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                            \tweak Accidental.font-size #-2.5
                                            \tweak Accidental.parenthesized ##t
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
                                            \tweak Accidental.parenthesized ##t
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
                                            \tweak Accidental.parenthesized ##t
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
                                        \context Voice = "cello 2 voice gliss 1"
                                        {
                                            \override Dots.staff-position = #2
                                            \big-half-harmonic
                                            \override Staff.Stem.stemlet-length = 0.75
                                            \voiceOne
                                            f'8
                                            ^ \accent
                                            [
                                            (
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            - \tweak font-name "Bodoni72 Book Italic" 
                                            - \tweak font-size 2
                                            - \tweak padding #15
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { { "( finger percussion on accents )" } \hspace #0.5 }
                                            \startTextSpanOne
                                            \once \override Accidental.stencil = ##f
                                            \override NoteHead.X-extent = #'(0 . 0)
                                            \override NoteHead.transparent = ##t
                                            a'8
                                            ^ \accent
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \once \override Accidental.stencil = ##f
                                            \revert Staff.Stem.stemlet-length
                                            \afterGrace
                                            d'8
                                            ^ \accent
                                            ]
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override Stem.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override Accidental.stencil = ##f
                                                \revert Dots.staff-position
                                                \once \override NoteHead.transparent = ##t
                                                f'16
                                                )
                                                \stopTextSpanOne
                                            }
                                            \revert NoteHead.X-extent
                                            \revert NoteHead.transparent
                                        }
                                        \context Voice = "gambe gliss 2"
                                        {
                                            <<
                                                \context Voice = "gambe gliss 2 temp 1"
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
                                                    \voiceOne
                                                    \voiceTwo
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
                                                    \override NoteHead.X-extent = #'(0 . 0)
                                                    \override NoteHead.transparent = ##t
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
                                                }
                                                \context Voice = "gambe gliss 3"
                                                {
                                                    <<
                                                        \context Voice = "gambe gliss 3 temp 2"
                                                        {
                                                            \once \override TupletBracket.stencil = ##f
                                                            \once \override TupletNumber.stencil = ##f
                                                            \times 4/7
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
                                                                \voiceOne
                                                                \voiceTwo
                                                                gs16.
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
                                                                gs16.
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
                                                                gs16.
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
                                                                gs16.
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
                                                                    e16
                                                                }
                                                                \revert NoteHead.X-extent
                                                                \revert NoteHead.transparent
                                                            }
                                                        }
                                                        \context Voice = "gambe gliss 4"
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
                                                                \once \override Stem.stencil = ##f
                                                                \once \override Flag.stencil = ##f
                                                                \once \override NoteHead.no-ledgers = ##t
                                                                \once \override Accidental.stencil = ##f
                                                                \revert Dots.staff-position
                                                                \once \override NoteHead.transparent = ##t
                                                                ef16
                                                            }
                                                            \revert NoteHead.X-extent
                                                            \revert NoteHead.transparent
                                                        }
                                                    >>
                                                    \oneVoice
                                                }
                                            >>
                                            \oneVoice
                                        }
                                    >>
                                    \oneVoice
                                    s1 * 3/4
                                    s1 * 3/8
                                    s1 * 3/4
                                    s1 * 3/8
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
                                    :32
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
                                    - \tweak padding #11.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "pont." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "pont. moltiss." }
                                    \startTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #14
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "( rasg. )" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -28
                                    \startTextSpanThree
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #9
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "p - c" } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "i - a" }
                                    \startTextSpanOne
                                    ~
                                    \set Staff.forceClef = ##f
                                    \times 8/9
                                    {
                                          %! abjad.glissando(1)
                                        \hide NoteHead
                                          %! abjad.glissando(1)
                                        \override Accidental.stencil = ##f
                                          %! abjad.glissando(1)
                                        \override NoteColumn.glissando-skip = ##t
                                          %! abjad.glissando(1)
                                        \override NoteHead.no-ledgers = ##t
                                        <a' c'' e'' g'' b''>4
                                        :32
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        <f' a'>32
                                        :256
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                        ~
                                    }
                                    \revert Dots.staff-position
                                    <f' a'>4.
                                    :32
                                    \stopTextSpanThree
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
                                    s1 * 3/4
                                    s1 * 3/8
                                    s1 * 3/4
                                    s1 * 3/8
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
}
