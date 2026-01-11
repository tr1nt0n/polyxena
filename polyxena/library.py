import abjad
import baca
import evans
import trinton
import itertools
import polyxena

# score


def polyxena_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[
            abjad.EnglishHorn(),
            abjad.ClarinetInBFlat(),
            abjad.SopranoSaxophone(),
            abjad.BassClarinet(),
            abjad.Bassoon(),
        ],
        groups=[1, 1, 1, 1, 1],
        # staff_types=[
        #     ["bowContactStaff", "Staff"],
        #     ["bowContactStaff", "Staff"],
        #     [
        #         "bowContactStaff",
        #         "Staff",
        #     ],
        #     [
        #         "bowContactStaff",
        #         "Staff",
        #     ],
        # ],
        time_signatures=time_signatures,
        filler=abjad.Skip,
    )

    return score


# notation tools


def color_voice(color, selector=trinton.select_leaves_by_index([0, -1])):
    def coloring(argument):
        selections = selector(argument)

        start_literal = abjad.LilyPondLiteral(
            [
                rf"\override Voice.NoteHead.color = #{color}",
                rf"\override Voice.Dots.color = #{color}",
                rf"\override Voice.Stem.color = #{color}",
                rf"\override Voice.Beam.color = #{color}",
                rf"\override Voice.Rest.color = #{color}",
                rf"\override Voice.Tie.color = #{color}",
                rf"\override Voice.TupletBracket.color = #{color}",
                rf"\override Voice.TupletNumber.color = #{color}",
            ],
            site="before",
        )

        stop_literal = abjad.LilyPondLiteral(
            [
                r"\revert Voice.NoteHead.color",
                r"\revert Voice.Dots.color",
                r"\revert Voice.Stem.color",
                r"\revert Voice.Beam.color",
                r"\revert Voice.Rest.color",
                r"\revert Voice.Tie.color",
                r"\revert Voice.TupletBracket.color",
                r"\revert Voice.TupletNumber.color",
            ],
            site="absolute_after",
        )

        abjad.attach(start_literal, selections[0])
        abjad.attach(stop_literal, selections[-1])

    return coloring


# pitch tools


def transpose_to_first_octave(selector, instrument):
    def transpose(argument):
        _instrument_to_transposition_and_threshold = {
            "english horn": (7, 10),
            "clarinet": (-2, 3),
            "saxophone": (-2, 9),
            "bass clarinet": (14, -1),
            "bassoon": (0, -15),
        }

        selections = selector(argument)

        logical_ties = abjad.select.logical_ties(selections, pitched=True)

        transposition = _instrument_to_transposition_and_threshold[instrument][0]
        threshold = _instrument_to_transposition_and_threshold[instrument][1]

        for tie in logical_ties:

            abjad.mutate.transpose(tie, transposition)

            for _ in range(0, 4):
                if tie[0].written_pitch.number > threshold:
                    abjad.mutate.transpose(tie, -12)

    return transpose


# markups

all_instrument_names = [
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Cor Anglais }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Clarinet in B-flat }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Soprano Saxophone }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Bass Clarinet }'
        ),
    ),
    abjad.InstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Bassoon }'
        ),
    ),
]

all_short_instrument_names = [
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { ca. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { cl. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { s. sax. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { b. cl. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="Staff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { bsn. }'
        ),
    ),
]


def write_instrument_names(score):
    for voice_name, markup in zip(
        [
            "englishhorn voice",
            "clarinetinbflat voice",
            "sopranosaxophone voice",
            "bassclarinet voice",
            "bassoon voice",
        ],
        all_instrument_names,
    ):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
        )


def write_short_instrument_names(score):
    for voice_name, markup in zip(
        [
            "englishhorn voice",
            "clarinetinbflat voice",
            "sopranosaxophone voice",
            "bassclarinet voice",
            "bassoon voice",
        ],
        all_short_instrument_names,
    ):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
            tag=abjad.Tag("+SCORE"),
        )
