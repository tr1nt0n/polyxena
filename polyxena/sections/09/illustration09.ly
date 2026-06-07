  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/polyxena/polyxena/build/section-stylesheet.ily"
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
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 25)))
              %! +SCORE
            \override BarNumber.Y-offset = 4.75
            \bar ".|:"
            \override Score.BarLine.bar-extent = #'(-2 . 2)
            \time 4/16
            s1 * 1/4
            - \tweak padding #15
            ^ \markup \override #'(font-name . " Bodoni72 Book Italic ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \box \fontsize #2 { \column { \line { Start at \fontsize #-6 \note {16} #2 \fontsize #2 = 250 } \line { Each repetition, the tempo changes to the \fontsize #-6 \note {16} #2 pulse of the theorbo's last tuplet. } \line { Repeat until \fontsize #-6 \note {16} #2 \fontsize #2 = ~15 }  } }
            \once \override Score.TimeSignature.stencil = ##f
            \time 4/16
            s1 * 1/4
            \bar ":|."
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'14
            - \tweak padding -7
            _ \extremely-long-fermata
            \bar "|."
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
                                    R1 * 1/4
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
                                    R1 * 1/4
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
                                                                    s1 * 1/4
                                                                    s1 * 1/4
                                                                }
                                                                \context Voice = "cello 2 voice gliss 1 sub 1"
                                                                {
                                                                    \override Dots.staff-position = #2
                                                                    \once \override RepeatTie.transparent = ##t
                                                                    \once \override Beam.stencil = ##f
                                                                    \once \override Flag.stencil = ##f
                                                                    \once \override Dots.stencil = ##f
                                                                    \once \override Tie.stencil = ##f
                                                                    \once \override NoteHead.duration-log = 2
                                                                    \once \override Stem.stencil = ##f
                                                                    \voiceTwo
                                                                    ef32.
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
                                                                    cs32.
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
                                                                    d32.
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
                                                                    cqs32.
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
                                                                    d32
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
                                                                    ef32
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
                                                                    cs32
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
                                                                    d32
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
                                                                    cqs32.
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
                                                                    d32.
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
                                                                    ef32.
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
                                                                    cs32.
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
                                                                        d16
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
                                                            \revert Staff.Clef.stencil
                                                            \revert Staff.StaffSymbol.line-positions
                                                            \staff-line-count 5
                                                            \revert Staff.BarLine.bar-extent
                                                            \revert Staff.Accidental.stencil
                                                            \revert Staff.NoteHead.no-ledgers
                                                            \set Staff.forceClef = ##t
                                                            \clef "bass"
                                                            \voiceOne
                                                            bf,16
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
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            - \tweak font-name "Bodoni72 Book Italic" 
                                                            - \tweak font-size 2
                                                            - \tweak padding #11.5
                                                            - \abjad-dashed-line-with-hook
                                                            - \tweak bound-details.left.text \markup \concat { { "finger percussion" } \hspace #0.5 }
                                                            - \tweak bound-details.right.padding -3
                                                            \startTextSpanThree
                                                            \set Staff.forceClef = ##f
                                                            \once \override Accidental.stencil = ##f
                                                            \override NoteHead.X-extent = #'(0 . 0)
                                                            \override NoteHead.transparent = ##t
                                                            \override NoteHead.no-ledgers = ##t
                                                            aqf,16
                                                            - \accent
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            \once \override Accidental.stencil = ##f
                                                            \set stemLeftBeamCount = 2
                                                            \set stemRightBeamCount = 1
                                                            b,16
                                                            - \accent
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            \tweak text #tuplet-number::calc-fraction-text
                                                            \times 4/3
                                                            {
                                                                \once \override Accidental.stencil = ##f
                                                                \set stemLeftBeamCount = 1
                                                                \set stemRightBeamCount = 3
                                                                af,32
                                                                - \accent
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                                \once \override Accidental.stencil = ##f
                                                                bf,32
                                                                - \accent
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                                \once \override Accidental.stencil = ##f
                                                                \set stemLeftBeamCount = 3
                                                                \set stemRightBeamCount = 1
                                                                aqf,32
                                                                - \accent
                                                                - \abjad-zero-padding-glissando
                                                                \glissando
                                                            }
                                                            \once \override Accidental.stencil = ##f
                                                            \set stemLeftBeamCount = 1
                                                            \set stemRightBeamCount = 2
                                                            b,16
                                                            - \accent
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            \once \override Accidental.stencil = ##f
                                                            af,16
                                                            - \accent
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            \once \override Accidental.stencil = ##f
                                                            \afterGrace
                                                            bf,16
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
                                                                aqf,16
                                                                \stopTextSpanThree
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
                                                    \times 6/5
                                                    {
                                                        \override Dots.staff-position = #2
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        \voiceTwo
                                                        f,32
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
                                                        ef,32
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
                                                        f,32
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
                                                        ef,32
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
                                                        f,32
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/5
                                                    {
                                                        \once \override Accidental.stencil = ##f
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        eqf,32
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
                                                        f,32
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
                                                        ef,32
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
                                                        f,32
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
                                                        ef,32
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \tweak text #tuplet-number::calc-fraction-text
                                                    \times 6/5
                                                    {
                                                        \once \override Accidental.stencil = ##f
                                                        \once \override RepeatTie.transparent = ##t
                                                        \once \override Beam.stencil = ##f
                                                        \once \override Flag.stencil = ##f
                                                        \once \override Dots.stencil = ##f
                                                        \once \override Tie.stencil = ##f
                                                        \once \override NoteHead.duration-log = 2
                                                        \once \override Stem.stencil = ##f
                                                        f,32
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
                                                        eqf,32
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
                                                        f,32
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
                                                        ef,32
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
                                                        f,32
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
                                                            ef,16
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
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \voiceTwo
                                            c,16.
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
                                            a,,16.
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
                                            b,,16
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
                                            c,16
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
                                            a,,16.
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
                                            b,,16.
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
                                                c,16
                                            }
                                            \revert NoteHead.X-extent
                                            \revert NoteHead.transparent
                                            \revert NoteHead.no-ledgers
                                        }
                                    >>
                                    \oneVoice
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/4
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
                                    R1 * 1/4
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
                                    R1 * 1/4
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
                                    \revert Staff.Clef.stencil
                                    \revert Staff.StaffSymbol.line-positions
                                    \staff-line-count 5
                                    \revert Staff.BarLine.bar-extent
                                    \revert Staff.Accidental.stencil
                                    \revert Staff.NoteHead.no-ledgers
                                    \set Staff.forceClef = ##t
                                    \clef "bass"
                                    <g bf cs' ef'>16.
                                    - \accent
                                    - \hammer-on
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
                                    \set Staff.forceClef = ##f
                                    <f b d' e'>32.
                                    - \accent
                                    - \hammer-on
                                    \set stemLeftBeamCount = 3
                                    \set stemRightBeamCount = 1
                                    <d fs cs' fs'>32.
                                    - \accent
                                    - \hammer-on
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    <ef fs ef'>16
                                    - \accent
                                    - \hammer-on
                                    \staff-line-count 1
                                    \once \override Accidental.stencil = ##f
                                    \override Staff.Clef.stencil = ##f
                                    \clef "percussion"
                                    \tweak style #'cross
                                    c'32
                                    \mp
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #4.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { \column { \line { "strum bridge" } \line { "w/ plectrum" } } } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanThree
                                    \tweak style #'cross
                                    c'32
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    \tweak style #'cross
                                    c'16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 4/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 3
                                        \tweak style #'cross
                                        c'32
                                        \tweak style #'cross
                                        c'32
                                        \tweak style #'cross
                                        c'32
                                        \stopTextSpanThree
                                        ]
                                    }
                                      %! +SCORE
                                    \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                    \once \override Rest.transparent = ##t
                                      %! +SCORE
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/4
                                    - \tweak X-extent ##f
                                    _ \markup \fontsize #1 \lower #5 { \hspace #-1.75 \column \override #'(font-name . "Bodoni72 Book Italic") { \line { December 2025 - July 2026 } \line { Buffalo, NY - Schöppingen, DE } } }
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
