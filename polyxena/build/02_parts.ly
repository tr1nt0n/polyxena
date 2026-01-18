    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
        %%% \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2 36 34 36 28)))
            \time 6/4
            s1 * 3/2
            - \tweak padding 20
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #7 \box \line { Processing Patch II }
              %! +SCORE
        %%% \noBreak
            \time 3/16
            s1 * 3/16
              %! +SCORE
        %%% \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            - \tweak padding -10
            _ \very-short-fermata
            \bar "||"
              %! +SCORE
        %%% \noBreak
            \once \override Score.BarLine.transparent = ##f
              %! +SCORE
        %%% \pageBreak
        }
        \tag #'group1
        {
            \context StaffGroup = "Staff Group"
            <<
                \tag #'voice1
                {
                    \context Staff = "englishhorn staff"
                    {
                        \context Voice = "englishhorn voice"
                        {
                            <<
                                \context Voice = "englishhorn voice temp 1"
                                {
                                    \times 2/3
                                    {
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Cor Anglais }
                                          %! +SCORE
                                    %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ca. }
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \voiceOne
                                        \tweak style #'cross
                                        e'8
                                        [
                                        \tweak style #'cross
                                        f'8
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'cross
                                        gf'8
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    ef'16
                                    _ \accent
                                    [
                                    \tweak style #'cross
                                    df'16
                                    ~
                                    df'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    c'16
                                    ]
                                    r4
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    b16
                                    [
                                    \tweak style #'cross
                                    bf'16
                                    \tweak style #'cross
                                    af'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    b16
                                    _ \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    g'16
                                    [
                                    \tweak style #'cross
                                    a'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    b8
                                    _ \accent
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    gs'16
                                    ]
                                    r8
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    cs'16
                                    [
                                    \tweak style #'cross
                                    g'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    a'16
                                    ]
                                }
                                \context Voice = "english horn breath voice"
                                {
                                    \once \override Rest.staff-position = -17
                                    \override Voice.NoteHead.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Dots.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Stem.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Beam.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Rest.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Tie.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletBracket.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletNumber.color = #(x11-color 'LightSlateBlue)
                                    \voiceTwo
                                    r4
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                    \afterGrace
                                    <
                                        \tweak style #'la
                                        f,
                                    >4
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    _ #(make-dynamic-script
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
                                      %! abjad.glissando(7)
                                    - \tweak color #(x11-color 'LightSlateBlue)
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
                                        <f,>16
                                    }
                                    \once \override Rest.staff-position = -17
                                    r4
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                    <
                                        \tweak style #'la
                                        f,
                                    >4
                                    - \tweak color #(x11-color 'LightSlateBlue)
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
                                      %! abjad.glissando(7)
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    <
                                        \tweak style #'la
                                        f,
                                    >16
                                    [
                                    - \tweak Y-extent ##f
                                    - \tweak Y-offset 7.5
                                    - \tweak color #(css-color 'darkred)
                                    \startBowSpan #'((0 . 0) (0.1111111111111111 . -4) (0.1111111111111111 . 0) (0.5555555555555556 . -3) (1.0 . 0))
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
                                        <f,>16
                                    }
                                    \once \override Rest.staff-position = -17
                                    r16
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                    <
                                        \tweak style #'la
                                        f,
                                    >8
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    _ #(make-dynamic-script
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
                                    ]
                                      %! abjad.glissando(7)
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    <
                                        \tweak style #'la
                                        f,
                                    >8
                                    [
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
                                        <f,>16
                                    }
                                    \once \override Rest.staff-position = -17
                                    r8
                                    \stopBowSpan
                                    ]
                                    \once \override Rest.staff-position = -17
                                    r8.
                                    \revert Voice.NoteHead.color
                                    \revert Voice.Dots.color
                                    \revert Voice.Stem.color
                                    \revert Voice.Beam.color
                                    \revert Voice.Rest.color
                                    \revert Voice.Tie.color
                                    \revert Voice.TupletBracket.color
                                    \revert Voice.TupletNumber.color
                                }
                            >>
                            \oneVoice
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
                \tag #'voice2
                {
                    \context Staff = "sopranosaxophone staff"
                    {
                        \context Voice = "sopranosaxophone voice"
                        {
                            <<
                                \context Voice = "sopranosaxophone voice temp 1"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Soprano Saxophone }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { s. sax. }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \voiceTwo
                                    \tweak style #'xcircle
                                    cs'16
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "pp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    [
                                    _ (
                                    \tweak style #'xcircle
                                    a'16
                                    \tweak style #'xcircle
                                    gs'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    b16
                                    )
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    df'16
                                    [
                                    _ (
                                    \tweak style #'xcircle
                                    bf16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    d'8
                                    ]
                                    ~
                                    \tweak style #'xcircle
                                    d'4
                                    )
                                    r4
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    g'16
                                    [
                                    _ (
                                    \tweak style #'xcircle
                                    f'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    af'8
                                    )
                                    ]
                                    r4
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    d'16
                                    [
                                    _ (
                                    \tweak style #'xcircle
                                    e'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    cs'16
                                    )
                                    ]
                                }
                                \context Voice = "saxophone teeth voice 1"
                                {
                                    \override Voice.NoteHead.transparent = ##t
                                    \override Voice.NoteHead.X-extent = #'(0 . 0)
                                    \override Voice.NoteHead.no-ledgers = ##t
                                    \override Voice.Beam.beam-thickness = #0.5
                                    \override Voice.Beam.length-fraction = #0.85
                                    \override Voice.TupletBracket.stencil = ##f
                                    \override Voice.TupletNumber.stencil = ##f
                                    \override Voice.Rest.transparent = ##t
                                    \override Voice.Dots.stencil = ##f
                                    \override Voice.Accidental.stencil = ##f
                                    \set fontSize = #-3
                                    \times 4/5
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        \override Voice.NoteHead.color = #(css-color 'darkred)
                                        \override Voice.Dots.color = #(css-color 'darkred)
                                        \override Voice.Stem.color = #(css-color 'darkred)
                                        \override Voice.Beam.color = #(css-color 'darkred)
                                        \override Voice.Rest.color = #(css-color 'darkred)
                                        \override Voice.Tie.color = #(css-color 'darkred)
                                        \override Voice.TupletBracket.color = #(css-color 'darkred)
                                        \override Voice.TupletNumber.color = #(css-color 'darkred)
                                        \voiceOne
                                        d'''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #13.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        bf''16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        e'''16..
                                        )
                                        \stopTextSpan
                                        ]
                                    }
                                    \times 16/27
                                    {
                                        r32.
                                        r16.
                                        r32
                                        r64
                                        r8
                                        r16..
                                    }
                                    \times 8/15
                                    {
                                        r8..
                                        r8.
                                        r16
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        r64.
                                        r128
                                        r64.
                                        r32
                                        r32..
                                        r16
                                        r32.
                                    }
                                    \times 16/25
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        ef'''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #14
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "( teeth )" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        g'''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        af''64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs'''64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        bf''16.
                                        )
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        r16
                                        r16.
                                        r8
                                        r32
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 12/14
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        af''32
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        b''64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        af''16
                                        )
                                        \stopTextSpan
                                        ]
                                        \revert Voice.NoteHead.color
                                        \revert Voice.Dots.color
                                        \revert Voice.Stem.color
                                        \revert Voice.Beam.color
                                        \revert Voice.Rest.color
                                        \revert Voice.Tie.color
                                        \revert Voice.TupletBracket.color
                                        \revert Voice.TupletNumber.color
                                    }
                                }
                            >>
                            \oneVoice
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
                \tag #'voice3
                {
                    \context Staff = "clarinetinbflat staff"
                    {
                        \context Voice = "clarinetinbflat voice"
                        {
                            <<
                                \context Voice = "clarinetinbflat voice temp 1"
                                {
                                    \once \override TupletBracket.padding = #3.5
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Clarinet in B-flat }
                                          %! +SCORE
                                    %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { cl. }
                                        \voiceTwo
                                        \tweak style #'xcircle
                                        e16
                                        _ #(make-dynamic-script
                                            (markup
                                                #:whiteout
                                                #:line (
                                                    #:general-align Y -2 #:normal-text #:larger "“"
                                                    #:hspace -0.1
                                                    #:dynamic "pp"
                                                    #:hspace -0.25
                                                    #:general-align Y -2 #:normal-text #:larger "”"
                                                    )
                                                )
                                            )
                                        [
                                        _ (
                                        \tweak style #'xcircle
                                        ef'16
                                        \tweak style #'xcircle
                                        d'16
                                        )
                                        \tweak style #'xcircle
                                        df'16
                                        ^ \accent
                                        _ (
                                        \tweak style #'xcircle
                                        b16
                                        \tweak style #'xcircle
                                        d'16
                                        \tweak style #'xcircle
                                        bf16
                                        )
                                        ]
                                    }
                                    r4
                                    r16
                                    [
                                    \tweak style #'cross
                                    c'16
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.4
                                                #:dynamic "f"
                                                #:hspace -0.2
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    \tweak style #'cross
                                    d'16
                                    \tweak style #'cross
                                    b16
                                    ^ \accent
                                    ]
                                    \tweak style #'xcircle
                                    e16
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "pp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    [
                                    _ (
                                    \tweak style #'xcircle
                                    bf8.
                                    )
                                    ]
                                    \tweak style #'xcircle
                                    c'8
                                    ^ \accent
                                    r8
                                    \tweak style #'xcircle
                                    a8.
                                }
                                \context Voice = "clarinet teeth voice 1"
                                {
                                    \override Voice.NoteHead.transparent = ##t
                                    \override Voice.NoteHead.X-extent = #'(0 . 0)
                                    \override Voice.NoteHead.no-ledgers = ##t
                                    \override Voice.Beam.beam-thickness = #0.5
                                    \override Voice.Beam.length-fraction = #0.85
                                    \override Voice.TupletBracket.stencil = ##f
                                    \override Voice.TupletNumber.stencil = ##f
                                    \override Voice.Rest.transparent = ##t
                                    \override Voice.Dots.stencil = ##f
                                    \override Voice.Accidental.stencil = ##f
                                    \set fontSize = #-3
                                    \times 16/27
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        \override Voice.NoteHead.color = #(css-color 'darkred)
                                        \override Voice.Dots.color = #(css-color 'darkred)
                                        \override Voice.Stem.color = #(css-color 'darkred)
                                        \override Voice.Beam.color = #(css-color 'darkred)
                                        \override Voice.Rest.color = #(css-color 'darkred)
                                        \override Voice.Tie.color = #(css-color 'darkred)
                                        \override Voice.TupletBracket.color = #(css-color 'darkred)
                                        \override Voice.TupletNumber.color = #(css-color 'darkred)
                                        \voiceOne
                                        e'''32.
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #14
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        ef'''16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs'''64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b''8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'''16..
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 8/15
                                    {
                                        \my-hack-slash
                                        bf''8..
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        c'''8.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        d'''16
                                        )
                                        \stopTextSpan
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        r64.
                                        r128
                                        r64.
                                        r32
                                        r32..
                                        r16
                                        r32.
                                    }
                                    \times 16/25
                                    {
                                        r16
                                        r32.
                                        r64
                                        r16
                                        r32
                                        r16
                                        r64
                                        r16.
                                    }
                                    \times 4/5
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        b''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #14
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "( teeth )" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        e'''16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf''8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''32
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/7
                                    {
                                        \my-hack-slash
                                        a'''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        cs'''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        b''16
                                        )
                                        ]
                                        r16.
                                        r8
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/10
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        c'''16.
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        af'''8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        g'''16.
                                        )
                                        \stopTextSpan
                                        ]
                                        \revert Voice.NoteHead.color
                                        \revert Voice.Dots.color
                                        \revert Voice.Stem.color
                                        \revert Voice.Beam.color
                                        \revert Voice.Rest.color
                                        \revert Voice.Tie.color
                                        \revert Voice.TupletBracket.color
                                        \revert Voice.TupletNumber.color
                                    }
                                }
                            >>
                            \oneVoice
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
                \tag #'voice4
                {
                    \context Staff = "bassclarinet staff"
                    {
                        \context Voice = "bassclarinet voice"
                        {
                            <<
                                \context Voice = "bassclarinet voice temp 1"
                                {
                                    \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bass Clarinet }
                                      %! +SCORE
                                %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { b. cl. }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \voiceTwo
                                    \tweak style #'xcircle
                                    g16
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "pp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    [
                                    _ (
                                    \tweak style #'xcircle
                                    fs16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    e8
                                    ]
                                    ~
                                    \tweak style #'xcircle
                                    e4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    e8
                                    )
                                    [
                                    \tweak style #'xcircle
                                    af16
                                    _ (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    bf16
                                    )
                                    ]
                                    r4
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    g16
                                    [
                                    _ (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    bf8.
                                    ]
                                    ~
                                    \tweak style #'xcircle
                                    bf8
                                    )
                                    r8
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    a16
                                    [
                                    _ (
                                    \tweak style #'xcircle
                                    cs16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    d16
                                    )
                                    ]
                                }
                                \context Voice = "bass clarinet teeth voice 1"
                                {
                                    \override Voice.NoteHead.transparent = ##t
                                    \override Voice.NoteHead.X-extent = #'(0 . 0)
                                    \override Voice.NoteHead.no-ledgers = ##t
                                    \override Voice.Beam.beam-thickness = #0.5
                                    \override Voice.Beam.length-fraction = #0.85
                                    \override Voice.TupletBracket.stencil = ##f
                                    \override Voice.TupletNumber.stencil = ##f
                                    \override Voice.Rest.transparent = ##t
                                    \override Voice.Dots.stencil = ##f
                                    \override Voice.Accidental.stencil = ##f
                                    \set fontSize = #-3
                                    \times 2/3
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        \override Voice.NoteHead.color = #(css-color 'darkred)
                                        \override Voice.Dots.color = #(css-color 'darkred)
                                        \override Voice.Stem.color = #(css-color 'darkred)
                                        \override Voice.Beam.color = #(css-color 'darkred)
                                        \override Voice.Rest.color = #(css-color 'darkred)
                                        \override Voice.Tie.color = #(css-color 'darkred)
                                        \override Voice.TupletBracket.color = #(css-color 'darkred)
                                        \override Voice.TupletNumber.color = #(css-color 'darkred)
                                        \voiceOne
                                        c'''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #13.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        d'''32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'''64.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs'''32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        d'''32..
                                        )
                                        \stopTextSpan
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        r16
                                        r16.
                                        r32.
                                        r16..
                                    }
                                    \times 16/27
                                    {
                                        r32.
                                        r16.
                                        r32
                                        r64
                                        r8
                                        r16..
                                    }
                                    \times 8/15
                                    {
                                        r8..
                                        r8.
                                        r16
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        bf''64.
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #14
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "( teeth )" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -1
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        a''128
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'''64.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'''32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        af''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'''32.
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 16/25
                                    {
                                        \my-hack-slash
                                        fs'''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        d'''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs'''64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        bf''16
                                        )
                                        ]
                                        r32
                                        r16
                                        r64
                                        r16.
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/10
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        af''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        b''16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'''8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        a''32
                                        )
                                        \stopTextSpan
                                        ]
                                        \revert Voice.NoteHead.color
                                        \revert Voice.Dots.color
                                        \revert Voice.Stem.color
                                        \revert Voice.Beam.color
                                        \revert Voice.Rest.color
                                        \revert Voice.Tie.color
                                        \revert Voice.TupletBracket.color
                                        \revert Voice.TupletNumber.color
                                    }
                                }
                            >>
                            \oneVoice
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
                \tag #'voice5
                {
                    \context Staff = "bassoon staff"
                    {
                        \context Voice = "bassoon voice"
                        {
                            <<
                                \context Voice = "bassoon voice temp 1"
                                {
                                    \times 4/5
                                    {
                                        \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassoon }
                                          %! +SCORE
                                    %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bsn. }
                                        \clef "bass"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \voiceOne
                                        \tweak style #'cross
                                        bf,,16
                                        [
                                        \tweak style #'cross
                                        b,,16
                                        \tweak style #'cross
                                        af,16
                                        \tweak style #'cross
                                        gf,16
                                        _ \accent
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'cross
                                        f,16
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    e,8
                                    [
                                    \tweak style #'cross
                                    ef,16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    df,16
                                    ]
                                    r4
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    e,16
                                    [
                                    \tweak style #'cross
                                    c,16
                                    _ \accent
                                    ~
                                    c,16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    d,16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    e,16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    cs,8.
                                    _ \accent
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    fs,16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    c,16
                                    ]
                                    r8
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    d,16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    b,,8
                                    ]
                                }
                                \context Voice = "bassoon breath voice"
                                {
                                    \once \override Rest.staff-position = -17
                                    \override Voice.NoteHead.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Dots.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Stem.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Beam.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Rest.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Tie.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletBracket.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletNumber.color = #(x11-color 'LightSlateBlue)
                                    \voiceTwo
                                    r4
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                    <
                                        \tweak style #'la
                                        b,,,
                                    >4
                                    - \tweak color #(x11-color 'LightSlateBlue)
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
                                      %! abjad.glissando(7)
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    \afterGrace
                                    <
                                        \tweak style #'la
                                        b,,,
                                    >16
                                    [
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
                                        <b,,,>16
                                    }
                                    \once \override Rest.staff-position = -17
                                    r8.
                                    ]
                                    \once \override Rest.staff-position = -17
                                    r16
                                    [
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                    <
                                        \tweak style #'la
                                        b,,,
                                    >8.
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    _ #(make-dynamic-script
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
                                    ]
                                      %! abjad.glissando(7)
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \hide NoteHead
                                      %! abjad.glissando(1)
                                    \override Accidental.stencil = ##f
                                      %! abjad.glissando(1)
                                    \override NoteColumn.glissando-skip = ##t
                                      %! abjad.glissando(1)
                                    \override NoteHead.no-ledgers = ##t
                                    <
                                        \tweak style #'la
                                        b,,,
                                    >4
                                    - \tweak Y-extent ##f
                                    - \tweak Y-offset 3.5
                                    - \tweak color #(css-color 'darkred)
                                    \startBowSpan #'((0 . -2) (0.25 . -1) (0.375 . -4) (0.625 . -2) (0.75 . -3) (1.0 . 0))
                                    ~
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                    \afterGrace
                                    <
                                        \tweak style #'la
                                        b,,,
                                    >8
                                    [
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
                                        <b,,,>16
                                    }
                                    \once \override Rest.staff-position = -17
                                    r8
                                    \stopBowSpan
                                    ]
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                    \afterGrace
                                    <
                                        \tweak style #'la
                                        b,,,
                                    >8.
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    _ #(make-dynamic-script
                                        (markup
                                            #:whiteout
                                            #:line (
                                                #:general-align Y -2 #:normal-text #:larger "“"
                                                #:hspace -0.1
                                                #:dynamic "pp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                      %! abjad.glissando(7)
                                    - \tweak color #(x11-color 'LightSlateBlue)
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
                                        <b,,,>16
                                        \revert Voice.NoteHead.color
                                        \revert Voice.Dots.color
                                        \revert Voice.Stem.color
                                        \revert Voice.Beam.color
                                        \revert Voice.Rest.color
                                        \revert Voice.Tie.color
                                        \revert Voice.TupletBracket.color
                                        \revert Voice.TupletNumber.color
                                    }
                                }
                            >>
                            \oneVoice
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
  %! abjad.LilyPondFile._get_format_pieces()
