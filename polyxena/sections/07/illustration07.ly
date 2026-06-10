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
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 16)))
            \time 9/8
            s1 * 9/8
              %! +SCORE
            \noBreak
            \time 7/8
            s1 * 7/8
            - \tweak padding #13
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #1.5 \raise #0 \with-dimensions-from \null \concat { \fontsize #8 { " accel. ( to " } \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 84 )" } } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 84" } } }
            - \tweak bound-details.right.padding -4.25
            \startTextSpanThree
              %! +SCORE
            \noBreak
            \time 7/32
            s1 * 7/32
            \stopTextSpanThree
              %! +SCORE
            \break
              %! +SCORE
            \noPageBreak
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 20)))
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/32
            s1 * 7/32
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/32
            s1 * 7/32
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/32
            s1 * 7/32
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/32
            s1 * 7/32
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/32
            s1 * 7/32
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 7/32
            s1 * 7/32
              %! +SCORE
            \noBreak
            \time 3/16
            s1 * 3/16
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/16
            s1 * 3/16
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/16
            s1 * 3/16
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/16
            s1 * 3/16
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/16
            s1 * 3/16
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/16
            s1 * 3/16
              %! +SCORE
            \break
              %! +SCORE
            \noPageBreak
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 30 19)))
              %! +SCORE
            \override BarNumber.Y-offset = 6.5
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/16
            s1 * 3/16
              %! +SCORE
            \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 40 19)))
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
              %! +SCORE
            - \tweak padding #26
              %! +SCORE
            - \tweak transparent ##t
              %! +SCORE
            ^ \markup { S }
              %! +SCORE
            \noBreak
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            \bar "||"
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
                                    R1 * 9/8
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
                                    R1 * 7/8
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
                                    R1 * 7/32
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
                                    R1 * 7/32
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
                                    R1 * 7/32
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
                                    R1 * 7/32
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
                                    R1 * 7/32
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
                                    R1 * 7/32
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
                                    R1 * 7/32
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/4
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
                                    \once \override Dots.staff-position = #2
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \clef "bass"
                                    \afterGrace
                                    <dqf,! d,!>\breve
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    {
                                        \once \override Accidental.stencil = ##f
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
                                        <dqf, d,>16
                                    }
                                    r8..
                                    r16.
                                    r16
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \seven-string-clef
                                    \staff-line-count 7
                                    \override Staff.Accidental.stencil = ##f
                                    \override Staff.NoteHead.no-ledgers = ##t
                                    \set Staff.forceClef = ##t
                                    \clef "percussion"
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    \fff
                                    - \tweak font-size #2
                                    ^ \markup { "1/2 CLB, striking all strings as hard as possible, sempre" }
                                    \set Staff.forceClef = ##f
                                    r8..
                                    r16.
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r16
                                    r8..
                                    r32
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r8
                                    r16.
                                    r16
                                    r32
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >32
                                    - \coda
                                    - \staccato
                                    r8.
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r8
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r8
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r8
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r8
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r8
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r8
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r16
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r16
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r16
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r16
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r16
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        <
                                            \tweak style #'cross
                                            d
                                            \tweak style #'cross
                                            f
                                            \tweak style #'cross
                                            a
                                            \tweak style #'cross
                                            c'
                                            \tweak style #'cross
                                            e'
                                            \tweak style #'cross
                                            g'
                                            \tweak style #'cross
                                            b'
                                        >16
                                        - \coda
                                        - \staccato
                                        r16
                                        <
                                            \tweak style #'cross
                                            d
                                            \tweak style #'cross
                                            f
                                            \tweak style #'cross
                                            a
                                            \tweak style #'cross
                                            c'
                                            \tweak style #'cross
                                            e'
                                            \tweak style #'cross
                                            g'
                                            \tweak style #'cross
                                            b'
                                        >16
                                        - \coda
                                        - \staccato
                                        r16
                                        <
                                            \tweak style #'cross
                                            d
                                            \tweak style #'cross
                                            f
                                            \tweak style #'cross
                                            a
                                            \tweak style #'cross
                                            c'
                                            \tweak style #'cross
                                            e'
                                            \tweak style #'cross
                                            g'
                                            \tweak style #'cross
                                            b'
                                        >16
                                        - \coda
                                        - \staccato
                                        r16
                                        <
                                            \tweak style #'cross
                                            d
                                            \tweak style #'cross
                                            f
                                            \tweak style #'cross
                                            a
                                            \tweak style #'cross
                                            c'
                                            \tweak style #'cross
                                            e'
                                            \tweak style #'cross
                                            g'
                                            \tweak style #'cross
                                            b'
                                        >16
                                        - \coda
                                        - \staccato
                                        r16
                                        <
                                            \tweak style #'cross
                                            d
                                            \tweak style #'cross
                                            f
                                            \tweak style #'cross
                                            a
                                            \tweak style #'cross
                                            c'
                                            \tweak style #'cross
                                            e'
                                            \tweak style #'cross
                                            g'
                                            \tweak style #'cross
                                            b'
                                        >16
                                        - \coda
                                        - \staccato
                                        r16
                                        <
                                            \tweak style #'cross
                                            d
                                            \tweak style #'cross
                                            f
                                            \tweak style #'cross
                                            a
                                            \tweak style #'cross
                                            c'
                                            \tweak style #'cross
                                            e'
                                            \tweak style #'cross
                                            g'
                                            \tweak style #'cross
                                            b'
                                        >16
                                        - \coda
                                        - \staccato
                                        r16
                                        <
                                            \tweak style #'cross
                                            d
                                            \tweak style #'cross
                                            f
                                            \tweak style #'cross
                                            a
                                            \tweak style #'cross
                                            c'
                                            \tweak style #'cross
                                            e'
                                            \tweak style #'cross
                                            g'
                                            \tweak style #'cross
                                            b'
                                        >16
                                        - \coda
                                        - \staccato
                                        r16
                                    }
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r8.
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r8.
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r8.
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        <
                                            \tweak style #'cross
                                            d
                                            \tweak style #'cross
                                            f
                                            \tweak style #'cross
                                            a
                                            \tweak style #'cross
                                            c'
                                            \tweak style #'cross
                                            e'
                                            \tweak style #'cross
                                            g'
                                            \tweak style #'cross
                                            b'
                                        >16
                                        - \coda
                                        - \staccato
                                        r8.
                                        <
                                            \tweak style #'cross
                                            d
                                            \tweak style #'cross
                                            f
                                            \tweak style #'cross
                                            a
                                            \tweak style #'cross
                                            c'
                                            \tweak style #'cross
                                            e'
                                            \tweak style #'cross
                                            g'
                                            \tweak style #'cross
                                            b'
                                        >16
                                        - \coda
                                        - \staccato
                                        r8.
                                        <
                                            \tweak style #'cross
                                            d
                                            \tweak style #'cross
                                            f
                                            \tweak style #'cross
                                            a
                                            \tweak style #'cross
                                            c'
                                            \tweak style #'cross
                                            e'
                                            \tweak style #'cross
                                            g'
                                            \tweak style #'cross
                                            b'
                                        >16
                                        - \coda
                                        - \staccato
                                        r8.
                                        <
                                            \tweak style #'cross
                                            d
                                            \tweak style #'cross
                                            f
                                            \tweak style #'cross
                                            a
                                            \tweak style #'cross
                                            c'
                                            \tweak style #'cross
                                            e'
                                            \tweak style #'cross
                                            g'
                                            \tweak style #'cross
                                            b'
                                        >16
                                        - \coda
                                        - \staccato
                                        r16
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        r8
                                        <
                                            \tweak style #'cross
                                            d
                                            \tweak style #'cross
                                            f
                                            \tweak style #'cross
                                            a
                                            \tweak style #'cross
                                            c'
                                            \tweak style #'cross
                                            e'
                                            \tweak style #'cross
                                            g'
                                            \tweak style #'cross
                                            b'
                                        >16
                                        - \coda
                                        - \staccato
                                        r8.
                                        <
                                            \tweak style #'cross
                                            d
                                            \tweak style #'cross
                                            f
                                            \tweak style #'cross
                                            a
                                            \tweak style #'cross
                                            c'
                                            \tweak style #'cross
                                            e'
                                            \tweak style #'cross
                                            g'
                                            \tweak style #'cross
                                            b'
                                        >16
                                        - \coda
                                        - \staccato
                                        r8.
                                        <
                                            \tweak style #'cross
                                            d
                                            \tweak style #'cross
                                            f
                                            \tweak style #'cross
                                            a
                                            \tweak style #'cross
                                            c'
                                            \tweak style #'cross
                                            e'
                                            \tweak style #'cross
                                            g'
                                            \tweak style #'cross
                                            b'
                                        >16
                                        - \coda
                                        - \staccato
                                        r8.
                                    }
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r8.
                                    <
                                        \tweak style #'cross
                                        d
                                        \tweak style #'cross
                                        f
                                        \tweak style #'cross
                                        a
                                        \tweak style #'cross
                                        c'
                                        \tweak style #'cross
                                        e'
                                        \tweak style #'cross
                                        g'
                                        \tweak style #'cross
                                        b'
                                    >16
                                    - \coda
                                    - \staccato
                                    r8.
                                    r4
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
                                    R1 * 9/8
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
                                    R1 * 7/8
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
                                    R1 * 7/32
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
                                    R1 * 7/32
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
                                    R1 * 7/32
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
                                    R1 * 7/32
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
                                    R1 * 7/32
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
                                    R1 * 7/32
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
                                    R1 * 7/32
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
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
                                    R1 * 3/16
                                      %! +SCORE
                                    \stopStaff \startStaff
                                    \once \override Dots.staff-position = #2
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
                                    \set Staff.forceClef = ##t
                                    \clef "percussion"
                                    <d, f, a,>8.
                                    - \tremolo-articulation
                                    \mp
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #10
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) { \whiteout \circle { " i - m " } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) { \whiteout \circle { " p - c " } } }
                                    \startTextSpanOne
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #14
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "p." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "xt." }
                                    \startTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #16.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "( rasg. )" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -3
                                    \startTextSpanThree
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    \set Staff.forceClef = ##f
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
                                    <d, f, a,>2.
                                    ~
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
                                    <d, f, a,>2.
                                    ~
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
                                    <d, f, a,>2.
                                    ~
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
                                    <d, f, a,>2.
                                    \<
                                    ~
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
                                    <d, f, a,>2.
                                    ~
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
                                    \afterGrace
                                    <d, f, a,>2.
                                    {
                                        \once \override Accidental.stencil = ##f
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
                                          %! abjad.glissando(6)
                                        \revert Accidental.stencil
                                          %! abjad.glissando(6)
                                        \revert NoteColumn.glissando-skip
                                          %! abjad.glissando(6)
                                        \revert NoteHead.no-ledgers
                                          %! abjad.glissando(6)
                                        \undo \hide NoteHead
                                        <d, f, a,>16
                                        \f
                                        \stopTextSpanOne
                                        \stopTextSpanThree
                                        \stopTextSpanTwo
                                    }
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "guitar 2 staff"
                            {
                                \context Voice = "guitar 2 voice"
                                {
                                    s1 * 9/8
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \fourteen-string-clef
                                    \staff-line-count 14
                                    \override Staff.Accidental.stencil = ##f
                                    \override Staff.NoteHead.no-ledgers = ##t
                                    \set Staff.forceClef = ##t
                                    \clef "percussion"
                                    <
                                        \tweak style #'cross
                                        f,
                                        \tweak style #'cross
                                        a,
                                    >16
                                    - \tweak font-size #4
                                    _ \snappizzicato
                                    \fff
                                    _ \staccato
                                    - \tweak font-size #2
                                    ^ \markup { "crossing strings over each other with LH, sempre" }
                                    \set Staff.forceClef = ##f
                                    r16
                                    <
                                        \tweak style #'cross
                                        f,
                                        \tweak style #'cross
                                        a,
                                    >16
                                    - \tweak font-size #4
                                    _ \snappizzicato
                                    _ \staccato
                                    r16
                                    <
                                        \tweak style #'cross
                                        f,
                                        \tweak style #'cross
                                        a,
                                    >16
                                    - \tweak font-size #4
                                    _ \snappizzicato
                                    _ \staccato
                                    r16
                                    <
                                        \tweak style #'cross
                                        f,
                                        \tweak style #'cross
                                        a,
                                    >16
                                    - \tweak font-size #4
                                    _ \snappizzicato
                                    _ \staccato
                                    r16
                                    <
                                        \tweak style #'cross
                                        f,
                                        \tweak style #'cross
                                        a,
                                    >16
                                    - \tweak font-size #4
                                    _ \snappizzicato
                                    _ \staccato
                                    r16
                                    <
                                        \tweak style #'cross
                                        f,
                                        \tweak style #'cross
                                        a,
                                    >16
                                    - \tweak font-size #4
                                    _ \snappizzicato
                                    _ \staccato
                                    r16
                                    <
                                        \tweak style #'cross
                                        f,
                                        \tweak style #'cross
                                        a,
                                    >16
                                    - \tweak font-size #4
                                    _ \snappizzicato
                                    _ \staccato
                                    r16
                                    <
                                        \tweak style #'cross
                                        f,
                                        \tweak style #'cross
                                        a,
                                    >16
                                    - \tweak font-size #4
                                    _ \snappizzicato
                                    _ \staccato
                                    r32
                                    r8
                                    <
                                        \tweak style #'cross
                                        f,
                                        \tweak style #'cross
                                        a,
                                    >16
                                    - \tweak font-size #4
                                    _ \snappizzicato
                                    _ \staccato
                                    r32
                                    r8
                                    <
                                        \tweak style #'cross
                                        f,
                                        \tweak style #'cross
                                        a,
                                    >16
                                    - \tweak font-size #4
                                    _ \snappizzicato
                                    _ \staccato
                                    r32
                                    r8
                                    <
                                        \tweak style #'cross
                                        f,
                                        \tweak style #'cross
                                        a,
                                    >16
                                    - \tweak font-size #4
                                    _ \snappizzicato
                                    _ \staccato
                                    r32
                                    r8
                                    <
                                        \tweak style #'cross
                                        f,
                                        \tweak style #'cross
                                        a,
                                    >16
                                    - \tweak font-size #4
                                    _ \snappizzicato
                                    _ \staccato
                                    r32
                                    r8
                                    <
                                        \tweak style #'cross
                                        f,
                                        \tweak style #'cross
                                        a,
                                    >16
                                    - \tweak font-size #4
                                    _ \snappizzicato
                                    _ \staccato
                                    r32
                                    r8
                                    <
                                        \tweak style #'cross
                                        f,
                                        \tweak style #'cross
                                        a,
                                    >16
                                    - \tweak font-size #4
                                    _ \snappizzicato
                                    _ \staccato
                                    r32
                                    r8
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 9/7
                                    {
                                        <
                                            \tweak style #'cross
                                            f,
                                            \tweak style #'cross
                                            a,
                                        >16
                                        - \tweak font-size #4
                                        _ \snappizzicato
                                        _ \staccato
                                        r16
                                        <
                                            \tweak style #'cross
                                            f,
                                            \tweak style #'cross
                                            a,
                                        >16
                                        - \tweak font-size #4
                                        _ \snappizzicato
                                        _ \staccato
                                        r16
                                        <
                                            \tweak style #'cross
                                            f,
                                            \tweak style #'cross
                                            a,
                                        >16
                                        - \tweak font-size #4
                                        _ \snappizzicato
                                        _ \staccato
                                        r16
                                        <
                                            \tweak style #'cross
                                            f,
                                            \tweak style #'cross
                                            a,
                                        >16
                                        - \tweak font-size #4
                                        _ \snappizzicato
                                        _ \staccato
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 9/7
                                    {
                                        r16
                                        <
                                            \tweak style #'cross
                                            f,
                                            \tweak style #'cross
                                            a,
                                        >16
                                        - \tweak font-size #4
                                        _ \snappizzicato
                                        _ \staccato
                                        r16
                                        <
                                            \tweak style #'cross
                                            f,
                                            \tweak style #'cross
                                            a,
                                        >16
                                        - \tweak font-size #4
                                        _ \snappizzicato
                                        _ \staccato
                                        r16
                                        <
                                            \tweak style #'cross
                                            f,
                                            \tweak style #'cross
                                            a,
                                        >16
                                        - \tweak font-size #4
                                        _ \snappizzicato
                                        _ \staccato
                                        r16
                                        \set Staff.explicitClefVisibility = #end-of-line-invisible
                                    }
                                    <<
                                        \context Voice = "guitar 2 voice XIII "
                                        {
                                            <<
                                                \context Voice = "guitar 2 voice XIII"
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
                                                    a4
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    \override NoteHead.X-extent = #'(0 . 0)
                                                    \override NoteHead.transparent = ##t
                                                    \override NoteHead.no-ledgers = ##t
                                                    \unset Staff.explicitClefVisibility
                                                    \once \override NoteHead.transparent = ##t
                                                      %! abjad.glissando(1)
                                                    \hide NoteHead
                                                      %! abjad.glissando(1)
                                                    \override Accidental.stencil = ##f
                                                      %! abjad.glissando(1)
                                                    \override NoteColumn.glissando-skip = ##t
                                                      %! abjad.glissando(1)
                                                    \override NoteHead.no-ledgers = ##t
                                                    \tweak NoteHead.stencil #ly:text-interface::print
                                                    \tweak NoteHead.text \markup { \fontsize #-1 { XIII } }
                                                    a8
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    \once \override NoteHead.transparent = ##t
                                                    \tweak NoteHead.stencil #ly:text-interface::print
                                                    \tweak NoteHead.text \markup { \fontsize #-1 { XIII } }
                                                    a8
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
                                                    e8
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
                                                    c'8
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    ~
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 2/3
                                                    {
                                                        \once \override Accidental.stencil = ##f
                                                        \once \override NoteHead.no-ledgers = ##t
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
                                                        c'4
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
                                                        e8
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                    }
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
                                                    c'4
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'4
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'8
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'8
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
                                                    e4
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
                                                    c'4
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    ~
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 2/3
                                                    {
                                                        \once \override Accidental.stencil = ##f
                                                        \once \override NoteHead.no-ledgers = ##t
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
                                                        c'4
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
                                                        e8
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                    }
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
                                                    c'4
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'8
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'4.
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 2/3
                                                    {
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
                                                        e4
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
                                                        c'8
                                                          %! abjad.glissando(7)
                                                        - \abjad-zero-padding-glissando
                                                          %! abjad.glissando(7)
                                                        \glissando
                                                        ~
                                                    }
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'4
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'4
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'8
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
                                                    e4.
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
                                                    c'8.
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
                                                \context Voice = "XIV voice"
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
                                                    d8
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    \override NoteHead.X-extent = #'(0 . 0)
                                                    \override NoteHead.transparent = ##t
                                                    \override NoteHead.no-ledgers = ##t
                                                    \once \override NoteHead.transparent = ##t
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
                                                    d8
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
                                                    c'8
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'8
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'4
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'8
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'4
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
                                                    e8
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
                                                    c'4
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'8
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'8
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
                                                    e8
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    e8
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    e8
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
                                                    c'8
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'8
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'4
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'8
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'8
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
                                                    e8
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
                                                    c'8
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'4
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
                                                    e8
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
                                                    c'4
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'8
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
                                                    e4
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    e8
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
                                                    c'4
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                    c'8
                                                    ~
                                                    \once \override Accidental.stencil = ##f
                                                    \once \override NoteHead.no-ledgers = ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        d16
                                                    }
                                                    \revert NoteHead.X-extent
                                                    \revert NoteHead.transparent
                                                    \revert NoteHead.no-ledgers
                                                }
                                            >>
                                            \oneVoice
                                        }
                                        \context Voice = "XII voice"
                                        {
                                            \once \override TupletBracket.stencil = ##f
                                            \once \override TupletNumber.stencil = ##f
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 1875/1650
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
                                                \tweak NoteHead.stencil #ly:text-interface::print
                                                \tweak NoteHead.text \markup { \fontsize #-1 { XII } }
                                                g'32
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak font-size 4
                                                - \tweak padding #5.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe7fa } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanOne
                                                \set Staff.forceClef = ##f
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \hide NoteHead
                                                \override Accidental.stencil = ##f
                                                \override NoteColumn.glissando-skip = ##t
                                                \override NoteHead.no-ledgers = ##t
                                                g'8
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'16
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'8..
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'32
                                                \stopTextSpanOne
                                                - \tweak font-size 8
                                                - \tweak padding #5.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe614 } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'16.
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'32
                                                \stopTextSpanOne
                                                - \tweak font-size 4
                                                - \tweak padding #5.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe7fa } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'8
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'16
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'8..
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'32
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'8
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'16.
                                                \stopTextSpanOne
                                                - \tweak font-size 8
                                                - \tweak padding #5.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe614 } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'8.
                                                \stopTextSpanOne
                                                - \tweak font-size 4
                                                - \tweak padding #5.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe7fa } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'32
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'16.
                                                \stopTextSpanOne
                                                - \tweak font-size 8
                                                - \tweak padding #5.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe614 } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'32
                                                \stopTextSpanOne
                                                - \tweak font-size 4
                                                - \tweak padding #5.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe7fa } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'16.
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'16.
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'8.
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'16
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'8..
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'32
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'8
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'16.
                                                \stopTextSpanOne
                                                - \tweak font-size 8
                                                - \tweak padding #5.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe614 } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'8..
                                                \stopTextSpanOne
                                                - \tweak font-size 4
                                                - \tweak padding #5.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe7fa } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'16
                                                \stopTextSpanOne
                                                - \tweak font-size 8
                                                - \tweak padding #5.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe614 } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'8.
                                                \stopTextSpanOne
                                                - \tweak font-size 4
                                                - \tweak padding #5.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe7fa } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'32
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'8
                                                \stopTextSpanOne
                                                - \tweak font-size 8
                                                - \tweak padding #5.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe614 } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'16
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'8..
                                                \stopTextSpanOne
                                                - \tweak font-size 4
                                                - \tweak padding #5.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe7fa } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'32
                                                \stopTextSpanOne
                                                - \tweak font-size 8
                                                - \tweak padding #5.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe614 } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'16.
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'32
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'8
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'16
                                                \stopTextSpanOne
                                                - \tweak font-size 4
                                                - \tweak padding #5.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe7fa } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'8..
                                                \stopTextSpanOne
                                                - \tweak font-size 8
                                                - \tweak padding #5.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe614 } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 0.5
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                g'32
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                \afterGrace
                                                g'8
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
                                                    \stopTextSpanOne
                                                }
                                            }
                                        }
                                    >>
                                    \oneVoice
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
