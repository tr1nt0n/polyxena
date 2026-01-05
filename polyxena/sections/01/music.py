import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
from polyxena import library

# from polyxena import pitch
# from polyxena import rhythm

# score

score = library.polyxena_score(
    [
        (3, 4),
        (7, 4),
        (8, 4),
        (9, 16),
        (1, 4),
    ]
)

# english horn music

# soprano saxophone music

# clarinet music

# bass clarinet music

# bassoon music


# globals

# final barline

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.attachment_command(
        attachments=[
            abjad.BarLine("||", site="after"),
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    voice=score["Global Context"],
)

# fermate

trinton.fermata_measures(
    score=score,
    measures=[5],
    fermata="short-fermata",
    voice_names=[
        "englishhorn voice",
        "clarinetinbflat voice",
        "sopranosaxophone voice",
        "bassclarinet voice",
        "bassoon voice",
    ],
    font_size=15,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    # padding=-5,
    # extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

# tempi

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=4,
                tempo=60,
                padding=20,
                note_head_fontsize=0.5,
                stem_length=2,
                text_fontsize=9,
                dotted=False,
                fraction=None,
                tempo_change=None,
                site="after",
                hspace=-2,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

# breaking

for measure in [
    5,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

# for measure in [
#     3,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )
#
# for measure in [
#     1,
#     2,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )

# spacing

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (11 33 27 35)))",
#                 site="absolute_before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )


# trinton.make_music(
#     lambda _: trinton.select_target(_, (2, 3)),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/30)",
#                 site="before",
#             ),
#             abjad.LilyPondLiteral(
#                 r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/20)",
#                 site="before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, 1,]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

# instrument names

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# beautification

trinton.remove_redundant_time_signatures(score=score)

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/polyxena/polyxena/sections/01",
    build_path="/Users/trintonprater/scores/polyxena/polyxena/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/polyxena/polyxena/build/polyxena-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
