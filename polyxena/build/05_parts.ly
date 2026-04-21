    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 12 30 18)))
            \time 7/16
            s1 * 7/16
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #3.5 \raise #14 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 112" } } }
              %! +SCORE
        %%% \noBreak
            \time 8/32
            s1 * 1/4
              %! +SCORE
        %%% \noBreak
            \time 6/32
            s1 * 3/16
              %! +SCORE
        %%% \noBreak
            \time 3/8
            s1 * 3/8
              %! +SCORE
        %%% \noBreak
            \time 8/4
            s1 * 2
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-1 \raise #14 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 48" } } }
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \pageBreak
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 12 30 28)))
            \time 7/16
            s1 * 7/16
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #1 \raise #14 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 112" } } }
              %! +SCORE
        %%% \noBreak
            \time 8/16
            s1 * 1/2
              %! +SCORE
        %%% \noBreak
            \time 7/32
            s1 * 7/32
              %! +SCORE
        %%% \noBreak
            \time 6/4
            s1 * 3/2
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #1 \raise #14 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 48" } } }
              %! +SCORE
        %%% \break
            \time 3/8
            s1 * 3/8
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #1 \raise #14 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 112" } } }
              %! +SCORE
        %%% \noBreak
            \time 3/16
            s1 * 3/16
              %! +SCORE
        %%% \noBreak
            \time 6/4
            s1 * 3/2
            - \tweak font-size #6
            ^ \markup { "slow, single material instance, trans. to gesture (made of materials from previous process, ends with gambe tailpiece)" }
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #1 \raise #14 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 48" } } }
              %! +SCORE
        %%% \break
            \time 7/8
            s1 * 7/8
            - \tweak padding #13
            - \abjad-solid-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \override #'(font-name . "Bodoni72 Book Italic") { \hspace #1.5 \raise #0 \with-dimensions-from \null \concat { \fontsize #8 { " accel. ( to " } \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 84 )" } } } \hspace #0.5 }
            - \tweak bound-details.right.text \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #0 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 84" } } }
            \startTextSpanThree
              %! +SCORE
        %%% \noBreak
            \time 8/32
            s1 * 1/4
            - \tweak font-size #6
            ^ \markup { "alternate measure of reproportioned gesture and measure of silence" }
            \stopTextSpanThree
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
            - \tweak font-size #6
            ^ \markup { "tailpiece holds" }
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #1 \raise #14 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 63" } } }
            \time 6/4
            s1 * 3/2
            - \tweak font-size #6
            ^ \markup { "rasgeado develops above" }
            \time 6/8
            s1 * 3/4
            - \tweak font-size #6
            ^ \markup { "gambe transitions to more rhythmically active dp" }
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'14
            - \tweak padding -6
            _ \middle-fermata
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
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.Clef.stencil = ##f
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Viola da Gamba }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { viol. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 7/16
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/16
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \seven-string-clef
                                    \staff-line-count 7
                                    \override Staff.Accidental.stencil = ##f
                                    \override Staff.NoteHead.no-ledgers = ##t
                                    \set Staff.forceClef = ##t
                                    \clef "percussion"
                                    <e' g'>4
                                    :32
                                    \arpeggio
                                    \ppp
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "xp." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -4
                                    \startTextSpanThree
                                    \set Staff.forceClef = ##f
                                    \override disappearingStaff.Stem.stemlet-length = 0.75
                                    <c' e' g' b'>16
                                    :128
                                    \arpeggio
                                    [
                                    \revert disappearingStaff.Stem.stemlet-length
                                    <e' g' b'>8.
                                    :64
                                    \arpeggio
                                    ]
                                    ~
                                    \override disappearingStaff.Stem.stemlet-length = 0.75
                                    <e' g' b'>8.
                                    :64
                                    [
                                    \revert disappearingStaff.Stem.stemlet-length
                                    <c' e'>16
                                    :128
                                    \arpeggio
                                    ]
                                    ~
                                    \override disappearingStaff.Stem.stemlet-length = 0.75
                                    <c' e'>16
                                    :128
                                    [
                                    \revert disappearingStaff.Stem.stemlet-length
                                    <c' e' g'>8.
                                    :64
                                    \arpeggio
                                    ]
                                    ~
                                    <c' e' g'>4
                                    :32
                                    \override disappearingStaff.Stem.stemlet-length = 0.75
                                    <c' e' g' b'>8.
                                    :64
                                    \arpeggio
                                    [
                                    \revert disappearingStaff.Stem.stemlet-length
                                    <g' b'>16
                                    :128
                                    \arpeggio
                                    ]
                                    ~
                                    \override disappearingStaff.Stem.stemlet-length = 0.75
                                    <g' b'>8.
                                    :64
                                    [
                                    \revert disappearingStaff.Stem.stemlet-length
                                    <c' e' g'>16
                                    :128
                                    \arpeggio
                                    ]
                                    <e' g'>4
                                    :32
                                    \arpeggio
                                    \stopTextSpanThree
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.Clef.stencil = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 7/16
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 7/32
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    \once \override Staff.Clef.X-extent = ##f
                                    \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \seven-string-clef
                                    \staff-line-count 7
                                    \override Staff.Accidental.stencil = ##f
                                    \override Staff.NoteHead.no-ledgers = ##t
                                    \set Staff.forceClef = ##t
                                    \clef "percussion"
                                    <e' g'>4
                                    :32
                                    \arpeggio
                                    \ppp
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "xp." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanThree
                                    \set Staff.forceClef = ##f
                                    \override disappearingStaff.Stem.stemlet-length = 0.75
                                    <c' e' g' b'>16
                                    :128
                                    \arpeggio
                                    [
                                    \revert disappearingStaff.Stem.stemlet-length
                                    <e' g' b'>8.
                                    :64
                                    \arpeggio
                                    ]
                                    ~
                                    \override disappearingStaff.Stem.stemlet-length = 0.75
                                    <e' g' b'>8.
                                    :64
                                    [
                                    \revert disappearingStaff.Stem.stemlet-length
                                    <c' e'>16
                                    :128
                                    \arpeggio
                                    ]
                                    ~
                                    \override disappearingStaff.Stem.stemlet-length = 0.75
                                    <c' e'>16
                                    :128
                                    [
                                    \revert disappearingStaff.Stem.stemlet-length
                                    <c' e' g'>8.
                                    :64
                                    \arpeggio
                                    ]
                                    ~
                                    <c' e' g'>4
                                    :32
                                    \override disappearingStaff.Stem.stemlet-length = 0.75
                                    <c' e' g' b'>8.
                                    :64
                                    \arpeggio
                                    [
                                    \revert disappearingStaff.Stem.stemlet-length
                                    <g' b'>16
                                    :128
                                    \arpeggio
                                    \stopTextSpanThree
                                    ]
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/16
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 7/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 7/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/16
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 7/32
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "cello 2 staff"
                            {
                                \context Voice = "cello 2 voice"
                                {
                                    \clef "bass"
                                    <
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        af,
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        \tweak style #'harmonic
                                        d
                                        \tweak style #'harmonic
                                        ef
                                    >8.
                                    \ppp
                                    ^ \punta-to-talon
                                    - \tweak bound-details.left.Y #5
                                    - \tweak bound-details.right.Y #-2
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #7
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "xp." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "" }
                                    - \tweak bound-details.right.padding 1
                                    \startTextSpanOne
                                    - \tweak font-size 2
                                    - \tweak padding #14
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "V" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -17
                                    \startTextSpanThree
                                    \<
                                    \afterGrace
                                    <
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        \tweak style #'harmonic
                                        d
                                        \tweak style #'harmonic
                                        ef
                                    >4
                                    \p
                                    \stopTextSpanOne
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #5.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "p." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -17
                                    \startTextSpanOne
                                    - \tweak TrillPitchAccidental.stencil ##f
                                    - \tweak TrillPitchHead.layer 5
                                    - \tweak TrillPitchHead.no-ledgers ##t
                                    - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                    - \tweak TrillPitchHead.whiteout 1
                                    - \tweak TrillPitchHead.whiteout-style #'outline
                                    - \tweak bound-details.right.padding #2
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
                                            af,
                                            \parenthesize
                                            \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                            \tweak Accidental.font-size #-2.5
                                            \tweak color #(x11-color 'LightSlateBlue)
                                            \tweak font-size #-2.5
                                            \tweak style #'harmonic
                                            d
                                            \parenthesize
                                            \tweak style #'harmonic
                                            ef
                                        >16
                                    }
                                    \afterGrace
                                    <
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        bf,
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        \tweak style #'harmonic
                                        d
                                        \tweak style #'harmonic
                                        e
                                    >4
                                    \stopTextSpanOne
                                    \stopTextSpanThree
                                    \stopTrillSpan
                                    - \tweak TrillPitchAccidental.stencil ##f
                                    - \tweak TrillPitchHead.layer 5
                                    - \tweak TrillPitchHead.no-ledgers ##t
                                    - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                    - \tweak TrillPitchHead.whiteout 1
                                    - \tweak TrillPitchHead.whiteout-style #'outline
                                    - \tweak bound-details.right.padding #-21
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
                                            d
                                            \parenthesize
                                            \tweak style #'harmonic
                                            e
                                        >16
                                        \stopTrillSpan
                                    }
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
                                                                    s1 * 3/16
                                                                    \stopTrillSpan
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
                                                                    a,16
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
                                                                    f,16
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
                                                                    a,16
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
                                                                        f,16
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
                                                            #(define afterGraceFraction (cons 15 16))
                                                            \once \override Voice.Dots.staff-position = #9
                                                            \voiceOne
                                                            b,16.
                                                            - \accent
                                                            \f
                                                            [
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            - \tweak font-name "Bodoni72 Book Italic" 
                                                            - \tweak font-size 2
                                                            - \tweak padding #11
                                                            - \abjad-dashed-line-with-hook
                                                            - \tweak bound-details.left.text \markup \concat { { "finger perc." } \hspace #0.5 }
                                                            - \tweak bound-details.right.padding -1
                                                            \startTextSpanOne
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override Voice.Dots.staff-position = #9
                                                            \override NoteHead.X-extent = #'(0 . 0)
                                                            \override NoteHead.transparent = ##t
                                                            \override NoteHead.no-ledgers = ##t
                                                            \afterGrace
                                                            d16.
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
                                                                b,16
                                                                \stopTextSpanOne
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
                                                    \override Dots.staff-position = #2
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
                                                    \afterGrace
                                                    d16.
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
                                            cs'16
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
                                            a16
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
                                            c'16
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
                                                a16
                                            }
                                            \revert NoteHead.X-extent
                                            \revert NoteHead.transparent
                                            \revert NoteHead.no-ledgers
                                        }
                                    >>
                                    \oneVoice
                                    \afterGrace
                                    <
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        bf,
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        \tweak style #'harmonic
                                        d
                                        \tweak style #'harmonic
                                        e
                                    >4.
                                    \p
                                    ^ \punta-to-talon
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #13
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "p." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -13.5
                                    \startTextSpanOne
                                    - \tweak font-size 2
                                    - \tweak padding #15.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "V" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -13.5
                                    \startTextSpanThree
                                    - \tweak TrillPitchAccidental.stencil ##f
                                    - \tweak TrillPitchHead.layer 5
                                    - \tweak TrillPitchHead.no-ledgers ##t
                                    - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                    - \tweak TrillPitchHead.whiteout 1
                                    - \tweak TrillPitchHead.whiteout-style #'outline
                                    - \tweak bound-details.right.padding #-19
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
                                            d
                                            \parenthesize
                                            \tweak style #'harmonic
                                            e
                                        >16
                                        \stopTextSpanOne
                                        \stopTextSpanThree
                                        \stopTrillSpan
                                    }
                                    #(define afterGraceFraction (cons 15 16))
                                    \big-half-harmonic
                                    \once \override Dots.staff-position = #2
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \clef "treble"
                                    \afterGrace
                                    <af b fs' bf'>\breve
                                    \stopTrillSpan
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
                                        <af b fs' bf'>16
                                    }
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
                                                                    s1 * 7/16
                                                                }
                                                                \context Voice = "cello 2 voice gliss 1 sub 2"
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
                                                                    a,16
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
                                                                    f,16
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
                                                                    a,16
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    \once \override TupletBracket.stencil = ##f
                                                                    \once \override TupletNumber.stencil = ##f
                                                                    \times 2/3
                                                                    {
                                                                        \once \override Accidental.stencil = ##f
                                                                        \once \override RepeatTie.transparent = ##t
                                                                        \once \override Beam.stencil = ##f
                                                                        \once \override Flag.stencil = ##f
                                                                        \once \override Dots.stencil = ##f
                                                                        \once \override Tie.stencil = ##f
                                                                        \once \override NoteHead.duration-log = 2
                                                                        \once \override Stem.stencil = ##f
                                                                        f,16
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
                                                                        a,16
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
                                                                        f,16
                                                                        - \abjad-zero-padding-glissando
                                                                        \glissando
                                                                    }
                                                                    \once \override TupletBracket.stencil = ##f
                                                                    \once \override TupletNumber.stencil = ##f
                                                                    \times 2/3
                                                                    {
                                                                        \once \override Accidental.stencil = ##f
                                                                        \once \override RepeatTie.transparent = ##t
                                                                        \once \override Beam.stencil = ##f
                                                                        \once \override Flag.stencil = ##f
                                                                        \once \override Dots.stencil = ##f
                                                                        \once \override Tie.stencil = ##f
                                                                        \once \override NoteHead.duration-log = 2
                                                                        \once \override Stem.stencil = ##f
                                                                        a,16
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
                                                                        f,16
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
                                                                        a,16
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
                                                                            f,16
                                                                        }
                                                                        \revert NoteHead.X-extent
                                                                        \revert NoteHead.transparent
                                                                        \revert NoteHead.no-ledgers
                                                                    }
                                                                }
                                                            >>
                                                            \oneVoice
                                                        }
                                                        \context Voice = "cello 2 voice gliss 2 sub 2"
                                                        {
                                                            \override Dots.staff-position = #2
                                                            \once \override Voice.Dots.staff-position = #9
                                                            \clef "bass"
                                                            \voiceOne
                                                            b,16.
                                                            - \accent
                                                            \f
                                                            [
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            - \tweak font-name "Bodoni72 Book Italic" 
                                                            - \tweak font-size 2
                                                            - \tweak padding #11
                                                            - \abjad-dashed-line-with-hook
                                                            - \tweak bound-details.left.text \markup \concat { { "finger perc." } \hspace #0.5 }
                                                            - \tweak bound-details.right.padding -1
                                                            \startTextSpanOne
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override Voice.Dots.staff-position = #9
                                                            \override NoteHead.X-extent = #'(0 . 0)
                                                            \override NoteHead.transparent = ##t
                                                            \override NoteHead.no-ledgers = ##t
                                                            \set stemLeftBeamCount = 2
                                                            \set stemRightBeamCount = 1
                                                            d16.
                                                            - \accent
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override Voice.Dots.staff-position = #9
                                                            \set stemLeftBeamCount = 1
                                                            \set stemRightBeamCount = 2
                                                            b,16
                                                            - \accent
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override Voice.Dots.staff-position = #9
                                                            b,16
                                                            - \accent
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override Voice.Dots.staff-position = #9
                                                            d16
                                                            - \accent
                                                            - \abjad-zero-padding-glissando
                                                            \glissando
                                                            \once \override Accidental.stencil = ##f
                                                            \once \override Voice.Dots.staff-position = #9
                                                            \afterGrace
                                                            b,16
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
                                                                b,16
                                                                \stopTextSpanOne
                                                            }
                                                            \revert NoteHead.X-extent
                                                            \revert NoteHead.transparent
                                                            \revert NoteHead.no-ledgers
                                                        }
                                                    >>
                                                    \oneVoice
                                                }
                                                \context Voice = "cello 2 voice gliss 3 sub 2"
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
                                                    d16.
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
                                                    ef16
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
                                                    d16
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
                                                        ef16
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
                                            \override Dots.staff-position = #2
                                            \once \override RepeatTie.transparent = ##t
                                            \once \override Beam.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override Dots.stencil = ##f
                                            \once \override Tie.stencil = ##f
                                            \once \override NoteHead.duration-log = 2
                                            \once \override Stem.stencil = ##f
                                            \voiceTwo
                                            cs'16
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
                                            a16
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
                                            c'16
                                            - \abjad-zero-padding-glissando
                                            \glissando
                                            \once \override TupletBracket.stencil = ##f
                                            \once \override TupletNumber.stencil = ##f
                                            \times 2/3
                                            {
                                                \once \override Accidental.stencil = ##f
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                a16
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
                                                cs'16
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
                                                a16
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                            }
                                            \once \override TupletBracket.stencil = ##f
                                            \once \override TupletNumber.stencil = ##f
                                            \times 2/3
                                            {
                                                \once \override Accidental.stencil = ##f
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
                                                \once \override Accidental.stencil = ##f
                                                \once \override RepeatTie.transparent = ##t
                                                \once \override Beam.stencil = ##f
                                                \once \override Flag.stencil = ##f
                                                \once \override Dots.stencil = ##f
                                                \once \override Tie.stencil = ##f
                                                \once \override NoteHead.duration-log = 2
                                                \once \override Stem.stencil = ##f
                                                a16
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
                                                cs'16
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
                                                    a16
                                                }
                                                \revert NoteHead.X-extent
                                                \revert NoteHead.transparent
                                                \revert NoteHead.no-ledgers
                                            }
                                        }
                                    >>
                                    \oneVoice
                                    \afterGrace
                                    <
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        bf,
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        \tweak style #'harmonic-mixed
                                        d
                                        \tweak style #'harmonic-mixed
                                        e
                                    >2
                                    \p
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "p." } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -9.5
                                    \startTextSpanOne
                                    - \tweak font-size 2
                                    - \tweak padding #13
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "V" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -9.5
                                    \startTextSpanThree
                                    - \tweak TrillPitchAccidental.stencil ##f
                                    - \tweak TrillPitchHead.layer 5
                                    - \tweak TrillPitchHead.no-ledgers ##t
                                    - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                    - \tweak TrillPitchHead.whiteout 1
                                    - \tweak TrillPitchHead.whiteout-style #'outline
                                    - \tweak bound-details.right.padding #3
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
                                            d
                                            \parenthesize
                                            \tweak style #'harmonic
                                            e
                                        >16
                                    }
                                    \afterGrace
                                    <
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        af,
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        \tweak style #'harmonic
                                        d
                                        \tweak style #'harmonic
                                        ef
                                    >8..
                                    \pp
                                    \stopTrillSpan
                                    - \tweak TrillPitchAccidental.stencil ##f
                                    - \tweak TrillPitchHead.layer 5
                                    - \tweak TrillPitchHead.no-ledgers ##t
                                    - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                    - \tweak TrillPitchHead.whiteout 1
                                    - \tweak TrillPitchHead.whiteout-style #'outline
                                    - \tweak bound-details.right.padding #-14
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
                                            d
                                            \parenthesize
                                            \tweak style #'harmonic
                                            ef
                                        >16
                                        \stopTextSpanOne
                                        \stopTextSpanThree
                                        \stopTrillSpan
                                    }
                                    \once \override Staff.Clef.X-extent = ##f
                                    \once \override Staff.Clef.extra-offset = #'(-3.5 . 0)
                                    #(define afterGraceFraction (cons 15 16))
                                    \big-half-harmonic
                                    \once \override Dots.staff-position = #2
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \clef "treble"
                                    \afterGrace
                                    <af b fs' bf'>1.
                                    \stopTrillSpan
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
                                        <af b fs' bf'>16
                                    }
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
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
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
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \once \override Staff.Clef.stencil = ##f
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Theorbo }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { thb. }
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 7/16
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/16
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \override Staff.Clef.stencil = #ly:text-interface::print
                                        \override Staff.Clef.text = \fourteen-string-clef
                                        \staff-line-count 14
                                        \override Staff.Accidental.stencil = ##f
                                        \override Staff.NoteHead.no-ledgers = ##t
                                        \set Staff.forceClef = ##t
                                        \clef "percussion"
                                        <e'' g''>8
                                        :64
                                        \arpeggio
                                        \ppp
                                        [
                                        (
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #9.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "xp." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpanThree
                                        \set Staff.forceClef = ##f
                                        <c'' e'' g'' b''>16
                                        :128
                                        \arpeggio
                                        ]
                                        \times 2/3
                                        {
                                            <e'' g'' b''>4
                                            :32
                                            \arpeggio
                                            <c'' e''>8
                                            :64
                                            \arpeggio
                                        }
                                    }
                                    <c'' e'' g''>8
                                    :64
                                    \arpeggio
                                    [
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        <c'' e'' g'' b''>8
                                        :64
                                        \arpeggio
                                        <g'' b''>8
                                        :64
                                        \arpeggio
                                        <c'' e'' g''>8
                                        :64
                                        \arpeggio
                                    }
                                    <e'' g''>8.
                                    :64
                                    \arpeggio
                                    ]
                                    \times 2/3
                                    {
                                        <c'' e'' g'' b''>8
                                        :64
                                        \arpeggio
                                        [
                                        <e'' g'' b''>8
                                        :64
                                        \arpeggio
                                        <c'' e''>16
                                        :128
                                        \arpeggio
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        <c'' e'' g''>16
                                        :128
                                        \arpeggio
                                    }
                                    <c'' e'' g'' b''>16
                                    :128
                                    \arpeggio
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        <g'' b''>4
                                        :32
                                        \arpeggio
                                        <c'' e'' g''>8
                                        :64
                                        \arpeggio
                                    }
                                    \times 2/3
                                    {
                                        <e'' g''>8
                                        :64
                                        \arpeggio
                                        [
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {
                                            <c'' e'' g'' b''>8
                                            :64
                                            \arpeggio
                                            <e'' g'' b''>16
                                            :128
                                            \arpeggio
                                            <c'' e''>16
                                            :128
                                            \arpeggio
                                            <c'' e'' g''>8.
                                            :64
                                            \arpeggio
                                        }
                                        <c'' e'' g'' b''>8
                                        :64
                                        \arpeggio
                                        )
                                        \stopTextSpanThree
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        r8
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        ^ \markup { \hspace #-8 "( w/o plectrum )" }
                                        [
                                        <a,>16
                                        :128
                                        - \accent
                                        \pp
                                        (
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #13
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { { \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) { \whiteout \circle { " i - m " } } } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup { \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) { \whiteout \circle { " p - c " } } }
                                        \startTextSpanOne
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #17
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { "p." } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \upright { "xt." }
                                        \startTextSpanTwo
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #19.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "( rasg. )" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -3
                                        \startTextSpanThree
                                        \<
                                        <d, f, a,>16
                                        :128
                                        - \accent
                                        \mp
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        <d, f, a,>16
                                        :128
                                        - \accent
                                        \pp
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \set stemLeftBeamCount = 2
                                        \set stemRightBeamCount = 1
                                        <d, f, a,>16
                                        :128
                                        - \accent
                                        - \tweak circled-tip ##t
                                        \>
                                    }
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 2
                                    <d, f, a,>16
                                    :128
                                    - \accent
                                    \mp
                                    \>
                                    ~
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        <d, f, a,>16
                                        :128
                                        <d, f, a,>8
                                        :64
                                        - \accent
                                        \pp
                                        \<
                                        <d, f, a,>8.
                                        :64
                                        - \accent
                                        \p
                                        )
                                        \stopTextSpanOne
                                        \stopTextSpanThree
                                        \stopTextSpanTwo
                                        ]
                                    }
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 7/32
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/16
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 7/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 7/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/16
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 7/32
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/8
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/2
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override Staff.TimeSignature.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "guitar 2 staff"
                            {
                                \context Voice = "guitar 2 voice"
                                {
                                    \clef "treble"
                                    \afterGrace
                                    <
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        c''
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        \tweak style #'harmonic
                                        e''
                                        \tweak style #'harmonic
                                        gqf''
                                    >4..
                                    :32
                                    \p
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #8.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "msp. ( still w/ plectrum )" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -22
                                    \startTextSpanTwo
                                    - \tweak font-size 2
                                    - \tweak padding #11
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "III" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -22
                                    \startTextSpanThree
                                    - \tweak TrillPitchAccidental.stencil ##f
                                    - \tweak TrillPitchHead.layer 5
                                    - \tweak TrillPitchHead.no-ledgers ##t
                                    - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                    - \tweak TrillPitchHead.whiteout 1
                                    - \tweak TrillPitchHead.whiteout-style #'outline
                                    - \tweak bound-details.right.padding #2
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
                                            e''
                                            \parenthesize
                                            \tweak style #'harmonic
                                            gqf''
                                        >16
                                        \stopTextSpanThree
                                        \stopTextSpanTwo
                                    }
                                    \times 2/3
                                    {
                                        #(define afterGraceFraction (cons 15 16))
                                        r8
                                        \stopTrillSpan
                                        - \tweak Beam.positions #'(10 . 10)
                                        [
                                        \once \override Staff.DynamicLineSpanner.staff-padding = #7
                                        \clef "bass"
                                        <b, ef! e! f>8.
                                        - \accent
                                        - \hammer-on
                                        \f
                                        \laissezVibrer
                                        \override Dots.staff-position = #2
                                        \override Staff.Clef.stencil = #ly:text-interface::print
                                        \override Staff.Clef.text = \fourteen-string-clef
                                        \staff-line-count 14
                                        \override Staff.Accidental.stencil = ##f
                                        \override Staff.NoteHead.no-ledgers = ##t
                                        \set Staff.forceClef = ##t
                                        \clef "percussion"
                                        \afterGrace
                                        d,16
                                        \mp
                                        ]
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #14.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { "ob." } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpanTwo
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \revert Dots.staff-position
                                            \once \override NoteHead.transparent = ##t
                                            b''16
                                            \stopTextSpanTwo
                                        }
                                        \set Staff.forceClef = ##f
                                    }
                                    <<
                                        \context Voice = "guitar 2 voice  "
                                        {
                                            <<
                                                \context Voice = "guitar 2 voice  "
                                                {
                                                    <<
                                                        \context Voice = "guitar 2 voice  "
                                                        {
                                                            <<
                                                                \context Voice = "guitar 2 voice "
                                                                {
                                                                    \voiceOne
                                                                    \voiceOne
                                                                    \voiceOne
                                                                    \voiceTwo
                                                                    s1 * 3/16
                                                                }
                                                                \context Voice = "guitar 2 voice gliss 1 sub 1"
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
                                                                    b,16
                                                                    - \accent
                                                                    _ \f
                                                                    _ \hammer-on
                                                                    [
                                                                    (
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    \set Staff.forceClef = ##f
                                                                    \once \override Accidental.stencil = ##f
                                                                    \override NoteHead.X-extent = #'(0 . 0)
                                                                    \override NoteHead.transparent = ##t
                                                                    \override NoteHead.no-ledgers = ##t
                                                                    g,16
                                                                    - \abjad-zero-padding-glissando
                                                                    \glissando
                                                                    \once \override Accidental.stencil = ##f
                                                                    \afterGrace
                                                                    b,16
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
                                                                        g,16
                                                                        )
                                                                    }
                                                                    \revert NoteHead.X-extent
                                                                    \revert NoteHead.transparent
                                                                    \revert NoteHead.no-ledgers
                                                                }
                                                            >>
                                                            \oneVoice
                                                        }
                                                        \context Voice = "guitar 2 voice gliss 2 sub 1"
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
                                                            \override NoteHead.X-extent = #'(0 . 0)
                                                            \override NoteHead.transparent = ##t
                                                            \override NoteHead.no-ledgers = ##t
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
                                                }
                                                \context Voice = "guitar 2 voice gliss 3 sub 1"
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
                                                    ds16.
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
                                                    \afterGrace
                                                    f16.
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
                                        \context Voice = "guitar 2 voice gliss 4 sub 1"
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
                                            f16
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
                                            \afterGrace
                                            f16
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
                                    \big-half-harmonic
                                    \once \override Dots.staff-position = #2
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \clef "treble"
                                    <a' cs'' ef'' fs''>4.
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
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
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    <a' cs'' ef'' fs''>\breve
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
                                        <a' cs'' ef'' fs''>16
                                    }
                                    <<
                                        \context Voice = "guitar 2 voice XIII "
                                        {
                                            <<
                                                \context Voice = "guitar 2 voice XIII"
                                                {
                                                    \once \override Dots.transparent = ##t
                                                    \once \override Rest.transparent = ##t
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
                                                    r8.
                                                    \set Staff.forceClef = ##f
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
                                                    \tweak NoteHead.stencil #ly:text-interface::print
                                                    \tweak NoteHead.text \markup { \fontsize #-1 { XIII } }
                                                    a4
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
                                                    e8.
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
                                                    c'8.
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
                                                    e8
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
                                                    \once \override Dots.transparent = ##t
                                                    \once \override Rest.transparent = ##t
                                                    \voiceTwo
                                                    r8.
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
                                                    \tweak NoteHead.stencil #ly:text-interface::print
                                                    \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                    d8.
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
                                                    c'4
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
                                                    e8
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
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/6
                                            {
                                                \voiceOne
                                                r8
                                                [
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
                                                \tweak NoteHead.stencil #ly:text-interface::print
                                                \tweak NoteHead.text \markup { \fontsize #-1 { XII } }
                                                g'16
                                                - \abjad-zero-padding-glissando
                                                \glissando
                                                - \tweak font-size 4
                                                - \tweak padding #13.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe7fa } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 1
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \hide NoteHead
                                                \override Accidental.stencil = ##f
                                                \override NoteColumn.glissando-skip = ##t
                                                \override NoteHead.no-ledgers = ##t
                                                g'8
                                                \stopTextSpanOne
                                                - \tweak font-size 8
                                                - \tweak padding #13.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe614 } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 1
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \set stemLeftBeamCount = 2
                                                \set stemRightBeamCount = 1
                                                g'16
                                                \stopTextSpanOne
                                                - \tweak font-size 4
                                                - \tweak padding #13.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe7fa } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 1
                                                \startTextSpanOne
                                            }
                                            \once \override Dots.staff-position = #2
                                            \once \override NoteHead.no-ledgers = ##t
                                            \set stemLeftBeamCount = 1
                                            \set stemRightBeamCount = 2
                                            g'16
                                            \stopTextSpanOne
                                            - \tweak font-size 8
                                            - \tweak padding #13.5
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe614 } } \hspace #0.5 }
                                            - \tweak bound-details.right.padding 1
                                            \startTextSpanOne
                                            \tweak text #tuplet-number::calc-fraction-text
                                            \times 7/6
                                            {
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                g'8
                                                \stopTextSpanOne
                                                - \tweak font-size 4
                                                - \tweak padding #13.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe7fa } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 1
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                g'8
                                                \stopTextSpanOne
                                                - \tweak font-size 8
                                                - \tweak padding #13.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe614 } } \hspace #0.5 }
                                                - \tweak bound-details.right.padding 1
                                                \startTextSpanOne
                                                \once \override Dots.staff-position = #2
                                                \once \override NoteHead.no-ledgers = ##t
                                                \afterGrace
                                                g'8
                                                \stopTextSpanOne
                                                ]
                                                - \tweak font-size 4
                                                - \tweak padding #13.5
                                                - \abjad-dashed-line-with-hook
                                                - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe7fa } } \hspace #0.5 }
                                                \startTextSpanOne
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
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 7/6
                                    {
                                        \revert Staff.Clef.stencil
                                        \revert Staff.StaffSymbol.line-positions
                                        \staff-line-count 5
                                        \revert Staff.BarLine.bar-extent
                                        \revert Staff.Accidental.stencil
                                        \revert Staff.NoteHead.no-ledgers
                                        \set Staff.forceClef = ##t
                                        \clef "bass"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [
                                        \set Staff.forceClef = ##f
                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        c'4
                                        c'16
                                        c'4.
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        ]
                                        ~
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        c'4.
                                        c'8.
                                        c'4
                                        c'16
                                    }
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
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    s1 * 1/4
                                      %! +SCORE
                                %%% \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
