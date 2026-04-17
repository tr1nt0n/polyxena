import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
from polyxena import library
from polyxena import pitch
from polyxena import rhythm
from polyxena import ts

# score

section_ts = abjad.sequence.flatten(
    [
        ts.final_time_signature_list[5][0:23],
        [(1, 4)],
    ],
)

score = library.polyxena_score(section_ts)

# annotations

# event annotations

for measure, text in zip(
    [
        # 1,
        # 5,
        # 6,
        # 9,
        # 10,
        12,
        14,
        21,
        22,
        23,
    ],
    [
        # "microform",
        # "slow, single material instance",
        # "microform",
        # "slow, single material instance",
        # "microform",
        "slow, single material instance, trans. to gesture (made of materials from previous process, ends with gambe tailpiece)",
        "alternate measure of reproportioned gesture and measure of silence",
        "tailpiece holds",
        "rasgeado develops above",
        "gambe transitions to more rhythmically active dp",
    ],
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                abjad.bundle(
                    abjad.Markup(rf'\markup {{ "{ text }" }}'), r"- \tweak font-size #6"
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
            direction=abjad.UP,
        ),
        voice=score["Global Context"],
    )

# material sequencing

original_sequence = [_[0] for _ in ts.time_signatures[0:7]]
modulated_sequence = [_ % 5 for _ in original_sequence]

material_sequence = [_ for _ in modulated_sequence]

start_index_counter = 0
for _ in range(0, 3):
    samples = material_sequence[start_index_counter:-1]
    for sample, modulator in zip(samples, modulated_sequence):
        sample = sample + modulator
        sample = sample % 5
        material_sequence.append(sample)

    start_index_counter += 5

material_sequence = trinton.remove_adjacent(material_sequence)

retrograde_material_sequence = material_sequence[::-1]

_material_to_color = {
    0: '"cyan"',  # rasgeado,
    1: '"blue"',  # bariolage,
    2: '"green"',  # golpe/finger percussion,
    3: '"yellow"',  # multiple muting,
    4: '"red"',  # multiple glissandi,
}

for measure_range, material_index in zip(
    [(1, 2), (3,), (4,), (5,), (6,), (7, 8), (9,), (10,), (11,), (12, 13)],
    itertools.cycle(material_sequence),
):
    trinton.make_music(
        lambda _: trinton.select_target(_, measure_range),
        trinton.linear_attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    rf"""\staffHighlight {_material_to_color[material_index]} """,
                    site="before",
                ),
                abjad.LilyPondLiteral(r"\stopStaffHighlight", site="absolute_after"),
            ],
            selector=trinton.select_leaves_by_index([0, -1]),
        ),
        voice=score["cello 2 voice"],
    )

for measure_range, material_index in zip(
    [(1,), (2,), (3,), (4, 5), (6, 7), (8, 9), (10, 11), (12, 13)],
    itertools.cycle(retrograde_material_sequence),
):
    trinton.make_music(
        lambda _: trinton.select_target(_, measure_range),
        trinton.linear_attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    rf"""\staffHighlight {_material_to_color[material_index]} """,
                    site="before",
                ),
                abjad.LilyPondLiteral(r"\stopStaffHighlight", site="absolute_after"),
            ],
            selector=trinton.select_leaves_by_index([0, -1]),
        ),
        voice=score["guitar 2 voice"],
    )

# gambe music


# theorbe music


# globals

# final barline

trinton.make_music(
    lambda _: trinton.select_target(_, (24,)),
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
    measures=[24],
    fermata="middle-fermata",
    voice_names=["cello 1 voice", "cello 2 voice", "guitar 1 voice", "guitar 2 voice"],
    font_size=14,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    padding=-6,
    # extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

# tempi

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=8,
                tempo=112,
                padding=14,
                note_head_fontsize=0.5,
                stem_length=2,
                text_fontsize=8,
                dotted=False,
                fraction=None,
                tempo_change=None,
                site="after",
                hspace=1,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        # tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=8,
                tempo=48,
                padding=14,
                note_head_fontsize=0.5,
                stem_length=2,
                text_fontsize=8,
                dotted=False,
                fraction=None,
                tempo_change=None,
                site="after",
                hspace=1,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        # tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=8,
                tempo=112,
                padding=14,
                note_head_fontsize=0.5,
                stem_length=2,
                text_fontsize=8,
                dotted=False,
                fraction=None,
                tempo_change=None,
                site="after",
                hspace=1,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        # tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=8,
                tempo=48,
                padding=14,
                note_head_fontsize=0.5,
                stem_length=2,
                text_fontsize=8,
                dotted=False,
                fraction=None,
                tempo_change=None,
                site="after",
                hspace=1,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        # tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=8,
                tempo=112,
                padding=14,
                note_head_fontsize=0.5,
                stem_length=2,
                text_fontsize=8,
                dotted=False,
                fraction=None,
                tempo_change=None,
                site="after",
                hspace=1,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        # tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=8,
                tempo=48,
                padding=14,
                note_head_fontsize=0.5,
                stem_length=2,
                text_fontsize=8,
                dotted=False,
                fraction=None,
                tempo_change=None,
                site="after",
                hspace=1,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        # tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    trinton.spanner_command(
        strings=[
            trinton.tempo_markup(
                note_value=8,
                tempo=84,
                padding=0,
                note_head_fontsize=0.5,
                stem_length=2,
                text_fontsize=8,
                dotted=False,
                fraction=None,
                tempo_change="accel.",
                site="after",
                hspace=1.5,
                string_only=True,
            ),
            trinton.tempo_markup(
                note_value=8,
                tempo=84,
                padding=0,
                note_head_fontsize=0.5,
                stem_length=2,
                text_fontsize=8,
                dotted=False,
                fraction=None,
                tempo_change=None,
                site="after",
                hspace=0,
                string_only=True,
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 1]),
        style="solid-line-with-arrow",
        padding=13,
        tweaks=None,
        right_padding=0,
        direction=None,
        full_string=True,
        command="Three",
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (21,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=8,
                tempo=63,
                padding=14,
                note_head_fontsize=0.5,
                stem_length=2,
                text_fontsize=8,
                dotted=False,
                fraction=None,
                tempo_change=None,
                site="after",
                hspace=1,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        # tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (2,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 [
#                     r"\once \override TimeSignature.stencil = #(seven-eighteen-time-signature)",
#                     r"\set Score.proportionalNotationDuration = #(ly:make-moment 9/240)",
#                 ],
#                 site="before",
#             ),
#             abjad.LilyPondLiteral(
#                 [
#                     r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/30)",
#                 ],
#                 site="absolute_after",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
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

# trinton.make_music(
#     lambda _: trinton.select_target(_, (8,)),
#     trinton.attachment_command(
#         attachments=[abjad.LilyPondLiteral([r"\magnifyStaff #7/8"], site="before")],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["cello 2 voice temp"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (10,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral([r"\magnifyStaff #1"], site="absolute_after")
#         ],
#         selector=trinton.select_leaves_by_index([-1], grace=False),
#     ),
#     voice=score["cello lower voice"],
# )
#
# for voice_name in ["violin 1 bow voice", "violin 4 voice", "viola 2 voice temp 2"]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (8, 10)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral([r"\magnifyStaff #7/8"], site="before")],
#             selector=trinton.select_leaves_by_index([0]),
#         ),
#         trinton.attachment_command(
#             attachments=[
#                 abjad.LilyPondLiteral([r"\magnifyStaff #1"], site="absolute_after")
#             ],
#             selector=trinton.select_leaves_by_index([-1]),
#         ),
#         voice=score[voice_name],
#     )

# instrument names

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# time signature changes

# trinton.change_time_signatures(
#     score=score,
#     global_context="Global Context",
#     measure_range=(5,),
#     replacement_signatures=[(3, 8), (3, 8)],
# )

# barlines

# trinton.make_music(
#     lambda _: trinton.select_target(_, (3,)),
#     trinton.linear_attachment_command(
#         attachments=[
#             abjad.BarLine("||", site="after"),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )

# beautification

trinton.remove_redundant_time_signatures(score=score)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (5,)),
#     trinton.detach_command(
#         detachments=[abjad.LilyPondLiteral], selector=abjad.select.leaves
#     ),
#     voice=score["Global Context"],
# )

# breaking

# for measure in [
#     8,
# ]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )
#
for measure in [1, 2, 3, 4, 6, 7, 8, 10, 11, 13]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [5, 9, 12]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

# spacing

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2 21 35 19)))",
#                 site="absolute_before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (4,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (8 38 28)))",
#                 site="absolute_before",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

# whiteouts

trinton.whiteout_empty_staves(
    score=score,
    voice_names=["cello 1 voice", "guitar 1 voice"],
    cutaway="blank",
    tag=abjad.Tag("+SCORE"),
    last_segment=False,
)

# trinton.whiteout_empty_staves(
#     score=score,
#     voice_names=["cello 2 voice"],
#     cutaway=False,
#     tag=abjad.Tag("+SCORE"),
#     last_segment=False,
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (11,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override BarNumber.Y-offset = #5", site="before"
#             )
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#     ),
#     voice=score["Global Context"],
# )

# colophon

# trinton.make_music(
#     lambda _: trinton.select_target(_, (16,)),
#     trinton.attachment_command(
#         attachments=[
#             # abjad.LilyPondLiteral(
#             #     r"\override Staff.TextScript.whiteout = ##f",
#             #     site="before",
#             # ),
#             abjad.bundle(
#                 abjad.Markup(
#                     r"""\markup \fontsize #1 \lower #5 { \hspace #-1.75 \column \override #'(font-name . "Bodoni72 Book Italic") { \line { August - November 2025 } \line { Buffalo - Brooklyn, NY } } }"""
#                 ),
#                 r"- \tweak X-extent ##f",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.DOWN,
#     ),
#     voice=score["cello 2 voice"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (15,)),
#     trinton.attachment_command(
#         attachments=[
#             # abjad.LilyPondLiteral(
#             #     r"\override Staff.TextScript.whiteout = ##f",
#             #     site="before",
#             # ),
#             abjad.bundle(
#                 abjad.Markup(
#                     r"""\markup \fontsize #1 \lower #20 { \hspace #-66.6 \center-column \override #'(font-name . "Bodoni72 Book Italic") { \line { " \". . . The history is held and the context is closer to the burn of what you & I can call " } \line { " \"Knowing " } \line { " \"But we just mean feeling " } \line { " \"To know and be known and to strike against the brush " } \line { " \"The brush that submits to decay in the gutters " } \line { " \"and the gutters, what the American can understand as, the oversaturation, that which the American increasingly comes to know as, the flood." } \line { " \"We will have that flood and we will fear the fire" } \line { " \"I am unable to peel myself from any fire . . .\" " } } }"""
#                 ),
#                 r"- \tweak X-extent ##f",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.DOWN,
#     ),
#     voice=score["cello lower voice"],
# )

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/polyxena/polyxena/sections/05",
    build_path="/Users/trintonprater/scores/polyxena/polyxena/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/polyxena/polyxena/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
