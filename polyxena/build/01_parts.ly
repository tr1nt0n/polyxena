    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 3/4
            s1 * 3/4
              %! +SCORE
        %%% ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-2 \raise #20 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #2 } \fontsize #9 { "= 60" } } }
            \time 7/4
            s1 * 7/4
            \time 8/4
            s1 * 2
            \time 9/16
            s1 * 9/16
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'15
            _ \short-fermata
            \bar "||"
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
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Cor Anglais }
                              %! +SCORE
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { ca. }
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
                            s1 * 7/4
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
                            s1 * 9/16
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
                            s1 * 7/4
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
                            s1 * 9/16
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
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Clarinet in B-flat }
                              %! +SCORE
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { cl. }
                            s1 * 3/4
                            s1 * 7/4
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
                            s1 * 9/16
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
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bass Clarinet }
                              %! +SCORE
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { b. cl. }
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
                            s1 * 9/16
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
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Bassoon }
                              %! +SCORE
                        %%% \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { bsn. }
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
                            s1 * 9/16
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
