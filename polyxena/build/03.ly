    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
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
            \time 3/4
            s1 * 3/4
            \time 7/4
            s1 * 7/4
            \time 8/4
            s1 * 2
            \time 3/4
            s1 * 3/4
            \time 8/4
            s1 * 2
            \time 3/4
            s1 * 3/4
            \time 7/4
            s1 * 7/4
            \time 3/4
            s1 * 3/4
            \time 7/4
            s1 * 7/4
            \time 8/4
            s1 * 2
            \time 7/4
            s1 * 7/4
            \time 8/4
            s1 * 2
            \time 3/4
            s1 * 3/4
            \time 9/16
            s1 * 9/16
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
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
                            s1 * 3/4
                            s1 * 2
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
                            s1 * 7/4
                            s1 * 2
                            s1 * 3/4
                            s1 * 9/16
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
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
                            s1 * 3/4
                            s1 * 2
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
                            s1 * 7/4
                            s1 * 2
                            s1 * 3/4
                            s1 * 9/16
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
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
                            s1 * 3/4
                            s1 * 2
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
                            s1 * 7/4
                            s1 * 2
                            s1 * 3/4
                            s1 * 9/16
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
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
                            s1 * 3/4
                            s1 * 2
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
                            s1 * 7/4
                            s1 * 2
                            s1 * 3/4
                            s1 * 9/16
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
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
                            s1 * 3/4
                            s1 * 2
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
                            s1 * 7/4
                            s1 * 2
                            s1 * 3/4
                            s1 * 9/16
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
