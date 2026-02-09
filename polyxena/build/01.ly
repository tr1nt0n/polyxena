    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0.5 \raise #11.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 48" } } }
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #11.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 84" } } }
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #11.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 48" } } }
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #11.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 84" } } }
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #11.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 48" } } }
            \once \override Score.TimeSignature.stencil = ##f
            \time 3/4
            s1 * 3/4
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #0 \raise #11.5 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 8 } #2 } \fontsize #8 { "= 84" } } }
            \once \override Score.BarLine.transparent = ##f
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.stencil = ##f
            \time 1/4
            R1 * 1/4
            - \tweak font-size #'14
            _ \short-fermata
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
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Gambe }
                                      %! +SCORE
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { gambe }
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 3/4
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
                            \context Staff = "cello 2 staff"
                            {
                                \context Voice = "cello 2 voice"
                                {
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        - \accent
                                        [
                                        c'8
                                        - \accent
                                        \revert Staff.Stem.stemlet-length
                                        c'8
                                        ]
                                        ~
                                    }
                                    \times 4/6
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [
                                        c'16
                                        - \accent
                                        c'8.
                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \accent
                                        ]
                                        c'4
                                        ~
                                        c'16
                                        ~
                                    }
                                    c'4
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        - \accent
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        c'16.
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \times 2/3
                                        {
                                            \override Staff.Stem.stemlet-length = 0.75
                                            c'8
                                            - \accent
                                            [
                                            c'8
                                            - \accent
                                            c'8
                                            - \accent
                                        }
                                        c'16
                                        - \accent
                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        - \accent
                                        ]
                                    }
                                    c'4
                                    ~
                                    \times 2/3
                                    {
                                        c'2
                                        c'4
                                        - \accent
                                    }
                                    c'4
                                    ~
                                    \times 4/6
                                    {
                                        c'4
                                        c'8
                                        :64
                                        - \accent
                                        c'4.
                                        ~
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        c'4
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        :64
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        ]
                                        ~
                                    }
                                    c'4
                                    c'2.
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
                                    \set GrandStaff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Theorbe }
                                      %! +SCORE
                                    \set GrandStaff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { theorbe }
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 3/4
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
                            \context Staff = "guitar 2 staff"
                            {
                                \context Voice = "guitar 2 voice"
                                {
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'32
                                        [
                                        c'16..
                                        :128
                                        c'64
                                        - \accent
                                        \revert Staff.Stem.stemlet-length
                                        c'16
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'32.
                                        [
                                        c'16.
                                        :128
                                        c'64
                                        - \accent
                                        c'32.
                                        c'64
                                        - \accent
                                        c'32.
                                        c'32.
                                        c'16.
                                        :128
                                        \revert Staff.Stem.stemlet-length
                                        c'32
                                        ]
                                    }
                                    c'4
                                    ~
                                    \times 2/3
                                    {
                                        c'2
                                        c'4
                                        :32
                                        - \accent
                                    }
                                    c'16
                                    :128
                                    - \accent
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        :64
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        c'16.
                                        :128
                                        ]
                                        ~
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    :128
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    c'8.
                                    :64
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 8/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        :64
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        c'16.
                                        :128
                                        - \accent
                                        ]
                                    }
                                    c'16
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c'8
                                        [
                                        \revert Staff.Stem.stemlet-length
                                        c'16.
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    [
                                    c'16
                                    c'16
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    ]
                                    ~
                                    c'4
                                    c'2.
                                    ~
                                    c'2.
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
        }
    >>
  %! abjad.LilyPondFile._get_format_pieces()
