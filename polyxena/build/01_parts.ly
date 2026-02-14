    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
              %! +SCORE
        %%% \tempo 8=48
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0.5 \raise #11.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 48" } } }
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
              %! +SCORE
        %%% \tempo 8=84
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #11.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 84" } } }
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
              %! +SCORE
        %%% \tempo 8=48
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #11.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 48" } } }
              %! +SCORE
        %%% \break
            \once \override Score.TimeSignature.stencil = ##f
              %! +SCORE
        %%% \tempo 8=84
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #11.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 84" } } }
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
              %! +SCORE
        %%% \tempo 8=48
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #11.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 48" } } }
              %! +SCORE
        %%% \noBreak
            \once \override Score.TimeSignature.stencil = ##f
              %! +SCORE
        %%% \tempo 8=84
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #11.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 84" } } }
              %! +SCORE
        %%% \noBreak
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'14
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
                                    \times 2/3
                                    {
                                        \override Staff.Clef.stencil = #ly:text-interface::print
                                        \override Staff.Clef.text = \string-clef
                                        \staff-line-count 4
                                        \override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)
                                        \override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)
                                        \override Staff.Accidental.stencil = ##f
                                        \override Staff.NoteHead.no-ledgers = ##t
                                        \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Gambe }
                                          %! +SCORE
                                    %%% \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { gambe }
                                        c'8
                                        ~
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {
                                            c'4
                                            c'8.
                                            ~
                                        }
                                        c'8
                                    }
                                    \repeat tremolo 2 {
                                        \change Staff = "cello 2 staff"
                                        \tweak style #'harmonic-mixed
                                        c'16
                                        (
                                        c'16
                                        )
                                        \change Staff = "cello 1 staff"
                                    }
                                    c'4
                                    \repeat tremolo 2 {
                                        \change Staff = "cello 2 staff"
                                        \tweak style #'harmonic-mixed
                                        c'8
                                        (
                                        c'8
                                        )
                                        \change Staff = "cello 1 staff"
                                    }
                                    c'2.
                                    ~
                                    c'2
                                    r4
                                    c'4
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \times 2/3
                                        {
                                            r4
                                            c'8
                                            ~
                                        }
                                        c'16
                                        r8
                                        \revert Staff.Clef.stencil
                                        \revert Staff.StaffSymbol.line-positions
                                        \revert Staff.BarLine.bar-extent
                                        \revert Staff.Accidental.stencil
                                        \revert Staff.NoteHead.no-ledgers
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
                                    \times 2/3
                                    {
                                        c'8
                                        ^ #(make-dynamic-script
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
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {
                                            c'8.
                                            c'8.
                                            c'16
                                        }
                                        c'8
                                        ]
                                    }
                                    \change Staff = "cello 1 staff"
                                    c'8.
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
                                    [
                                    c'16
                                    ]
                                    \change Staff = "cello 2 staff"
                                    c'8.
                                    ^ #(make-dynamic-script
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
                                    [
                                    c'16
                                    ]
                                    \times 2/3
                                    {
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {
                                            \change Staff = "cello 1 staff"
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
                                            [
                                            c'16
                                            c'16
                                            c'8.
                                        }
                                        c'8
                                        c'8
                                        ]
                                        \change Staff = "cello 2 staff"
                                    }
                                    \times 2/3
                                    {
                                        c'16
                                        ^ #(make-dynamic-script
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
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {
                                            c'8
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            c'16.
                                            ~
                                        }
                                        c'16
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        c'8
                                        c'4
                                    }
                                    \times 2/3
                                    {
                                        c'8
                                        c'4
                                    }
                                    \times 4/6
                                    {
                                        c'8
                                        [
                                        c'8
                                        c'16
                                        c'16
                                        c'8.
                                        c'8.
                                        ]
                                    }
                                    r4
                                    \times 2/3
                                    {
                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {
                                            c'8
                                            [
                                            \set stemLeftBeamCount = 2
                                            \set stemRightBeamCount = 1
                                            c'16.
                                            ~
                                        }
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        c'16
                                        c'16
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \times 2/3
                                        {
                                            r4
                                            c'8
                                            ~
                                        }
                                        c'16
                                        r8
                                    }
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 3/4
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                      %! +SCORE
                                %%% \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
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
                                      %! +SCORE
                                %%% \once \override Staff.BarLine.transparent = ##f
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Theorbe }
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { theorbe }
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
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        c'16..
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
                                        \>
                                        c'64
                                        c'16
                                        c'32.
                                        c'16..
                                        c'32
                                        c'16
                                        ]
                                        ~
                                    }
                                    \times 4/6
                                    {
                                        c'8
                                        [
                                        c'16
                                        c'8.
                                        ]
                                        ~
                                    }
                                    c'16
                                    [
                                    c'16
                                    ~
                                    \set stemLeftBeamCount = 2
                                    \set stemRightBeamCount = 1
                                    c'16
                                    \times 2/3
                                    {
                                        \set stemLeftBeamCount = 1
                                        \set stemRightBeamCount = 2
                                        c'16
                                        c'32
                                        _ #(make-dynamic-script
                                            (markup
                                                #:whiteout
                                                #:line (
                                                    #:general-align Y -2 #:normal-text #:larger "“"
                                                    #:hspace -0.1
                                                    #:dynamic "ppp"
                                                    #:hspace -0.25
                                                    #:general-align Y -2 #:normal-text #:larger "”"
                                                    )
                                                )
                                            )
                                        ]
                                        ~
                                    }
                                    c'2
                                    \times 2/3
                                    {
                                        r4
                                        c'2
                                        ~
                                    }
                                    c'4
                                    ~
                                    c'4
                                    r2
                                    c'4
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
                                    c'8
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
                                    \times 2/3
                                    {
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
                                        c'16
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
                                        ~
                                    }
                                    c'4
                                    ~
                                    c'4
                                    c'4
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
