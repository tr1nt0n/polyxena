    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2 27 17)))
            \time 37/16
            s1 * 37/16
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #5.75 \raise #14 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 16 } #2 } \fontsize #8 { "= 60" } } }
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \noPageBreak
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 25 17)))
            \once \override Score.TimeSignature.stencil = ##f
            \time 37/16
            s1 * 37/16
              %! +SCORE
        %%% \break
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 27 19)))
            \once \override Score.TimeSignature.stencil = ##f
            \time 37/16
            s1 * 37/16
              %! +SCORE
        %%% - \tweak padding #26
              %! +SCORE
        %%% - \tweak transparent ##t
              %! +SCORE
        %%% ^ \markup { S }
              %! +SCORE
        %%% \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'14
            - \tweak padding -7
            _ \middle-fermata
            \bar "||"
            \once \override Score.BarLine.transparent = ##f
              %! +SCORE
        %%% \pageBreak
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
                                    R1 * 37/16
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
                                    R1 * 37/16
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
                                    R1 * 37/16
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
                                    \once \override Dots.staff-position = #2
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \revert Staff.Clef.stencil
                                    \revert Staff.StaffSymbol.line-positions
                                    \staff-line-count 5
                                    \revert Staff.BarLine.bar-extent
                                    \revert Staff.Accidental.stencil
                                    \revert Staff.NoteHead.no-ledgers
                                    \set Staff.forceClef = ##t
                                    \clef "bass"
                                    <
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        \tweak style #'harmonic
                                        d
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        \tweak style #'harmonic
                                        ef
                                        \tweak style #'harmonic
                                        a
                                    >\breve
                                    \p
                                    (
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "t." } \hspace #0.5 }
                                    \startTextSpanTwo
                                    - \tweak font-size 2
                                    - \tweak padding #5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "IV" } \hspace #0.5 }
                                    \startTextSpanThree
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
                                    <
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        d
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        ef
                                        a
                                    >4
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
                                    <
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        d
                                        \tweak Accidental.color #(x11-color 'LightSlateBlue)
                                        \tweak Accidental.font-size #-2.5
                                        \tweak color #(x11-color 'LightSlateBlue)
                                        \tweak font-size #-2.5
                                        ef
                                        a
                                    >16
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
                                        <d ef a>16
                                        \stopTextSpanThree
                                    }
                                    \once \override Dots.staff-position = #2
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \override Staff.Clef.stencil = #ly:text-interface::print
                                    \override Staff.Clef.text = \seven-string-clef
                                    \staff-line-count 7
                                    \override Staff.Accidental.stencil = ##f
                                    \override Staff.NoteHead.no-ledgers = ##t
                                    \set Staff.forceClef = ##t
                                    \clef "percussion"
                                    \tweak style #'harmonic
                                    c'\breve
                                    - \coda
                                    \stopTextSpanTwo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #7.5
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "dp." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "" }
                                    \startTextSpanTwo
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
                                    c'4
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
                                    c'16
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
                                    }
                                    \once \override Dots.staff-position = #2
                                    \once \override RepeatTie.transparent = ##t
                                    \once \override Beam.stencil = ##f
                                    \once \override Flag.stencil = ##f
                                    \once \override Dots.stencil = ##f
                                    \once \override Tie.stencil = ##f
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Stem.stencil = ##f
                                    \once \override Staff.Clef.stencil = ##f
                                    \revert Staff.Clef.stencil
                                    \revert Staff.StaffSymbol.line-positions
                                    \staff-line-count 1
                                    \revert Staff.BarLine.bar-extent
                                    \revert Staff.Accidental.stencil
                                    \revert Staff.NoteHead.no-ledgers
                                    \clef "percussion"
                                    c'\breve
                                    \stopTextSpanTwo
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #4
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { "tailpiece" } \hspace #0.5 }
                                    - \tweak bound-details.right.padding -2
                                    \startTextSpanTwo
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
                                    c'16
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
                                        )
                                        \stopTextSpanTwo
                                    }
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
                                    \set GrandStaff.instrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { Theorbo }
                                      %! +SCORE
                                %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #2 \override #'(font-name . "Bodoni72 Book Italic") { thb. }
                                    \set Staff.forceClef = ##t
                                    \clef "percussion"
                                    <d, f, a,>\breve
                                    - \tremolo-articulation
                                    \f
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #10
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { { \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) { \whiteout \circle { " p - c " } } } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup { \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) { \whiteout \circle { " i - m " } } }
                                    \startTextSpanOne
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #14
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "xt." } \hspace #0.5 }
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
                                    <d, f, a,>4
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
                                    <d, f, a,>16
                                    \>
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
                                    <d, f, a,>\breve
                                    \stopTextSpanTwo
                                    - \tweak font-name "Bodoni72 Book Italic" 
                                    - \tweak font-size 2
                                    - \tweak padding #14
                                    - \abjad-solid-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright { "ord." } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \upright { "xp." }
                                    \startTextSpanTwo
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
                                    <d, f, a,>4
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
                                    <d, f, a,>16
                                    \mp
                                    \>
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
                                    <d, f, a,>\breve
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
                                    <d, f, a,>4
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
                                    <d, f, a,>16
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
                                        \pp
                                        \stopTextSpanOne
                                        \stopTextSpanThree
                                        \stopTextSpanTwo
                                    }
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
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \tweak text #tuplet-number::calc-fraction-text
                                                    \times 8/7
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
                                                        c'32
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
                                                        a'8.
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
                                                    a'8
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
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \tweak text #tuplet-number::calc-fraction-text
                                                    \times 8/7
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
                                                        c'32
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
                                                        a'8
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
                                                        c'32
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
                                                        a'32
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
                                                    a'8
                                                    ~
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \tweak text #tuplet-number::calc-fraction-text
                                                    \times 8/7
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
                                                        a'16.
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
                                                        a'16
                                                          %! abjad.glissando(7)
                                                        - \abjad-zero-padding-glissando
                                                          %! abjad.glissando(7)
                                                        \glissando
                                                        ~
                                                    }
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
                                                    a'8.
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
                                                    a'16
                                                      %! abjad.glissando(7)
                                                    - \abjad-zero-padding-glissando
                                                      %! abjad.glissando(7)
                                                    \glissando
                                                    ~
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/6
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
                                                        a'8
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
                                                        a'8.
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
                                                    a'8
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
                                                        c'8.
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
                                                        a'8
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
                                                        c'32
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
                                                        a'8
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
                                                    a'4.
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \tweak text #tuplet-number::calc-fraction-text
                                                    \times 8/7
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
                                                        c'16
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
                                                        a'8
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
                                                        c'32
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
                                                    a'8
                                                    - \abjad-zero-padding-glissando
                                                    \glissando
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \tweak text #tuplet-number::calc-fraction-text
                                                    \times 8/7
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
                                                        c'32
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
                                                        a'8.
                                                          %! abjad.glissando(7)
                                                        - \abjad-zero-padding-glissando
                                                          %! abjad.glissando(7)
                                                        \glissando
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/6
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
                                                        c'8
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
                                                        a'8.
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
                                                    a'4
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
                                                        a'8
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
                                                        a'8
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
                                                    a'8
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
                                                    a'8
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
                                                    - \abjad-zero-padding-glissando
                                                    \glissando
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \tweak text #tuplet-number::calc-fraction-text
                                                    \times 8/7
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
                                                        a'8
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
                                                        c'32
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
                                                        a'16
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
                                                    a'4.
                                                    ~
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \tweak text #tuplet-number::calc-fraction-text
                                                    \times 8/7
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
                                                        a'16.
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
                                                    a'8
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \tweak text #tuplet-number::calc-fraction-text
                                                    \times 8/7
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
                                                        c'16.
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
                                                        a'16.
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
                                                        c'32
                                                        - \abjad-zero-padding-glissando
                                                        \glissando
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/6
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
                                                        a'8.
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
                                                        a'8
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
                                                    \afterGrace
                                                    a'16
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIII } }
                                                        g'16
                                                    }
                                                    \revert NoteHead.X-extent
                                                    \revert NoteHead.transparent
                                                    \revert NoteHead.no-ledgers
                                                }
                                                \context Voice = "XIV voice sub 1"
                                                {
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
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
                                                        \textSpannerDown
                                                        \voiceTwo
                                                        \tweak NoteHead.stencil #ly:text-interface::print
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                          %! abjad.glissando(7)
                                                        - \abjad-zero-padding-glissando
                                                          %! abjad.glissando(7)
                                                        \glissando
                                                        - \tweak font-size 8
                                                        - \tweak padding #5
                                                        - \abjad-dashed-line-with-up-hook
                                                        - \tweak bound-details.left.text \markup \concat { { \override #'(font-name . "ekmelos") { \char ##xe614 } } \hspace #0.5 }
                                                        - \tweak bound-details.right.padding -2
                                                        \startTextSpanOne
                                                        - \tweak transparent ##t
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
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c8
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16
                                                        - \tweak transparent ##t
                                                        ~
                                                    }
                                                    \once \override TupletBracket.stencil = ##f
                                                    \once \override TupletNumber.stencil = ##f
                                                    \times 4/7
                                                    {
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c16.
                                                        - \tweak transparent ##t
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
                                                        \tweak NoteHead.text \markup { \fontsize #-1 { XIV } }
                                                        c32.
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
                                                        c32.
                                                        \stopTextSpanOne
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
                                            c'8.
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
                                            a'8
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
                                            c'8.
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
                                            a'16
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
                                            a'16
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
                                            c'8.
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
                                            c'16
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
                                            a'16
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
                                            a'8.
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
                                            a'16
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
                                            c'8.
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
                                            a'16
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
                                            c'8.
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
                                            a'8
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
                                            c'8.
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
                                            c'8.
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
                                            c'16
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
                                            a'16
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
                                            a'8.
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
                                            c'8.
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
                                            a'8
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
                                            a'8
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
                                %%% \once \override Staff.Clef.X-extent = ##f
                                      %! +SCORE
                                %%% \once \override Staff.Clef.extra-offset = #'(-2.5 . 0)
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                      %! +SCORE
                                %%% \once \override Rest.transparent = ##t
                                    \once \override Staff.Clef.stencil = ##f
                                    \revert Staff.Clef.stencil
                                    \revert Staff.StaffSymbol.line-positions
                                    \staff-line-count 5
                                    \revert Staff.BarLine.bar-extent
                                    \revert Staff.Accidental.stencil
                                    \revert Staff.NoteHead.no-ledgers
                                      %! +SCORE
                                %%% \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \clef "bass"
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
