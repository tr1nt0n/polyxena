  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
  %! abjad.LilyPondFile._get_format_pieces()
\version "2.23.81"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "/Users/trintonprater/scores/polyxena/polyxena/build/polyxena-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 3/4
            s1 * 3/4
              %! +SCORE
            ^ \markup \override #'(font-name . "Bodoni72 Book") { \hspace #-2 \raise #20 \with-dimensions-from \null \concat { \fontsize #0.5 { \note { 4 } #2 } \fontsize #9 { "= 60" } } }
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
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
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
                    \context Staff = "clarinetinbflat staff"
                    {
                        \context Voice = "clarinetinbflat voice"
                        {
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Clarinet in B-flat }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { cl. }
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
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
                    \context Staff = "sopranosaxophone staff"
                    {
                        \context Voice = "sopranosaxophone voice"
                        {
                            \set Staff.instrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { Soprano Saxophone }
                              %! +SCORE
                            \set Staff.shortInstrumentName = \markup \fontsize #4 \override #'(font-name . "Bodoni72 Book Italic") { s. sax. }
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
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
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
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
                            s1 * 3/4
                            s1 * 7/4
                            s1 * 2
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
}
