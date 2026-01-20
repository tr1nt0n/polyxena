    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (4 32 34 41 34)))
            \time 3/4
            s1 * 3/4
            - \tweak padding 20
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #7 \box \line { Processing Patch I }
              %! +SCORE
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-2 \raise #28.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #2 } \fontsize #9 { "= 60" } } }
              %! +SCORE
            \noBreak
            \time 7/4
            s1 * 7/4
              %! +SCORE
            \noBreak
            \time 8/4
            s1 * 2
              %! +SCORE
            \noBreak
            \time 9/16
            s1 * 9/16
              %! +SCORE
            \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            - \tweak padding -10
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
                \tag #'voice1
                {
                    \context Staff = "englishhorn staff"
                    {
                        \context Voice = "englishhorn voice"
                        {
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Cor Anglais }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ca. }
                            \tweak style #'cross
                            c'16
                            [
                            r16
                            r16
                            \tweak style #'cross
                            bf'16
                            ]
                            r4
                            r8
                            [
                            \tweak style #'cross
                            df'16
                            r16
                            ]
                            <<
                                \context Voice = "englishhorn voice temp 1"
                                {
                                    \voiceTwo
                                    r2.
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    c'16
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
                                    [
                                    _ (
                                    \tweak style #'xcircle
                                    b16
                                    \tweak style #'xcircle
                                    bf'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    af'16
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
                                    )
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    b16
                                    [
                                    _ (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    g'8.
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    g'16
                                    )
                                    [
                                    \tweak style #'xcircle
                                    cs'16
                                    _ (
                                    \tweak style #'xcircle
                                    g'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    a'16
                                    )
                                    ]
                                    r4
                                }
                                \context Voice = "english horn teeth voice"
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
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        \override Voice.NoteHead.color = #(css-color 'darkred)
                                        \override Voice.Dots.color = #(css-color 'darkred)
                                        \override Voice.Stem.color = #(css-color 'darkred)
                                        \override Voice.Beam.color = #(css-color 'darkred)
                                        \override Voice.Rest.color = #(css-color 'darkred)
                                        \override Voice.Tie.color = #(css-color 'darkred)
                                        \override Voice.TupletBracket.color = #(css-color 'darkred)
                                        \override Voice.TupletNumber.color = #(css-color 'darkred)
                                        \voiceOne
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
                                        r16
                                        r16.
                                        r8
                                        r32
                                    }
                                    \times 4/7
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        a''16
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
                                        b''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        af''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs'''16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'''8
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/5
                                    {
                                        \my-hack-slash
                                        f'''16.
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        fs'''8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'''16.
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 16/23
                                    {
                                        \my-hack-slash
                                        e'''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        d'''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs'''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        c'''16.
                                        )
                                        \stopTextSpan
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        r16
                                        r32..
                                        r16
                                        r64.
                                        r32..
                                        r16
                                        r32..
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
                            \tweak style #'cross
                            c'16
                            [
                            \tweak style #'cross
                            bf'16
                            \tweak style #'cross
                            df'16
                            \tweak style #'cross
                            a'16
                            - \accent
                            ]
                            \tweak style #'cross
                            gs'16
                            [
                            \tweak style #'cross
                            ds'16
                            r8
                            ]
                            r16
                            [
                            \tweak style #'cross
                            d'16
                            \tweak style #'cross
                            f'16
                            \tweak style #'cross
                            df'16
                            ]
                            \tweak style #'cross
                            c'16
                            - \accent
                            [
                            \tweak style #'cross
                            a'16
                            \tweak style #'cross
                            g'16
                            \tweak style #'cross
                            bf'16
                            - \accent
                            ]
                            r2
                            \tweak style #'cross
                            f'16
                            [
                            \tweak style #'cross
                            gf'16
                            \tweak style #'cross
                            ef'16
                            \tweak style #'cross
                            df'16
                            ]
                            r4
                            <<
                                \context Voice = "englishhorn voice temp 2"
                                {
                                    \voiceOne
                                    \tweak style #'cross
                                    b16
                                    [
                                    \tweak style #'cross
                                    cs'16
                                    \tweak style #'cross
                                    as'16
                                    ]
                                    \tweak style #'cross
                                    d'4.
                                    _ \accent
                                }
                                \context Voice = "english horn breath voice 2"
                                {
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                    \override Voice.NoteHead.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Dots.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Stem.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Beam.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Rest.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Tie.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletBracket.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletNumber.color = #(x11-color 'LightSlateBlue)
                                    \voiceTwo
                                    <
                                        \tweak style #'la
                                        g,
                                    >4.
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
                                        g,
                                    >8.
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
                                        <g,>16
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
                                    \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { s. sax. }
                                    \voiceOne
                                    \tweak style #'cross
                                    f16
                                    [
                                    \tweak style #'cross
                                    a16
                                    \tweak style #'cross
                                    bf8
                                    ]
                                    ~
                                    bf4
                                    ~
                                    bf8
                                    [
                                    \tweak style #'cross
                                    gs16
                                    _ \accent
                                    \tweak style #'cross
                                    b16
                                    ]
                                }
                                \context Voice = "saxophone breath voice 1"
                                {
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                    \override Voice.NoteHead.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Dots.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Stem.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Beam.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Rest.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Tie.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletBracket.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletNumber.color = #(x11-color 'LightSlateBlue)
                                    \voiceTwo
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
                                                #:dynamic "mp"
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
                                        <f,>16
                                    }
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
                                        <f,>16
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
                            <<
                                \context Voice = "sopranosaxophone voice temp 3"
                                {
                                    \voiceTwo
                                    r2.
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    g'16
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
                                    [
                                    _ (
                                    \tweak style #'xcircle
                                    b16
                                    \tweak style #'xcircle
                                    a'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    c'16
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
                                    )
                                    ]
                                    r2.
                                }
                                \context Voice = "saxophone teeth voice"
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
                                    \times 4/7
                                    {
                                        \override Voice.NoteHead.color = #(css-color 'darkred)
                                        \override Voice.Dots.color = #(css-color 'darkred)
                                        \override Voice.Stem.color = #(css-color 'darkred)
                                        \override Voice.Beam.color = #(css-color 'darkred)
                                        \override Voice.Rest.color = #(css-color 'darkred)
                                        \override Voice.Tie.color = #(css-color 'darkred)
                                        \override Voice.TupletBracket.color = #(css-color 'darkred)
                                        \override Voice.TupletNumber.color = #(css-color 'darkred)
                                        \voiceOne
                                        r16
                                        r32
                                        r16
                                        r16
                                        r16.
                                        r8
                                    }
                                    \times 4/5
                                    {
                                        r16.
                                        r8
                                        r16.
                                    }
                                    \times 16/23
                                    {
                                        r16
                                        r32
                                        r32.
                                        r64
                                        r32.
                                        r16
                                        r16.
                                    }
                                    \times 2/3
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        bf''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #13
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        c'''32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'''64.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b''32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        af''32..
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
                            <<
                                \context Voice = "sopranosaxophone voice temp 2"
                                {
                                    \voiceOne
                                    r4
                                    \tweak style #'cross
                                    ef'4
                                    ~
                                    ef'8
                                    [
                                    \tweak style #'cross
                                    c'8
                                    ]
                                    ~
                                    c'16
                                    [
                                    \tweak style #'cross
                                    e'8.
                                    ]
                                    ~
                                    e'4
                                    r2.
                                }
                                \context Voice = "saxophone breath voice 2"
                                {
                                    \once \override Rest.staff-position = -12
                                    \override Voice.NoteHead.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Dots.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Stem.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Beam.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Rest.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Tie.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletBracket.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletNumber.color = #(x11-color 'LightSlateBlue)
                                    \voiceTwo
                                    r2
                                    \once \override Rest.staff-position = -12
                                    r8
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
                                        c
                                    >8
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
                                    ]
                                    - \tweak Y-extent ##f
                                    - \tweak Y-offset 5.5
                                    - \tweak color #(css-color 'darkred)
                                    \startBowSpan #'((0 . -3) (0.8 . -0.5) (1.0 . -1))
                                      %! abjad.glissando(7)
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    \<
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
                                        c
                                    >8.
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
                                        <c>16
                                        - \tweak color #(x11-color 'LightSlateBlue)
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
                                    }
                                    \once \override Rest.staff-position = -12
                                    r16
                                    \stopBowSpan
                                    ]
                                    \once \override Rest.staff-position = -12
                                    r1
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
                            <<
                                \context Voice = "sopranosaxophone voice temp 4"
                                {
                                    \voiceOne
                                    \tweak style #'cross
                                    ef'16
                                    [
                                    \tweak style #'cross
                                    cs'16
                                    \tweak style #'cross
                                    e'16
                                    ]
                                    \tweak style #'cross
                                    c'16
                                    _ \accent
                                    [
                                    \tweak style #'cross
                                    b16
                                    \tweak style #'cross
                                    fs'16
                                    ]
                                    ~
                                    fs'8.
                                }
                                \context Voice = "saxophone breath voice 3"
                                {
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                    \override Voice.NoteHead.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Dots.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Stem.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Beam.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Rest.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Tie.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletBracket.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletNumber.color = #(x11-color 'LightSlateBlue)
                                    \voiceTwo
                                    <
                                        \tweak style #'la
                                        g,
                                    >4.
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
                                        g,
                                    >8.
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
                                        <g,>16
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
                \tag #'voice3
                {
                    \context Staff = "clarinetinbflat staff"
                    {
                        \context Voice = "clarinetinbflat voice"
                        {
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Clarinet in B-flat }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { cl. }
                            \tweak style #'xcircle
                            f4
                            \pp
                            _ \markup \fontsize #3 { \hspace #-6 { \override #'(font-name . "Bodoni72 Book Italic") { Always so delicately it becomes distant, ghostly. } } }
                            (
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            f8.
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            af16
                            ]
                            ~
                            \tweak style #'xcircle
                            af4
                            )
                            <<
                                \context Voice = "clarinetinbflat voice temp 2"
                                {
                                    \voiceTwo
                                    r1
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    af16
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
                                    [
                                    _ (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    g8.
                                    ]
                                    ~
                                    \tweak style #'xcircle
                                    g8
                                    )
                                    r8
                                    r4
                                }
                                \context Voice = "clarinet teeth voice"
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
                                    \times 4/7
                                    {
                                        \override Voice.NoteHead.color = #(css-color 'darkred)
                                        \override Voice.Dots.color = #(css-color 'darkred)
                                        \override Voice.Stem.color = #(css-color 'darkred)
                                        \override Voice.Beam.color = #(css-color 'darkred)
                                        \override Voice.Rest.color = #(css-color 'darkred)
                                        \override Voice.Tie.color = #(css-color 'darkred)
                                        \override Voice.TupletBracket.color = #(css-color 'darkred)
                                        \override Voice.TupletNumber.color = #(css-color 'darkred)
                                        \voiceOne
                                        r16
                                        r32
                                        r16
                                        r16
                                        r16.
                                        r8
                                    }
                                    \times 4/5
                                    {
                                        r16.
                                        r8
                                        r16.
                                    }
                                    \times 16/23
                                    {
                                        r16
                                        r32
                                        r32.
                                        r64
                                        r32.
                                        r16
                                        r16.
                                    }
                                    \times 2/3
                                    {
                                        r16
                                        r32..
                                        r16
                                        r64.
                                        r32..
                                        r16
                                        r32..
                                    }
                                    \times 4/5
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
                                        - \tweak padding #14.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        f'''16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'''16..
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 16/27
                                    {
                                        \my-hack-slash
                                        e'''32.
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        d'''16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs'''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b''8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        a''16..
                                        )
                                        \stopTextSpan
                                        ]
                                    }
                                    \times 8/15
                                    {
                                        r8..
                                        r8.
                                        r16
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
                            <<
                                \context Voice = "clarinetinbflat voice temp 1"
                                {
                                    \voiceOne
                                    r2
                                    r8
                                    [
                                    \tweak style #'cross
                                    af8
                                    ]
                                    ~
                                    af4
                                    ~
                                    af8
                                    [
                                    r8
                                    ]
                                    r8
                                    [
                                    \tweak style #'cross
                                    ef'8
                                    ]
                                    ~
                                    ef'4
                                    \tweak style #'cross
                                    c'8.
                                    [
                                    \tweak style #'cross
                                    e16
                                    ]
                                }
                                \context Voice = "clarinet breath voice 1"
                                {
                                    \once \override Rest.staff-position = -16
                                    \override Voice.NoteHead.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Dots.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Stem.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Beam.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Rest.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Tie.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletBracket.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletNumber.color = #(x11-color 'LightSlateBlue)
                                    \voiceTwo
                                    r2
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
                                                #:dynamic "pp"
                                                #:hspace -0.25
                                                #:general-align Y -2 #:normal-text #:larger "”"
                                                )
                                            )
                                        )
                                    - \tweak Y-extent ##f
                                    - \tweak Y-offset 3
                                    - \tweak color #(css-color 'darkred)
                                    \startBowSpan #'((0 . -3) (0.8 . -0.5) (1.0 . -1))
                                      %! abjad.glissando(7)
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    \<
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
                                    }
                                    \once \override Rest.staff-position = -16
                                    r8
                                    \stopBowSpan
                                    ]
                                    \once \override Rest.staff-position = -16
                                    r2
                                    \once \override Rest.staff-position = -16
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
                                        f,
                                    >8.
                                    - \tweak color #(x11-color 'LightSlateBlue)
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
                                    ]
                                    - \tweak Y-extent ##f
                                    - \tweak Y-offset 3.5
                                    - \tweak color #(css-color 'darkred)
                                    \startBowSpan #'((0 . -1) (0.2857142857142857 . -2) (0.42857142857142855 . -0.5) (1.0 . -3))
                                      %! abjad.glissando(7)
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                      %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                      %! abjad.glissando(7)
                                    \glissando
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    \>
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
                                    >4
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
                                        \stopBowSpan
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
                            <<
                                \context Voice = "clarinetinbflat voice temp 3"
                                {
                                    \voiceOne
                                    \tweak style #'cross
                                    f16
                                    [
                                    \tweak style #'cross
                                    a16
                                    \tweak style #'cross
                                    bf16
                                    ]
                                    ~
                                    bf4.
                                }
                                \context Voice = "clarinet breath voice 2"
                                {
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                    \override Voice.NoteHead.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Dots.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Stem.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Beam.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Rest.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Tie.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletBracket.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletNumber.color = #(x11-color 'LightSlateBlue)
                                    \voiceTwo
                                    <
                                        \tweak style #'la
                                        g,
                                    >4.
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
                                        g,
                                    >8.
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
                                        <g,>16
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
                \tag #'voice4
                {
                    \context Staff = "bassclarinet staff"
                    {
                        \context Voice = "bassclarinet voice"
                        {
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bass Clarinet }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { b. cl. }
                            \clef "bass"
                            \tweak style #'xcircle
                            e2
                            \pp
                            ^ \markup { \hspace #-2 { ( \note {2} #2  ) } }
                            _ \markup \fontsize #3 { \hspace #-6 { \override #'(font-name . "Bodoni72 Book Italic") { Always so delicately it becomes distant, ghostly. } } }
                            \tweak style #'xcircle
                            e4
                            - \tenuto
                            <<
                                \context Voice = "bassclarinet voice temp 1"
                                {
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \voiceTwo
                                    \tweak style #'xcircle
                                    fs16
                                    [
                                    _ (
                                    \tweak style #'xcircle
                                    gs16
                                    \tweak style #'xcircle
                                    f16
                                    )
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    a16
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
                                    ]
                                    ~
                                    \tweak style #'xcircle
                                    a4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    a8
                                    [
                                    \tweak style #'xcircle
                                    a16
                                    _ (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    cs16
                                    )
                                    ]
                                    \tweak style #'xcircle
                                    d2
                                    _ \markup { \hspace #-2 { ( \note {2} #2  ) } }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    c16
                                    [
                                    _ (
                                    \tweak style #'xcircle
                                    ds16
                                    \tweak style #'xcircle
                                    f16
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
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    d16
                                    )
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    fs16
                                    [
                                    _ (
                                    \tweak style #'xcircle
                                    g16
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
                                    \tweak style #'xcircle
                                    a16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    b16
                                    ]
                                    ~
                                    \tweak style #'xcircle
                                    b4
                                    )
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    g16
                                    [
                                    _ (
                                    \tweak style #'xcircle
                                    fs16
                                    \tweak style #'xcircle
                                    f16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    ds16
                                    )
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    fs16
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
                                    [
                                    _ (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    d8.
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    d16
                                    )
                                    [
                                    \tweak style #'xcircle
                                    gs16
                                    _ (
                                    \tweak style #'xcircle
                                    d16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    e16
                                    )
                                    ]
                                    r2.
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    e16
                                    [
                                    _ (
                                    \tweak style #'xcircle
                                    cs16
                                    \tweak style #'xcircle
                                    f16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    fs16
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
                                        af'16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #15
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        bf'16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b'16..
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 16/27
                                    {
                                        \my-hack-slash
                                        a'32.
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        g'16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f'8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c''16..
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 8/15
                                    {
                                        \my-hack-slash
                                        b'8..
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        ef''8.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'16
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        \my-hack-slash
                                        b'64.
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        d''128
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf'64.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'32.
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 16/25
                                    {
                                        \my-hack-slash
                                        d''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        f'32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        af'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b'64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs''16.
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/5
                                    {
                                        \my-hack-slash
                                        d''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        ef''16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c''8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf'32
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/7
                                    {
                                        \my-hack-slash
                                        a'16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        af'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        af'16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'8
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/5
                                    {
                                        \my-hack-slash
                                        fs'16.
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        af'8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f'16.
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 16/23
                                    {
                                        \my-hack-slash
                                        bf'16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        e'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef''64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        af'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f'16.
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        \my-hack-slash
                                        fs'16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        d''32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f'64.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef''32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d''32..
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/5
                                    {
                                        \my-hack-slash
                                        cs''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        fs'16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        g'16..
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
                                        af'16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #15.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "( teeth )" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -27
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        cs''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf'64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf'64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        a'16.
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
                            <<
                                \context Voice = "bassclarinet voice temp 2"
                                {
                                    \voiceTwo
                                    \tweak style #'xcircle
                                    g8.
                                    (
                                    \tweak style #'xcircle
                                    f4.
                                    )
                                }
                                \context Voice = "bass clarinet teeth voice 2"
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
                                        e'16..
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        b'16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        d''32
                                        )
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        r4.
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
                \tag #'voice5
                {
                    \context Staff = "bassoon staff"
                    {
                        \context Voice = "bassoon voice"
                        {
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassoon }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bsn. }
                            \clef "bass"
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            f,8.
                            \pp
                            _ \markup \fontsize #3 { \hspace #-6 { \override #'(font-name . "Bodoni72 Book Italic") { Always so delicately it becomes distant, ghostly. } } }
                            [
                            (
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            ef,16
                            ]
                            ~
                            \tweak style #'xcircle
                            ef,4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            ef,8
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            gf,8
                            )
                            ]
                            <<
                                \context Voice = "bassoon voice temp 1"
                                {
                                    \voiceTwo
                                    r2
                                    r16
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    e,16
                                    [
                                    _ (
                                    \tweak style #'xcircle
                                    fs,16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    ds,16
                                    )
                                    ]
                                    \tweak style #'xcircle
                                    g,4
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
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    g,8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    g,16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    b,,16
                                    [
                                    _ (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    c,8.
                                    ]
                                    ~
                                    \tweak style #'xcircle
                                    c,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    c,16
                                    )
                                    [
                                    \tweak style #'xcircle
                                    bf,,16
                                    _ (
                                    \tweak style #'xcircle
                                    df,16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    ef,16
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
                                    )
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    c,16
                                    [
                                    _ (
                                    \tweak style #'xcircle
                                    e,16
                                    \tweak style #'xcircle
                                    f,16
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
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    g,16
                                    )
                                    ]
                                    \tweak style #'xcircle
                                    a,4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    a,16
                                    [
                                    \tweak style #'xcircle
                                    f,16
                                    _ (
                                    \tweak style #'xcircle
                                    e,16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    ef,16
                                    )
                                    ]
                                    r1
                                }
                                \context Voice = "bassoon teeth voice"
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
                                    \times 16/25
                                    {
                                        \override Voice.NoteHead.color = #(css-color 'darkred)
                                        \override Voice.Dots.color = #(css-color 'darkred)
                                        \override Voice.Stem.color = #(css-color 'darkred)
                                        \override Voice.Beam.color = #(css-color 'darkred)
                                        \override Voice.Rest.color = #(css-color 'darkred)
                                        \override Voice.Tie.color = #(css-color 'darkred)
                                        \override Voice.TupletBracket.color = #(css-color 'darkred)
                                        \override Voice.TupletNumber.color = #(css-color 'darkred)
                                        \voiceOne
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
                                        r16
                                        r16.
                                        r8
                                        r32
                                    }
                                    \times 4/7
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        bf'16
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
                                        fs'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'8
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/5
                                    {
                                        \my-hack-slash
                                        bf'16.
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        cs'8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'16.
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 16/23
                                    {
                                        \my-hack-slash
                                        c'16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        e'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f'32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a'32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b'16.
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        \my-hack-slash
                                        af'16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        fs'32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'64.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'32..
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/5
                                    {
                                        \my-hack-slash
                                        c'16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        d'16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs'16..
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 16/27
                                    {
                                        \my-hack-slash
                                        fs'32.
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        c'16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b'64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'16..
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 8/15
                                    {
                                        \my-hack-slash
                                        cs'8..
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        d'8.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf'16
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        \my-hack-slash
                                        a'64.
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        cs'128
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b'64.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf'32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'32.
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 16/25
                                    {
                                        \my-hack-slash
                                        b'16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        ef'32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b'64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        af'16.
                                        )
                                        \stopTextSpan
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        r16
                                        r16.
                                        r8
                                        r32
                                    }
                                    \times 4/7
                                    {
                                        r16
                                        r32
                                        r16
                                        r16
                                        r16.
                                        r8
                                    }
                                    \times 4/5
                                    {
                                        r16.
                                        r8
                                        r16.
                                    }
                                    \times 16/23
                                    {
                                        r16
                                        r32
                                        r32.
                                        r64
                                        r32.
                                        r16
                                        r16.
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
                            <<
                                \context Voice = "bassoon voice temp 2"
                                {
                                    \voiceOne
                                    \tweak style #'cross
                                    g,16
                                    [
                                    \tweak style #'cross
                                    bf,,16
                                    \tweak style #'cross
                                    gf,16
                                    ]
                                    \tweak style #'cross
                                    f,16
                                    _ \accent
                                    [
                                    \tweak style #'cross
                                    d,16
                                    \tweak style #'cross
                                    c,16
                                    ]
                                    \tweak style #'cross
                                    ef,8.
                                }
                                \context Voice = "bassoon breath voice"
                                {
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                    \override Voice.NoteHead.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Dots.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Stem.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Beam.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Rest.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Tie.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletBracket.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletNumber.color = #(x11-color 'LightSlateBlue)
                                    \voiceTwo
                                    <
                                        \tweak style #'la
                                        c,,
                                    >4.
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
                                        c,,
                                    >8.
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
                                        <c,,>16
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
  %! abjad.LilyPondFile._get_format_pieces()
