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
