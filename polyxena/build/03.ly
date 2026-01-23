    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2 36 36 36 36)))
            \time 7/4
            s1 * 7/4
            - \tweak padding 20
            ^ \markup \override #'(font-name . " Bodoni72 Book ") \override #'(style . "box") \override #'(box-padding . 0.5) \whiteout \fontsize #7 \box \line { Processing Patch III }
              %! +SCORE
            \noBreak
            \time 8/4
            s1 * 2
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2 36 36 36 36)))
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
            \time 8/4
            s1 * 2
              %! +SCORE
            \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
            \time 7/4
            s1 * 7/4
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (7 36 36 36 36)))
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
            \time 7/4
            s1 * 7/4
              %! +SCORE
            \noBreak
            \time 8/4
            s1 * 2
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (3 28)))
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \noBreak
            \time 8/4
            s1 * 2
              %! +SCORE
            \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \break
              %! +SCORE
            \noPageBreak
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (3 30 27 28 20)))
            \time 7/4
            s1 * 7/4
              %! +SCORE
            \noBreak
            \time 3/4
            s1 * 3/4
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2 36 36 36 36)))
            \time 7/4
            s1 * 7/4
              %! +SCORE
            \noBreak
            \time 8/4
            s1 * 2
              %! +SCORE
            \break
              %! +SCORE
            \once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2 36 36 36 36)))
            \time 7/4
            s1 * 7/4
              %! +SCORE
            \noBreak
            \time 8/4
            s1 * 2
              %! +SCORE
            \noBreak
            \time 3/4
            s1 * 3/4
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
            _ \long-fermata
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
                            r8.
                            ]
                            r8
                            [
                            \tweak style #'cross
                            a'16
                            r16
                            ]
                            r16
                            [
                            \tweak style #'cross
                            cs'16
                            r8
                            ]
                            r4
                            \tweak style #'cross
                            a'16
                            [
                            r8.
                            ]
                            r4
                            \tweak style #'cross
                            a'16
                            [
                            r8.
                            ]
                            \tweak style #'cross
                            e'16
                            [
                            r8.
                            ]
                            r8
                            [
                            \tweak style #'cross
                            c'16
                            r16
                            ]
                            r16
                            [
                            \tweak style #'cross
                            bf'16
                            r8
                            ]
                            r4
                            \tweak style #'cross
                            df'16
                            [
                            r8.
                            ]
                            r4
                            \tweak style #'cross
                            bf'16
                            [
                            r8.
                            ]
                            \tweak style #'cross
                            ef'16
                            [
                            r8.
                            ]
                            s1 * 3/4
                            \tweak style #'cross
                            d'16
                            [
                            r8.
                            ]
                            r8.
                            [
                            \tweak style #'cross
                            f'16
                            ]
                            r1.
                            <<
                                \context Voice = "englishhorn voice temp 1"
                                {
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \voiceTwo
                                    \tweak style #'xcircle
                                    f'16
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
                                    (
                                    \tweak style #'xcircle
                                    fs'16
                                    \tweak style #'xcircle
                                    ds'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    cs'16
                                    ]
                                    ~
                                    \tweak style #'xcircle
                                    cs'4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    cs'8
                                    )
                                    [
                                    \tweak style #'xcircle
                                    a'16
                                    (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    b16
                                    )
                                    ]
                                }
                                \context Voice = "english horn teeth voice 1"
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
                                        b''16
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
                                        d'''16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf''8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a''32
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/7
                                    {
                                        \my-hack-slash
                                        e'''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        ef'''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        af''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'''16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'''8
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/5
                                    {
                                        \my-hack-slash
                                        d'''16.
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        cs'''8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        bf''16.
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
                            \tweak style #'cross
                            a'16
                            [
                            r8.
                            ]
                            \tweak style #'cross
                            e'16
                            [
                            r8.
                            ]
                            r8
                            [
                            \tweak style #'cross
                            c'16
                            r16
                            ]
                            r16
                            [
                            \tweak style #'cross
                            bf'16
                            r8
                            ]
                            r4
                            \tweak style #'cross
                            df'16
                            [
                            r8.
                            ]
                            r4
                            <<
                                \context Voice = "englishhorn voice temp 2"
                                {
                                    \times 4/6
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \voiceTwo
                                        \tweak style #'xcircle
                                        e'16
                                        [
                                        ^ (
                                        \tweak style #'xcircle
                                        cs'16
                                        \tweak style #'xcircle
                                        f'16
                                        )
                                        \tweak style #'xcircle
                                        fs'16
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        ef'16
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        cs'16
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        c'8
                                        [
                                        \tweak style #'xcircle
                                        b8
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        a'8
                                        )
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        bf'32
                                        ^ \accent
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
                                        [
                                        ^ (
                                        \tweak style #'xcircle
                                        fs'32
                                        \tweak style #'xcircle
                                        f'32
                                        )
                                        \tweak style #'xcircle
                                        gs'32
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        bf'32
                                        \tweak style #'xcircle
                                        g'32
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        b32
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    cs'16.
                                    [
                                    \tweak style #'xcircle
                                    ef'32
                                    ~
                                    \tweak style #'xcircle
                                    ef'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    c'16
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    c'32
                                    )
                                    [
                                    \tweak style #'xcircle
                                    e'16.
                                    ^ \accent
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
                                    ^ (
                                    \tweak style #'xcircle
                                    f'16.
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    d'32
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    d'16
                                    [
                                    \tweak style #'xcircle
                                    c'16
                                    ~
                                    \tweak style #'xcircle
                                    c'32
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    ef'16.
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    bf'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    e'8
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    d'8
                                    )
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    f'8
                                    ^ \accent
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
                                    ]
                                    ^ (
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        ef'8
                                        [
                                        \tweak style #'xcircle
                                        f'8
                                        \tweak style #'xcircle
                                        d'8
                                        )
                                        \tweak style #'xcircle
                                        fs'8
                                        ^ \accent
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
                                        ^ (
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        g'8
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    b8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    cs'8
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    bf'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    d'8
                                    )
                                    ]
                                    \times 4/6
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        c'8
                                        ^ \accent
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
                                        [
                                        ^ (
                                        \tweak style #'xcircle
                                        bf'8
                                        )
                                        \tweak style #'xcircle
                                        cs'8
                                        \tweak style #'xcircle
                                        a'8
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        gs'8
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        ef'8
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \tweak style #'xcircle
                                        d'4
                                        \tweak style #'xcircle
                                        fs'4
                                        \tweak style #'xcircle
                                        g'4
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        d'16
                                        )
                                        [
                                        \tweak style #'xcircle
                                        f'16
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        cs'16
                                        \tweak style #'xcircle
                                        c'16
                                        \tweak style #'xcircle
                                        a'16
                                        \tweak style #'xcircle
                                        g'16
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        bf'16
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    f'32
                                    [
                                    \tweak style #'xcircle
                                    gs'32
                                    )
                                    \tweak style #'xcircle
                                    bf'32
                                    ^ \accent
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
                                    - \tweak circled-tip ##t
                                    \>
                                    ^ (
                                    \tweak style #'xcircle
                                    g'32
                                    \tweak style #'xcircle
                                    b32
                                    \tweak style #'xcircle
                                    c'32
                                    )
                                    \tweak style #'xcircle
                                    d'32
                                    ^ \accent
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
                                    ^ (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    e'32
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    f'16
                                    [
                                    \tweak style #'xcircle
                                    fs'16
                                    \tweak style #'xcircle
                                    ef'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    cs'16
                                    )
                                    ]
                                    \times 4/6
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        c'16
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        b16
                                        \tweak style #'xcircle
                                        bf'16
                                        )
                                        \tweak style #'xcircle
                                        gs'16
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        b16
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        g'16
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \tweak style #'xcircle
                                        a'4
                                        \tweak style #'xcircle
                                        b4
                                        \tweak style #'xcircle
                                        gs'4
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        cs'16
                                        )
                                        [
                                        \tweak style #'xcircle
                                        g'16
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        a'16
                                        \tweak style #'xcircle
                                        fs'16
                                        \tweak style #'xcircle
                                        bf'16
                                        \tweak style #'xcircle
                                        b16
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        gs'16
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    a'16
                                    [
                                    \tweak style #'xcircle
                                    f'16
                                    )
                                    \tweak style #'xcircle
                                    e'16
                                    ^ \accent
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
                                    ^ (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    gs'16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    fs'16
                                    [
                                    \tweak style #'xcircle
                                    a'16
                                    )
                                    \tweak style #'xcircle
                                    f'16
                                    ^ \accent
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
                                    ^ (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    e'16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    a'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    fs'8
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    bf'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    b8
                                    )
                                    ]
                                    \times 4/6
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        e'16
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        cs'16
                                        \tweak style #'xcircle
                                        f'16
                                        )
                                        \tweak style #'xcircle
                                        fs'16
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        ef'16
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        cs'16
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        c'8
                                        [
                                        \tweak style #'xcircle
                                        b8
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        a'8
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        bf'32
                                        )
                                        [
                                        \tweak style #'xcircle
                                        fs'32
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        f'32
                                        \tweak style #'xcircle
                                        gs'32
                                        \tweak style #'xcircle
                                        bf'32
                                        \tweak style #'xcircle
                                        g'32
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        b32
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    cs'16.
                                    [
                                    \tweak style #'xcircle
                                    ef'32
                                    ~
                                    \tweak style #'xcircle
                                    ef'16
                                    )
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    c'16
                                    ^ \accent
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
                                    ^ (
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    c'32
                                    [
                                    \tweak style #'xcircle
                                    e'16.
                                    \tweak style #'xcircle
                                    f'16.
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    d'32
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    d'16
                                    )
                                    [
                                    \tweak style #'xcircle
                                    c'16
                                    ^ \accent
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
                                    ^ (
                                    ~
                                    \tweak style #'xcircle
                                    c'32
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    ef'16.
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    bf'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    e'8
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    d'8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    f'8
                                    )
                                    ]
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        ef'8
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        f'8
                                        \tweak style #'xcircle
                                        d'8
                                        )
                                        \tweak style #'xcircle
                                        fs'8
                                        ^ \accent
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
                                        ^ (
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        g'8
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    b16
                                    [
                                    \tweak style #'xcircle
                                    cs'16
                                    \tweak style #'xcircle
                                    bf'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    d'16
                                    ]
                                    \times 4/6
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        c'16
                                        )
                                        [
                                        \tweak style #'xcircle
                                        bf'16
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        cs'16
                                        \tweak style #'xcircle
                                        a'16
                                        \tweak style #'xcircle
                                        gs'16
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        ef'16
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        d'8
                                        [
                                        \tweak style #'xcircle
                                        fs'8
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        g'8
                                        )
                                        ]
                                    }
                                }
                                \context Voice = "english horn teeth voice 2"
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
                                    \times 7/9
                                    {
                                        \override Dots.staff-position = #2
                                        \override Voice.NoteHead.color = #(css-color 'darkred)
                                        \override Voice.Dots.color = #(css-color 'darkred)
                                        \override Voice.Stem.color = #(css-color 'darkred)
                                        \override Voice.Beam.color = #(css-color 'darkred)
                                        \override Voice.Rest.color = #(css-color 'darkred)
                                        \override Voice.Tie.color = #(css-color 'darkred)
                                        \override Voice.TupletBracket.color = #(css-color 'darkred)
                                        \override Voice.TupletNumber.color = #(css-color 'darkred)
                                        \voiceOne
                                        c''''1.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #10.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -0.5
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        cs'''\breve.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        af'''1
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b'''2
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'''\longa
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \afterGrace
                                        fs'''\breve..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \revert Dots.staff-position
                                            \once \override NoteHead.transparent = ##t
                                            ef'''16
                                            )
                                            \stopTextSpan
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
                                }
                            >>
                            \oneVoice
                            s1 * 7/4
                            \tweak style #'xcircle
                            ef'4
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
                            _ \markup \fontsize #3 { \hspace #-3 { \override #'(font-name . "Bodoni72 Book Italic") { \column { \line { "Hard to tell whether it's so far away it's barely audible," } \line { "or so close as to become indistinguishable." } } } } }
                            (
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            ef'16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            b8.
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            b16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            c'8.
                            ]
                            ~
                            \tweak style #'xcircle
                            c'8.
                            )
                            r16
                            r2
                            r16
                            \tweak style #'xcircle
                            f'8.
                            (
                            ~
                            \tweak style #'xcircle
                            f'4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            f'16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            f'8.
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            f'16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            c'8.
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            c'8.
                            )
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            a'16
                            ]
                            (
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            a'8
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            cs'8
                            ]
                            ~
                            \tweak style #'xcircle
                            cs'4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            cs'16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            a'8.
                            ]
                            ~
                            \tweak style #'xcircle
                            a'4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            a'16
                            )
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            a'8.
                            ]
                            (
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            a'16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            e'8.
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            e'8.
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            c'16
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            c'8
                            )
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            bf'8
                            ]
                            (
                            ~
                            \tweak style #'xcircle
                            bf'4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            bf'16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            cs'8.
                            ]
                            ~
                            \tweak style #'xcircle
                            cs'4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            cs'16
                            )
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            bf'8.
                            ]
                            (
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            bf'16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            ef'8.
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            ef'8
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            b8
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            b8
                            )
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            c'8
                            ]
                            (
                            ~
                            \tweak style #'xcircle
                            c'4
                            \tweak style #'xcircle
                            d'8
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            d'16
                            )
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            d'8
                            ]
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
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Soprano Saxophone }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { s. sax. }
                            s1 * 7/4
                            \tweak style #'cross
                            c'16
                            [
                            r16
                            r16
                            \tweak style #'cross
                            e'16
                            ]
                            r4
                            r8
                            [
                            \tweak style #'cross
                            c'16
                            r16
                            ]
                            r4
                            r8
                            [
                            \tweak style #'cross
                            c'16
                            r16
                            ]
                            r8
                            [
                            \tweak style #'cross
                            g'16
                            r16
                            ]
                            r4
                            \tweak style #'cross
                            ef'16
                            [
                            r16
                            r16
                            \tweak style #'cross
                            df'16
                            ]
                            <<
                                \context Voice = "sopranosaxophone voice temp 1"
                                {
                                    \voiceTwo
                                    \tweak style #'xcircle
                                    c'4
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
                                    \tweak style #'xcircle
                                    g'4
                                    ~
                                    \tweak style #'xcircle
                                    g'8
                                    [
                                    \tweak style #'xcircle
                                    ef'8
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
                                    \times 16/23
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
                                        a''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #12.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        cs'''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b''64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        g''16.
                                        )
                                        \stopTextSpan
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        r4.
                                    }
                                    \times 4/5
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        cs'''32
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #12.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -3
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        b''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'''64.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        c'''32..
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
                            \tweak style #'cross
                            c'16
                            [
                            r8.
                            ]
                            r4
                            \tweak style #'cross
                            c'16
                            [
                            r8.
                            ]
                            \tweak style #'cross
                            g'16
                            [
                            r8.
                            ]
                            r8
                            [
                            \tweak style #'cross
                            ef'16
                            r16
                            ]
                            r16
                            [
                            \tweak style #'cross
                            df'16
                            r8
                            ]
                            r4
                            \tweak style #'cross
                            e'16
                            [
                            r8.
                            ]
                            <<
                                \context Voice = "sopranosaxophone voice temp 2"
                                {
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \voiceTwo
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
                                    (
                                    \tweak style #'xcircle
                                    d'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    b8
                                    ]
                                    ~
                                    \tweak style #'xcircle
                                    b4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    b8
                                    )
                                    [
                                    \tweak style #'xcircle
                                    c'16
                                    (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    af'16
                                    )
                                    ]
                                }
                                \context Voice = "saxophone teeth voice 2"
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
                                        bf''16.
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
                                        - \tweak bound-details.right.padding -0.5
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        a''8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'''16.
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 16/23
                                    {
                                        \my-hack-slash
                                        ef'''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        g'''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        af''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'''64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs'''16.
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        \my-hack-slash
                                        bf''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        af''32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'''64.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a''32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        af''32..
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
                            r2.
                            \tweak style #'cross
                            gf'16
                            [
                            r8.
                            ]
                            r16
                            [
                            \tweak style #'cross
                            d'16
                            r8
                            ]
                            r2
                            <<
                                \context Voice = "sopranosaxophone voice temp 3"
                                {
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \voiceTwo
                                        \tweak style #'xcircle
                                        gf'16
                                        [
                                        ^ (
                                        \tweak style #'xcircle
                                        af'16
                                        \tweak style #'xcircle
                                        f'16
                                        )
                                        \tweak style #'xcircle
                                        a'16
                                        ^ \accent
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
                                        ^ (
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        bf16
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    d'16
                                    [
                                    \tweak style #'xcircle
                                    e'16
                                    \tweak style #'xcircle
                                    df'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    f'16
                                    )
                                    ]
                                    \times 4/6
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        ef'16
                                        ^ \accent
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
                                        [
                                        ^ (
                                        \tweak style #'xcircle
                                        df'16
                                        \tweak style #'xcircle
                                        e'16
                                        )
                                        \tweak style #'xcircle
                                        c'16
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        b16
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        gf'16
                                        ]
                                    }
                                    \tweak style #'xcircle
                                    f'4
                                    \tweak style #'xcircle
                                    a'4
                                    \tweak style #'xcircle
                                    bf4
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        f'16
                                        )
                                        [
                                        \tweak style #'xcircle
                                        af'16
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        e'16
                                        \tweak style #'xcircle
                                        ef'16
                                        \tweak style #'xcircle
                                        c'16
                                        \tweak style #'xcircle
                                        bf16
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        df'16
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    af'16
                                    [
                                    \tweak style #'xcircle
                                    b16
                                    )
                                    \tweak style #'xcircle
                                    df'16
                                    ^ \accent
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
                                    ^ (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    bf16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    d'16
                                    [
                                    \tweak style #'xcircle
                                    ef'16
                                    )
                                    \tweak style #'xcircle
                                    f'16
                                    ^ \accent
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
                                    ^ (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    g'16
                                    )
                                    ]
                                }
                                \context Voice = "saxophone teeth voice 3"
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
                                    \times 20/32
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
                                        f'''4.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #13.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -0.5
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        e'''8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'''4.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f'''2
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs'''2..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'''1
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \afterGrace
                                        f'''2.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \revert Dots.staff-position
                                            \once \override NoteHead.transparent = ##t
                                            d'''16
                                            )
                                            \stopTextSpan
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
                                }
                            >>
                            \oneVoice
                            s1 * 2
                            s1 * 3/4
                            s1 * 2
                            s1 * 3/4
                            <<
                                \context Voice = "sopranosaxophone voice temp 4"
                                {
                                    \voiceTwo
                                    r2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    gf'8
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
                                    [
                                    (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    e'8
                                    )
                                    ]
                                    r2
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        df'16
                                        [
                                        (
                                        \tweak style #'xcircle
                                        a'16
                                        \tweak style #'xcircle
                                        af'16
                                        \tweak style #'xcircle
                                        b16
                                        \tweak style #'xcircle
                                        df'16
                                        \tweak style #'xcircle
                                        bf16
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        d'16
                                        )
                                        ]
                                    }
                                }
                                \context Voice = "saxophone teeth voice 4"
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
                                        \override Voice.NoteHead.color = #(css-color 'darkred)
                                        \override Voice.Dots.color = #(css-color 'darkred)
                                        \override Voice.Stem.color = #(css-color 'darkred)
                                        \override Voice.Beam.color = #(css-color 'darkred)
                                        \override Voice.Rest.color = #(css-color 'darkred)
                                        \override Voice.Tie.color = #(css-color 'darkred)
                                        \override Voice.TupletBracket.color = #(css-color 'darkred)
                                        \override Voice.TupletNumber.color = #(css-color 'darkred)
                                        \voiceOne
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
                                        c''''64.
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
                                        cs'''128
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        af'''64.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b'''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'''32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        ef'''32.
                                        )
                                        ]
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
                                        cs'''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        e'''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'''16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs'''8
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
                                        \revert Dots.staff-position
                                        af'''16.
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
                            s1 * 3/4
                            <<
                                \context Voice = "sopranosaxophone voice temp 5"
                                {
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \voiceOne
                                    \tweak style #'cross
                                    f'16
                                    [
                                    \tweak style #'cross
                                    af'16
                                    \tweak style #'cross
                                    e'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    ef'16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    c'16
                                    [
                                    \tweak style #'cross
                                    bf16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    df'8
                                    ]
                                    ~
                                    df'4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    df'8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    af'16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    a'16
                                    [
                                    \tweak style #'cross
                                    gf'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    e'8
                                    ]
                                    ~
                                    e'4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e'16
                                    [
                                    \tweak style #'cross
                                    c'16
                                    \tweak style #'cross
                                    d'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    b16
                                    ]
                                    ~
                                    b4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    c'16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    af'16
                                    [
                                    \tweak style #'cross
                                    g'16
                                    \tweak style #'cross
                                    b16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    a'16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    c'16
                                    [
                                    \tweak style #'cross
                                    af'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    g'8
                                    ]
                                    ~
                                    g'8.
                                    r16
                                    r4
                                    \tweak style #'cross
                                    e'4
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    df'16
                                    [
                                    \tweak style #'cross
                                    a'16
                                    \tweak style #'cross
                                    af'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    b16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    df'16
                                    [
                                    \tweak style #'cross
                                    bf16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    d'8
                                    ]
                                    ~
                                    d'4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    df'16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    g'16
                                    [
                                    \tweak style #'cross
                                    f'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    af'8
                                    ]
                                    ~
                                    af'4
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    d'16
                                    [
                                    \tweak style #'cross
                                    e'16
                                    \tweak style #'cross
                                    df'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    f'16
                                    ]
                                    ~
                                    f'4
                                }
                                \context Voice = "saxophone breath voice"
                                {
                                    \once \override Rest.staff-position = -14
                                    \override Voice.NoteHead.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Dots.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Stem.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Beam.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Rest.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.Tie.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletBracket.color = #(x11-color 'LightSlateBlue)
                                    \override Voice.TupletNumber.color = #(x11-color 'LightSlateBlue)
                                    \voiceTwo
                                    r2.
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
                                        d
                                    >4
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    ^ \tenuto
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
                                        <d>16
                                    }
                                    \once \override Rest.staff-position = -14
                                    r2.
                                    \once \override Rest.staff-position = -14
                                    r2
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
                                        d
                                    >4
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    ^ \tenuto
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
                                        <d>16
                                    }
                                    \once \override Rest.staff-position = -14
                                    r4
                                    \once \override Rest.staff-position = -14
                                    r2.
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
                                        d
                                    >4
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    ^ \tenuto
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
                                        <d>16
                                    }
                                    \once \override Rest.staff-position = -14
                                    r1.
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
                                        d
                                    >4
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    ^ \tenuto
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
                                        <d>16
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
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            ef'8.
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
                            _ \markup \fontsize #3 { \hspace #-3 { \override #'(font-name . "Bodoni72 Book Italic") { \column { \line { "Hard to tell whether it's so far away it's barely audible," } \line { "or so close as to become indistinguishable." } } } } }
                            [
                            (
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            df'16
                            ]
                            ~
                            \tweak style #'xcircle
                            df'4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            df'8
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            e'8
                            ]
                            ~
                            \tweak style #'xcircle
                            e'4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            e'8
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            df'8
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            df'8
                            )
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            gf'8
                            ]
                            (
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            gf'8.
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            d'16
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            d'8.
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            ef'16
                            ]
                            ~
                            \tweak style #'xcircle
                            ef'4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            ef'16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            f'8.
                            )
                            ]
                            \tweak style #'xcircle
                            f'4
                            (
                            ~
                            \tweak style #'xcircle
                            f'8.
                            \tweak style #'xcircle
                            af'4.
                            )
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
                            s1 * 7/4
                            r2.
                            r8.
                            [
                            \tweak style #'cross
                            df'16
                            ]
                            r8.
                            [
                            \tweak style #'cross
                            gf16
                            ]
                            r4
                            \tweak style #'cross
                            d'16
                            [
                            r8.
                            ]
                            \tweak style #'cross
                            ef'16
                            [
                            r8.
                            ]
                            <<
                                \context Voice = "clarinetinbflat voice temp 1"
                                {
                                    \voiceTwo
                                    \tweak style #'xcircle
                                    e4
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
                                    ~
                                    \tweak style #'xcircle
                                    e8.
                                    [
                                    \tweak style #'xcircle
                                    c'16
                                    ]
                                    ~
                                    \tweak style #'xcircle
                                    c'4
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
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
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
                                        c'''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'''16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        b''8
                                        )
                                        \stopTextSpan
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        r4
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
                            \tweak style #'cross
                            c'16
                            [
                            r8.
                            ]
                            \tweak style #'cross
                            g16
                            [
                            r8.
                            ]
                            r8
                            [
                            \tweak style #'cross
                            ef'16
                            r16
                            ]
                            r16
                            [
                            \tweak style #'cross
                            df'16
                            r8
                            ]
                            r1
                            <<
                                \context Voice = "clarinetinbflat voice temp 2"
                                {
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \voiceTwo
                                    \tweak style #'xcircle
                                    c'16
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
                                    (
                                    \<
                                    \tweak style #'xcircle
                                    a16
                                    \tweak style #'xcircle
                                    cs'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    d'16
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
                                    \<
                                    ~
                                    \tweak style #'xcircle
                                    d'4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    d'8
                                    )
                                    [
                                    \tweak style #'xcircle
                                    ef'16
                                    (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    d'16
                                    )
                                    ]
                                    \tweak style #'xcircle
                                    c'2
                                    _ \markup { \hspace #-2 { ( \note {2} #2  ) } }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    e16
                                    [
                                    (
                                    \tweak style #'xcircle
                                    fs16
                                    \tweak style #'xcircle
                                    ds'16
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
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    g16
                                    )
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    af16
                                    [
                                    (
                                    \tweak style #'xcircle
                                    f16
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
                                    \<
                                    \tweak style #'xcircle
                                    ef'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    gf16
                                    ]
                                    ~
                                    \tweak style #'xcircle
                                    gf4
                                    )
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    gf16
                                    [
                                    (
                                    \tweak style #'xcircle
                                    af16
                                    \tweak style #'xcircle
                                    f16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    a16
                                    )
                                    ]
                                    \tweak style #'xcircle
                                    bf4
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
                                }
                                \context Voice = "clarinet teeth voice 2"
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
                                        - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        g'''16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        af''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'''16..
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 16/27
                                    {
                                        \my-hack-slash
                                        fs'''32.
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
                                        bf''64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        af''8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b''16..
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 8/15
                                    {
                                        \my-hack-slash
                                        fs'''8..
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        a''8.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b''16
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
                                        af''64.
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        c'''128
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        cs'''64.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f'''32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'''32.
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 16/25
                                    {
                                        \my-hack-slash
                                        e'''16
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
                                        c'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        af''16.
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/5
                                    {
                                        \my-hack-slash
                                        bf''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        c'''16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a''8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'''32
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/7
                                    {
                                        \my-hack-slash
                                        af''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        bf''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a''8
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/5
                                    {
                                        \my-hack-slash
                                        bf''16.
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
                                        f'''16.
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 16/23
                                    {
                                        \my-hack-slash
                                        a''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        g'''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'''64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f'''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf''16
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
                                    \times 2/3
                                    {
                                        \my-hack-slash
                                        b''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        c'''32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'''64.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'''32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        e'''32..
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
                                \context Voice = "clarinetinbflat voice temp 3"
                                {
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \voiceTwo
                                    \tweak style #'xcircle
                                    d'16
                                    [
                                    ^ (
                                    \tweak style #'xcircle
                                    e16
                                    \tweak style #'xcircle
                                    df'16
                                    )
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    f16
                                    ^ \accent
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
                                    ^ (
                                    \times 4/6
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        ef'16
                                        [
                                        \tweak style #'xcircle
                                        df'16
                                        \tweak style #'xcircle
                                        e16
                                        \tweak style #'xcircle
                                        c'16
                                        \tweak style #'xcircle
                                        b16
                                        )
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        gf16
                                        ^ \accent
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
                                        ^ (
                                    }
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        f8
                                        [
                                        \tweak style #'xcircle
                                        a8
                                        )
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        bf8
                                        ^ \accent
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
                                        ^ (
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        f8
                                        [
                                        \tweak style #'xcircle
                                        af8
                                        \tweak style #'xcircle
                                        e8
                                        \tweak style #'xcircle
                                        ef'8
                                        \tweak style #'xcircle
                                        c'8
                                        \tweak style #'xcircle
                                        bf8
                                        )
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        df'8
                                        ^ \accent
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
                                        - \tweak circled-tip ##t
                                        \>
                                        ^ (
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    af16
                                    [
                                    \tweak style #'xcircle
                                    b16
                                    \tweak style #'xcircle
                                    df'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    bf16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    d'16
                                    [
                                    \tweak style #'xcircle
                                    ef'16
                                    \tweak style #'xcircle
                                    f16
                                    )
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    g16
                                    ^ \accent
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
                                    ^ (
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    af8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    a8
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    gf8
                                    )
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    e8
                                    ^ \accent
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
                                    ^ (
                                    \times 4/6
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        ef'8
                                        [
                                        \tweak style #'xcircle
                                        d'8
                                        \tweak style #'xcircle
                                        df'8
                                        \tweak style #'xcircle
                                        b8
                                        \tweak style #'xcircle
                                        d'8
                                        )
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        bf8
                                        ^ \accent
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
                                        ^ (
                                    }
                                    \times 2/3
                                    {
                                        \tweak style #'xcircle
                                        c'4
                                        \tweak style #'xcircle
                                        d'4
                                        )
                                        \tweak style #'xcircle
                                        b4
                                        ^ \accent
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
                                        ^ (
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        e16
                                        [
                                        \tweak style #'xcircle
                                        bf16
                                        \tweak style #'xcircle
                                        c'16
                                        \tweak style #'xcircle
                                        a16
                                        \tweak style #'xcircle
                                        df'16
                                        \tweak style #'xcircle
                                        d'16
                                        )
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        b16
                                        ^ \accent
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
                                        ]
                                        ^ (
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    c'16
                                    [
                                    \tweak style #'xcircle
                                    af16
                                    \tweak style #'xcircle
                                    g16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    b16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    a16
                                    [
                                    \tweak style #'xcircle
                                    c'16
                                    \tweak style #'xcircle
                                    af16
                                    )
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    g16
                                    ^ \accent
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
                                }
                                \context Voice = "clarinet teeth voice 3"
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
                                    \times 9/10
                                    {
                                        \override Dots.staff-position = #2
                                        \override Voice.NoteHead.color = #(css-color 'darkred)
                                        \override Voice.Dots.color = #(css-color 'darkred)
                                        \override Voice.Stem.color = #(css-color 'darkred)
                                        \override Voice.Beam.color = #(css-color 'darkred)
                                        \override Voice.Rest.color = #(css-color 'darkred)
                                        \override Voice.Tie.color = #(css-color 'darkred)
                                        \override Voice.TupletBracket.color = #(css-color 'darkred)
                                        \override Voice.TupletNumber.color = #(css-color 'darkred)
                                        \voiceOne
                                        e'''1.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #10
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -0.5
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        d'''\breve
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \afterGrace
                                        f'''1.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \revert Dots.staff-position
                                            \once \override NoteHead.transparent = ##t
                                            c''''16
                                            )
                                            \stopTextSpan
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
                                }
                            >>
                            \oneVoice
                            s1 * 3/4
                            s1 * 2
                            s1 * 3/4
                            <<
                                \context Voice = "clarinetinbflat voice temp 4"
                                {
                                    \voiceTwo
                                    r2
                                    \tweak style #'xcircle
                                    c'4
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
                                    ^ (
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        df'16
                                        [
                                        \tweak style #'xcircle
                                        a16
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        af16
                                        )
                                        ]
                                        r4
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    e16
                                    [
                                    ^ (
                                    \tweak style #'xcircle
                                    gf16
                                    \tweak style #'xcircle
                                    ef'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    g16
                                    )
                                    ]
                                    r4
                                }
                                \context Voice = "clarinet teeth voice 4"
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
                                    \times 8/15
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
                                        e'''32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'''64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'''32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b''16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a''64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''16.
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/5
                                    {
                                        \my-hack-slash
                                        g'''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        bf''16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'''8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        a''32
                                        )
                                        ]
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
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        cs'''16.
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        d'''8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        e'''16.
                                        )
                                        \stopTextSpan
                                        ]
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
                            s1 * 3/4
                            <<
                                \context Voice = "clarinetinbflat voice temp 5"
                                {
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \voiceOne
                                    \tweak style #'cross
                                    e16
                                    [
                                    \tweak style #'cross
                                    gf16
                                    \tweak style #'cross
                                    ef'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    g16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    af16
                                    [
                                    \tweak style #'cross
                                    f16
                                    \tweak style #'cross
                                    ef'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    gf16
                                    ]
                                    ~
                                    gf4
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    gf16
                                    [
                                    \tweak style #'cross
                                    af16
                                    \tweak style #'cross
                                    f16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    a16
                                    ]
                                    \tweak style #'cross
                                    bf4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    [
                                    \tweak style #'cross
                                    ef'16
                                    \tweak style #'cross
                                    df'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    e16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    c'16
                                    [
                                    \tweak style #'cross
                                    b16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    gf8
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    gf8
                                    [
                                    \tweak style #'cross
                                    f16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    af16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    e16
                                    [
                                    \tweak style #'cross
                                    ef'16
                                    \tweak style #'cross
                                    c'16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    bf16
                                    ]
                                    \tweak style #'cross
                                    df'2
                                    ~
                                    df'16
                                    r8.
                                    r4
                                    r8.
                                    \tweak style #'cross
                                    c'16
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    d'16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    b8.
                                    ]
                                }
                                \context Voice = "clarinet breath voice"
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
                                    r2.
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
                                    ^ \tenuto
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
                                    r2.
                                    \once \override Rest.staff-position = -17
                                    r2
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
                                    ^ \tenuto
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
                                    \once \override Rest.staff-position = -17
                                    r2.
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
                                    ^ \tenuto
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
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            c'8.
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
                            _ \markup \fontsize #3 { \hspace #-3 { \override #'(font-name . "Bodoni72 Book Italic") { \column { \line { "Hard to tell whether it's so far away it's barely audible," } \line { "or so close as to become indistinguishable." } } } } }
                            [
                            (
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            e16
                            ]
                            ~
                            \tweak style #'xcircle
                            e4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            e8
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            c'8
                            ]
                            ~
                            \tweak style #'xcircle
                            c'4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            c'8
                            )
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            c'8
                            ]
                            (
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            c'8
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            g8
                            ]
                            ~
                            \tweak style #'xcircle
                            g4
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            ef'8.
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            df'16
                            ]
                            ~
                            \tweak style #'xcircle
                            df'4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            df'8
                            )
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            e8
                            ]
                            (
                            ~
                            \tweak style #'xcircle
                            e4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            e8
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            df'8
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            df'8
                            )
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            gf8
                            ]
                            (
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            gf8.
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            d'16
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            d'8.
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            ef'16
                            ]
                            ~
                            \tweak style #'xcircle
                            ef'4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            ef'16
                            )
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            f8.
                            ]
                            (
                            \tweak style #'xcircle
                            f4
                            ~
                            \tweak style #'xcircle
                            f8.
                            \tweak style #'xcircle
                            af4.
                            )
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
                            s1 * 7/4
                            <<
                                \context Voice = "bassclarinet voice temp 1"
                                {
                                    \clef "bass"
                                    \voiceTwo
                                    r1
                                    r4
                                    \tweak style #'xcircle
                                    c4
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
                                    \>
                                    ~
                                    \tweak style #'xcircle
                                    c4
                                    \tweak style #'xcircle
                                    c4
                                    \tweak style #'xcircle
                                    g4
                                    ~
                                    \tweak style #'xcircle
                                    g8
                                    [
                                    \tweak style #'xcircle
                                    e8
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
                                    ~
                                    \tweak style #'xcircle
                                    e16
                                    [
                                    \tweak style #'xcircle
                                    gs8.
                                    ]
                                    ~
                                    \tweak style #'xcircle
                                    gs4
                                    \tweak style #'xcircle
                                    e4
                                    ~
                                    \tweak style #'xcircle
                                    e4
                                    r4
                                    r4
                                    r8
                                    [
                                    \tweak style #'xcircle
                                    g8
                                    ]
                                    ~
                                    \tweak style #'xcircle
                                    g16
                                    [
                                    \tweak style #'xcircle
                                    f8.
                                    ]
                                    ~
                                    \tweak style #'xcircle
                                    f4
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
                                    \times 16/23
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
                                        r32.
                                        r64
                                        r32.
                                        r16
                                        r16.
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        r4.
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 12/20
                                    {
                                        r16
                                        r16.
                                        r32.
                                        r16..
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        r4..
                                    }
                                    \times 8/15
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        d'4..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #12
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        ef'4.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        b'8
                                        )
                                        \stopTextSpan
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        r4
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 24/25
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
                                        cs'32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        af'64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        f'16.
                                        )
                                        \stopTextSpan
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        r8.
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        a'16
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
                                        bf'32
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
                                        \revert Dots.staff-position
                                        ef'8
                                        )
                                        \stopTextSpan
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        r2
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
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        r4.
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 12/20
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        a'16
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
                                        - \tweak bound-details.right.padding -4
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        g'16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf'32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        af'16..
                                        )
                                        \stopTextSpan
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 1/1
                                    {
                                        r4..
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \voiceTwo
                                    \tweak style #'xcircle
                                    e16
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
                                    (
                                    \tweak style #'xcircle
                                    c16
                                    \tweak style #'xcircle
                                    b16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    ds16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    cs16
                                    [
                                    \tweak style #'xcircle
                                    e16
                                    \tweak style #'xcircle
                                    c16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    b16
                                    ]
                                    ~
                                    \tweak style #'xcircle
                                    b4
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
                                        af'16
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
                                        - \tweak bound-details.right.padding -0.5
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        g'32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        b'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'64.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        bf'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'32..
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 4/5
                                    {
                                        \my-hack-slash
                                        f'16
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
                                        c'32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'16..
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 16/27
                                    {
                                        \my-hack-slash
                                        bf'32.
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        cs'16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        f'16..
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
                            r2
                            r16
                            [
                            \tweak style #'cross
                            g16
                            r8
                            ]
                            r8.
                            [
                            \tweak style #'cross
                            a16
                            ]
                            r8
                            [
                            \tweak style #'cross
                            a16
                            r16
                            ]
                            r2
                            <<
                                \context Voice = "bassclarinet voice temp 3"
                                {
                                    \times 4/6
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \voiceTwo
                                        \tweak style #'xcircle
                                        g16
                                        [
                                        ^ (
                                        \tweak style #'xcircle
                                        fs16
                                        \tweak style #'xcircle
                                        f16
                                        )
                                        \tweak style #'xcircle
                                        ds16
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        fs16
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        d16
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        e8
                                        [
                                        \tweak style #'xcircle
                                        fs8
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        ds8
                                        )
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        gs32
                                        ^ \accent
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
                                        [
                                        ^ (
                                        \tweak style #'xcircle
                                        d32
                                        \tweak style #'xcircle
                                        e32
                                        )
                                        \tweak style #'xcircle
                                        cs32
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        f32
                                        \tweak style #'xcircle
                                        fs32
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        ds32
                                        )
                                        ]
                                    }
                                }
                                \context Voice = "bass clarinet teeth voice 3"
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
                                    \times 12/20
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
                                        g'4
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #14.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -0.5
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        c''4.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'8.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \afterGrace
                                        af'4..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \revert Dots.staff-position
                                            \once \override NoteHead.transparent = ##t
                                            f''16
                                            )
                                            \stopTextSpan
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
                                }
                            >>
                            \oneVoice
                            s1 * 7/4
                            s1 * 2
                            s1 * 3/4
                            s1 * 2
                            s1 * 3/4
                            <<
                                \context Voice = "bassclarinet voice temp 4"
                                {
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \voiceTwo
                                        \tweak style #'xcircle
                                        f8
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
                                        [
                                        (
                                        \tweak style #'xcircle
                                        cs8
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        c8
                                        )
                                        ]
                                        r2
                                    }
                                    r2
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    f8
                                    [
                                    (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    b8
                                    )
                                    ]
                                    r4
                                }
                                \context Voice = "bass clarinet teeth voice 4"
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
                                        a'64.
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
                                        c''128
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        af'64.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        f'32.
                                        )
                                        \stopTextSpan
                                        ]
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
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        c''16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #13.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "( teeth )" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -2
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        ef'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f'32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        a'16.
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
                            s1 * 3/4
                            <<
                                \context Voice = "bassclarinet voice temp 5"
                                {
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \voiceOne
                                    \tweak style #'cross
                                    a16
                                    [
                                    \tweak style #'cross
                                    cs16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    d8
                                    ]
                                    ~
                                    d4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d8
                                    [
                                    \tweak style #'cross
                                    c16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    ds16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    f16
                                    [
                                    \tweak style #'cross
                                    d16
                                    \tweak style #'cross
                                    fs16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    g16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    a16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    b8.
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b8
                                    [
                                    \tweak style #'cross
                                    g16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    fs16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    f16
                                    [
                                    \tweak style #'cross
                                    ds16
                                    \tweak style #'cross
                                    fs16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    d16
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    gs16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    d16
                                    [
                                    \tweak style #'cross
                                    e16
                                    \tweak style #'cross
                                    cs16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    f16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    fs16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    ds8.
                                    ]
                                    ~
                                    ds4
                                    ~
                                    ds8
                                    r8
                                    r4
                                    r4
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    g16
                                    [
                                    \tweak style #'cross
                                    fs16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    e8
                                    ]
                                    ~
                                    e4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e8
                                    [
                                    \tweak style #'cross
                                    gs16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    bf16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    g16
                                    [
                                    \tweak style #'cross
                                    b16
                                    \tweak style #'cross
                                    c16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    a16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    g16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    bf8.
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf8
                                    [
                                    \tweak style #'cross
                                    bf16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    c16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    a16
                                    [
                                    \tweak style #'cross
                                    cs16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    d8
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    g16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    f16
                                    [
                                    \tweak style #'cross
                                    gs16
                                    \tweak style #'cross
                                    e16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    ds16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    bf16
                                    [
                                    \tweak style #'cross
                                    a16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    cs8
                                    ]
                                    ~
                                    cs4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs8
                                    [
                                    \tweak style #'cross
                                    d16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    c16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    ds16
                                    [
                                    \tweak style #'cross
                                    f16
                                    \tweak style #'cross
                                    d16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    fs16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    g16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    a8.
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a8
                                    [
                                    \tweak style #'cross
                                    b16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    g16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    fs16
                                    [
                                    \tweak style #'cross
                                    f16
                                    \tweak style #'cross
                                    ds16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    fs16
                                    ]
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    d16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    gs16
                                    [
                                    \tweak style #'cross
                                    d16
                                    \tweak style #'cross
                                    e16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    cs16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    f16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    fs8.
                                    ]
                                    ~
                                    fs4.
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'cross
                                    ds16
                                    [
                                    \tweak style #'cross
                                    e16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'cross
                                    cs16
                                    ]
                                }
                                \context Voice = "bass clarinet breath voice"
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
                                        a,,
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    ^ \tenuto
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
                                        <a,,>16
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
                                        a,,
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    ^ \tenuto
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
                                        <a,,>16
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
                                        a,,
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
                                        <a,,>16
                                    }
                                    \once \override Rest.staff-position = -10
                                    r2
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    ^ \tenuto
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
                                        <a,,>16
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
                                        a,,
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    ^ \tenuto
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
                                        <a,,>16
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
                                        a,,
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    ^ \tenuto
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
                                        <a,,>16
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
                                        a,,
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
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
                                        <a,,>16
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
                                        a,,
                                    >4
                                    - \tweak color #(x11-color 'LightSlateBlue)
                                    ^ \tenuto
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
                                        <a,,>16
                                    }
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                    <
                                        \tweak style #'la
                                        a,,
                                    >8
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \afterGrace
                                    <
                                        \tweak style #'la
                                        a,,
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
                                        <a,,>16
                                    }
                                    \once \override Dots.staff-position = #2
                                    \once \override NoteHead.X-offset = 0
                                    \once \override Staff.Accidental.stencil = ##f
                                    \once \override Voice.Glissando.thickness = #8.25
                                    \once \override NoteHead.duration-log = 2
                                    \once \override Voice.NoteHead.no-ledgers = ##t
                                    \once \override Voice.Accidental.stencil = ##f
                                    \revert Staff.Stem.stemlet-length
                                    \afterGrace
                                    <
                                        \tweak style #'la
                                        a,,
                                    >16
                                    ]
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
                                        <a,,>16
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
                            r2.
                            r2
                            \tweak style #'cross
                            bf,,16
                            [
                            r8.
                            ]
                            r4
                            \tweak style #'cross
                            bf,,16
                            [
                            r8.
                            ]
                            \tweak style #'cross
                            f,16
                            [
                            r8.
                            ]
                            r8
                            [
                            \tweak style #'cross
                            d,16
                            r16
                            ]
                            r16
                            [
                            \tweak style #'cross
                            fs,16
                            r8
                            ]
                            r4
                            \tweak style #'cross
                            d,16
                            [
                            r8.
                            ]
                            r4
                            \tweak style #'cross
                            d,16
                            [
                            r8.
                            ]
                            s1 * 3/4
                            \tweak style #'cross
                            f,16
                            [
                            r16
                            r16
                            \tweak style #'cross
                            ef,16
                            ]
                            r4
                            r8
                            [
                            \tweak style #'cross
                            gf,16
                            r16
                            ]
                            r4
                            r8
                            [
                            \tweak style #'cross
                            ef,16
                            r16
                            ]
                            r8
                            [
                            \tweak style #'cross
                            af,16
                            r16
                            ]
                            r8.
                            [
                            \tweak style #'cross
                            e,16
                            ]
                            r8.
                            [
                            \tweak style #'cross
                            f,16
                            ]
                            r4
                            r16
                            [
                            \tweak style #'cross
                            g,16
                            r8
                            ]
                            \tweak style #'cross
                            g,16
                            [
                            r8.
                            ]
                            r8.
                            [
                            \tweak style #'cross
                            bf,,16
                            ]
                            r4
                            r8.
                            [
                            \tweak style #'cross
                            bf,,16
                            ]
                            r8.
                            [
                            \tweak style #'cross
                            f,16
                            ]
                            r4
                            r16
                            [
                            \tweak style #'cross
                            d,16
                            r8
                            ]
                            \tweak style #'cross
                            fs,16
                            [
                            r8.
                            ]
                            <<
                                \context Voice = "bassoon voice temp 1"
                                {
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \voiceTwo
                                        \tweak style #'xcircle
                                        fs,32
                                        [
                                        ^ (
                                        \tweak style #'xcircle
                                        c,32
                                        \tweak style #'xcircle
                                        d,32
                                        )
                                        \tweak style #'xcircle
                                        b,,32
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        ef,32
                                        \tweak style #'xcircle
                                        e,32
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        cs,32
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    d,32
                                    [
                                    \tweak style #'xcircle
                                    bf,,32
                                    )
                                    \tweak style #'xcircle
                                    a,32
                                    ^ \accent
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
                                    ^ (
                                    \tweak style #'xcircle
                                    cs,32
                                    \tweak style #'xcircle
                                    b,,32
                                    )
                                    \tweak style #'xcircle
                                    d,32
                                    ^ \accent
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
                                    ^ (
                                    \tweak style #'xcircle
                                    bf,,32
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    a,32
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    d,16
                                    [
                                    \tweak style #'xcircle
                                    b,,16
                                    \tweak style #'xcircle
                                    ef,16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    e,16
                                    )
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    a,8
                                    ^ \accent
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
                                    [
                                    ^ (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    fs,8
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    bf,,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    b,,8
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    af,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    fs,8
                                    ]
                                    \times 2/3
                                    {
                                        \tweak style #'xcircle
                                        f,4
                                        \tweak style #'xcircle
                                        e,4
                                        )
                                        \tweak style #'xcircle
                                        d,4
                                        ^ \accent
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
                                        ^ (
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        ef,16
                                        [
                                        \tweak style #'xcircle
                                        b,,16
                                        \tweak style #'xcircle
                                        bf,,16
                                        )
                                        \tweak style #'xcircle
                                        cs,16
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        ef,16
                                        \tweak style #'xcircle
                                        c,16
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        e,16
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    fs,16
                                    [
                                    \tweak style #'xcircle
                                    af,16
                                    )
                                    \tweak style #'xcircle
                                    f,16
                                    ^ \accent
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
                                    ^ (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    a,16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    bf,,16
                                    )
                                    [
                                    \tweak style #'xcircle
                                    g,16
                                    ^ \accent
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
                                    ^ (
                                    \tweak style #'xcircle
                                    f,16
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    af,16
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    ef,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    a,8
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    g,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    bf,,8
                                    )
                                    ]
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        af,8
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        bf,,8
                                        \tweak style #'xcircle
                                        g,8
                                        \tweak style #'xcircle
                                        b,,8
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        c,8
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    e,8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    fs,8
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    ef,8
                                    )
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    g,8
                                    ^ \accent
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
                                    ^ (
                                    \times 4/6
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        f,16
                                        [
                                        \tweak style #'xcircle
                                        ef,16
                                        \tweak style #'xcircle
                                        fs,16
                                        )
                                        \tweak style #'xcircle
                                        d,16
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        cs,16
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        af,16
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        g,8
                                        [
                                        \tweak style #'xcircle
                                        b,,8
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        c,8
                                        )
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        g,32
                                        ^ \accent
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
                                        [
                                        ^ (
                                        \tweak style #'xcircle
                                        bf,,32
                                        \tweak style #'xcircle
                                        fs,32
                                        )
                                        \tweak style #'xcircle
                                        f,32
                                        ^ \accent
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
                                        ^ (
                                        \tweak style #'xcircle
                                        d,32
                                        \tweak style #'xcircle
                                        c,32
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        ef,32
                                        )
                                        ]
                                    }
                                }
                                \context Voice = "bassoon teeth voice 1"
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
                                    \times 21/20
                                    {
                                        \override Dots.staff-position = #2
                                        \override Voice.NoteHead.color = #(css-color 'darkred)
                                        \override Voice.Dots.color = #(css-color 'darkred)
                                        \override Voice.Stem.color = #(css-color 'darkred)
                                        \override Voice.Beam.color = #(css-color 'darkred)
                                        \override Voice.Rest.color = #(css-color 'darkred)
                                        \override Voice.Tie.color = #(css-color 'darkred)
                                        \override Voice.TupletBracket.color = #(css-color 'darkred)
                                        \override Voice.TupletNumber.color = #(css-color 'darkred)
                                        \voiceOne
                                        f'1
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        - \tweak font-name "Bodoni72 Book Italic" 
                                        - \tweak font-size 2
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { "teeth" } \hspace #0.5 }
                                        - \tweak bound-details.right.padding -0.5
                                        \startTextSpan
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        g'1.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a'\breve
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \afterGrace
                                        bf'2
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        {
                                            \once \override Stem.stencil = ##f
                                            \once \override Flag.stencil = ##f
                                            \once \override NoteHead.no-ledgers = ##t
                                            \once \override Accidental.stencil = ##f
                                            \revert Dots.staff-position
                                            \once \override NoteHead.transparent = ##t
                                            b'16
                                            )
                                            \stopTextSpan
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
                                }
                            >>
                            \oneVoice
                            s1 * 2
                            s1 * 3/4
                            <<
                                \context Voice = "bassoon voice temp 2"
                                {
                                    \voiceTwo
                                    r1.
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'xcircle
                                    ef,8
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
                                    [
                                    ^ (
                                    \revert Staff.Stem.stemlet-length
                                    \tweak style #'xcircle
                                    g,8
                                    )
                                    ]
                                    r4
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        g,8
                                        [
                                        ^ (
                                        \tweak style #'xcircle
                                        b,,8
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        c,8
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'xcircle
                                        g,32
                                        [
                                        \tweak style #'xcircle
                                        bf,,32
                                        \tweak style #'xcircle
                                        fs,32
                                        \tweak style #'xcircle
                                        f,32
                                        \tweak style #'xcircle
                                        d,32
                                        \tweak style #'xcircle
                                        c,32
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'xcircle
                                        ef,32
                                        )
                                        ]
                                    }
                                }
                                \context Voice = "bassoon teeth voice 2"
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
                                        r16
                                        r16.
                                        r32.
                                        r16..
                                    }
                                    \times 16/27
                                    {
                                        \override Dots.staff-position = #2
                                        \my-hack-slash
                                        fs'32.
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
                                        f'16.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        d'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'8
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        bf'16..
                                        )
                                        ]
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
                                        cs'64.
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        ef'128
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        c'64.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f'32..
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        g'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        a'32.
                                        )
                                        ]
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                    }
                                    \times 16/25
                                    {
                                        \my-hack-slash
                                        bf'16
                                        [
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        - \tweak color #(css-color 'darkred)
                                        ^ (
                                        b'32.
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        af'64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        fs'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        f'32
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        e'16
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        ef'64
                                        - \tweak color #(css-color 'darkred)
                                        - \abjad-zero-padding-glissando
                                        \glissando
                                        \revert Dots.staff-position
                                        cs'16.
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
                            s1 * 7/4
                            \tweak style #'xcircle
                            bf,,4
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
                            _ \markup \fontsize #3 { \hspace #-3 { \override #'(font-name . "Bodoni72 Book Italic") { \column { \line { "Hard to tell whether it's so far away it's barely audible," } \line { "or so close as to become indistinguishable." } } } } }
                            (
                            \tweak style #'xcircle
                            f,4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            f,8
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            d,8
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            d,16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            fs,8.
                            )
                            ]
                            r4
                            r4
                            r4
                            \tweak style #'xcircle
                            d,4
                            (
                            \tweak style #'xcircle
                            a,4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            a,8
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            f,8
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            f,16
                            )
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            ef,8.
                            ]
                            (
                            ~
                            \tweak style #'xcircle
                            ef,4
                            \tweak style #'xcircle
                            fs,4
                            ~
                            \tweak style #'xcircle
                            fs,4
                            \tweak style #'xcircle
                            ef,4
                            )
                            \tweak style #'xcircle
                            af,4
                            (
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            af,16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            e,8.
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            e,16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            f,8.
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            f,8.
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            g,16
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            g,8
                            )
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            g,8
                            ]
                            (
                            ~
                            \tweak style #'xcircle
                            g,4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            g,16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            bf,,8.
                            ]
                            ~
                            \tweak style #'xcircle
                            bf,,4
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            bf,,16
                            )
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            bf,,8.
                            ]
                            (
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            bf,,16
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            f,8.
                            ]
                            ~
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak style #'xcircle
                            f,8.
                            [
                            \revert Staff.Stem.stemlet-length
                            \tweak style #'xcircle
                            d,16
                            ]
                            ~
                            \tweak style #'xcircle
                            d,8
                            \tweak style #'xcircle
                            fs,4..
                            )
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
