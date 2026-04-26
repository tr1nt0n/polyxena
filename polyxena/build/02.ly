    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (7 40 31)))
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
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'14
            - \tweak padding -3
            _ \long-fermata
            \bar "||"
              %! +SCORE
            \break
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
                                    \once \override TupletBracket.direction = #DOWN
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \staff-line-count 1
                                        \once \override Dots.staff-position = #2
                                        \once \override DynamicLineSpanner.staff-padding = #12
                                        \revert Staff.Clef.stencil
                                        \override Staff.Clef.stencil = ##f
                                        \revert Staff.StaffSymbol.line-positions
                                        \revert Staff.BarLine.bar-extent
                                        \revert Staff.Accidental.stencil
                                        \revert Staff.NoteHead.no-ledgers
                                        \clef "percussion"
                                        \afterGrace
                                        c'8
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
                                        <d f a c'>32
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
                                        \once \override DynamicLineSpanner.staff-padding = #9
                                        <a c' e' g'>16
                                        ]
                                        \>
                                    }
                                    \once \override TupletBracket.direction = #DOWN
                                    \times 2/3
                                    {
                                        <f a c' e'>32
                                        \p
                                        [
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
                                        >8
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
                                        >32
                                        )
                                        \stopTextSpanThree
                                        \stopTrillSpan
                                        ]
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
                                    >4
                                    \stopTextSpanTwo
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
                                    >4
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
                                    >4
                                    \stopTextSpanOne
                                    \stopTextSpanThree
                                    \stopTextSpanTwo
                                    \stopTrillSpan
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
                                    \override disappearingStaff.Stem.stemlet-length = 0.75
                                    <a' c'' e'' g'' b''>8
                                    :64
                                    [
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
                                    - \tweak padding #11
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) { \whiteout \circle { " p - c " } } } \hspace #0.5 }
                                    \startTextSpanOne
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #15
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "xp." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "xt." }
                                    \startTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #17.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "( rasg. )" } \hspace #0.5 }
                                    \startTextSpanThree
                                    ~
                                    \set Staff.forceClef = ##f
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    <a' c'' e'' g'' b''>32.
                                    :256
                                    \set glissandoMap = #'((1 . 2) (0 . 1))
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    <e g>64
                                    :512
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
                                    - \tweak padding #11
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) { \whiteout \circle { " i - m " } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) { \whiteout \circle { " p - c " } } }
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
                                    <e g>16
                                    :128
                                    ~
                                    \revert disappearingStaff.Stem.stemlet-length
                                    <e g>8
                                    :64
                                    ]
                                    \revert Dots.staff-position
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    \afterGrace
                                    <d, f, a,>2.
                                    :32
                                    \p
                                    \stopTextSpanOne
                                    \stopTextSpanTwo
                                    {
                                        \once \override Stem.stencil = ##f
                                        \once \override Flag.stencil = ##f
                                        \once \override NoteHead.no-ledgers = ##t
                                        \once \override Accidental.stencil = ##f
                                        \once \override NoteHead.transparent = ##t
                                        c'16
                                        \stopTextSpanThree
                                    }
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
                                    \override Dots.staff-position = #2
                                    \unset glissandoMap
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
                                    bqf64
                                    [
                                    - \abjad-zero-padding-glissando
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #11.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "( touching all strings affected by RH )" } \hspace #0.5 }
                                    \startTextSpanOne
                                    \set Staff.forceClef = ##f
                                    \tweak style #'harmonic
                                    g''64
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
                                    g''16
                                    ~
                                    g''64
                                    \override Dots.staff-position = #2
                                    \set stemLeftBeamCount = 4
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
                                    eqs'64
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
                                    \set stemRightBeamCount = 3
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    eqs'32.
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
                                    d''64
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    d''16
                                    ~
                                    \revert Dots.staff-position
                                    \set stemLeftBeamCount = 1
                                    \set stemRightBeamCount = 3
                                    d''32.
                                    \big-half-harmonic
                                      %! abjad.glissando(6)
                                    \revert Accidental.stencil
                                      %! abjad.glissando(6)
                                    \revert NoteColumn.glissando-skip
                                      %! abjad.glissando(6)
                                    \revert NoteHead.no-ledgers
                                      %! abjad.glissando(6)
                                    \undo \hide NoteHead
                                    d'64
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
                                    d'16
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
                                                    a16
                                                    - \abjad-zero-padding-glissando
                                                    \glissando
                                                    \set Staff.forceClef = ##f
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
                                                    \override NoteHead.X-extent = #'(0 . 0)
                                                    \override NoteHead.transparent = ##t
                                                    \override NoteHead.no-ledgers = ##t
                                                    \once \override NoteHead.transparent = ##t
                                                    a'16
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
                                                        a'4
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
                                                        a'16
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
                                                        c'16
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
                                                    a'16
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
                                                    \afterGrace
                                                    a'4
                                                    {
                                                        \once \override Accidental.stencil = ##f
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
                                                        \tweak NoteHead.stencil #ly:text-interface::print
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIII } }
                                                        g'16
                                                    }
                                                    \revert NoteHead.X-extent
                                                    \revert NoteHead.transparent
                                                    \revert NoteHead.no-ledgers
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
                                                        \voiceTwo
                                                        \tweak NoteHead.stencil #ly:text-interface::print
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c4
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
                                                        c8
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
                                                        c4
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
                                                        \override Staff.Stem.stemlet-length = 0.75
                                                        \tweak NoteHead.stencil #ly:text-interface::print
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        \stopTextSpanOne
                                                        [
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
                                                        c8
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
                                            f'16
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
                                            a'8
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
                                            c'4
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
