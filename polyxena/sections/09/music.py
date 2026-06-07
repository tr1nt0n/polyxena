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

score = library.polyxena_score([(4, 16), (4, 16), (1, 4)])

# time signature changes

# trinton.change_time_signatures(
#     score=score,
#     global_context="Global Context",
#     measure_range=(1,),
#     replacement_signatures=[(9, 8), (7, 8)],
# )

# annotations

# event annotations

# for measure, text in zip(
#     [
#         # 1,
#         # 3,
#         17,
#     ],
#     [
#         # "theorbe strikes + gambe drone",
#         # "both striking",
#         "theorbe drone + gambe continues striking"
#     ],
# ):
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[
#                 abjad.bundle(
#                     abjad.Markup(rf'\markup {{ "{ text }" }}'), r"- \tweak font-size #6"
#                 ),
#             ],
#             selector=trinton.select_leaves_by_index([0]),
#             direction=abjad.UP,
#         ),
#         voice=score["Global Context"],
#     )

# gambe music

rhythm.make_multi_gliss(
    score=score,
    voice_name="cello 2 voice",
    measures=(1, 2),
    pitch_lists=[
        ["ef", "cs", "d", "cqs", "d"],
        ["bf,", "aqf,", "b,", "af,"],
        ["f,", "ef,", "f,", "ef,", "f,", "eqf,"],
        ["c,", "a,,", "b,,"],
    ],
    preprocessor=trinton.fuse_sixteenths_preprocessor((3, 2, 3)),
    finger_percussion_voice_index=1,
    finger_percussion_padding=4,
    extra_voice="sub 1",
    notehead=None,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True)),
    trinton.call_rmaker(
        rmaker=rmakers.force_augmentation, selector=trinton.select_tuplets_by_index([0])
    ),
    trinton.detach_command(
        detachments=[
            abjad.StartTextSpan,
            abjad.StopTextSpan,
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "finger percussion" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=11.5,
        direction=None,
        right_padding=3,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Three",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"ff"')],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([2, 3, 5, 6]),
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        staff_type="reversion",
        reversion_clef="bass",
        reversion_line_count=5,
        auto_reversion=False,
    ),
    voice=score["cello 2 voice gliss 2 sub 1"],
)


# theorbe music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.tuplet([(2, 1, 1), (2, 1, 1, 2), (1, 1, 1)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.call_rmaker(
        rmaker=rmakers.force_augmentation,
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=pitch.make_bariolage_chords(
            instrument="theorbe",
            string_ranges=[(1, 4), (2, 5), (3, 6), (4, 7)],
            index=6,
            seed=37,
        ),
        selector=trinton.select_logical_ties_by_index([0, 1, 2, 3]),
    ),
    abjad.beam,
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
        ],
        selector=trinton.select_leaves_by_index([2, 3, 6, 7]),
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        staff_type="reversion",
        reversion_clef="bass",
        reversion_line_count=5,
        auto_reversion=False,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Articulation("hammer-on"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3], first=True, pitched=True, grace=False
        ),
    ),
    trinton.change_lines(
        lines=1,
        clef="percussion",
        selector=trinton.select_leaves_by_index([4]),
        invisible_barlines=False,
    ),
    trinton.change_notehead_command(
        notehead="cross", selector=trinton.select_leaves_by_index([4, 5, 6, 7, 8, 9])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Staff.Clef.stencil = ##f", site="before"),
        ],
        selector=trinton.select_leaves_by_index([4]),
    ),
    trinton.invisible_accidentals_command(selector=trinton.select_leaves_by_index([4])),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic('"ff"'), abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0, 4]),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { \column { \line { "strum bridge" } \line { "w/ plectrum" } } }""",
        selector=trinton.select_leaves_by_index([4, -1], pitched=True),
        padding=4.5,
        direction=None,
        right_padding=3,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Three",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    voice=score["guitar 2 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((3, 3, 2)),
)

# globals

# fermate

trinton.fermata_measures(
    score=score,
    measures=[3],
    fermata="extremely-long-fermata",
    voice_names=["cello 1 voice", "cello 2 voice", "guitar 1 voice", "guitar 2 voice"],
    font_size=14,
    clef_whitespace=True,
    blank=True,
    last_measure=True,
    padding=-7,
    # extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

# tempi

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                trinton.boxed_markup(
                    string=[
                        r"Start at \fontsize #-6 \note {16} #2 \fontsize #2 = 250",
                        r"Each repetition, the tempo changes to the \fontsize #-6 \note {16} #2 pulse of the theorbo's last tuplet.",
                        r"Repeat until \fontsize #-6 \note {16} #2 \fontsize #2 = ~15",
                    ],
                    tweaks=None,
                    column="\column",
                    font_name="Bodoni72 Book Italic",
                    fontsize=2,
                    string_only=False,
                ),
                r"- \tweak padding #15",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (1,)),
#     trinton.attachment_command(
#         attachments=[
#             trinton.tempo_markup(
#                 note_value=16,
#                 tempo=60,
#                 padding=14,
#                 note_head_fontsize=0.5,
#                 stem_length=2,
#                 text_fontsize=8,
#                 dotted=False,
#                 fraction=None,
#                 tempo_change=None,
#                 site="after",
#                 hspace=5.75,
#                 string_only=False,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.UP,
#         # tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (2, 3)),
#     trinton.spanner_command(
#         strings=[
#             trinton.tempo_markup(
#                 note_value=8,
#                 tempo=84,
#                 padding=0,
#                 note_head_fontsize=0.5,
#                 stem_length=2,
#                 text_fontsize=8,
#                 dotted=False,
#                 fraction=None,
#                 tempo_change="accel.",
#                 site="after",
#                 hspace=1.5,
#                 string_only=True,
#             ),
#             trinton.tempo_markup(
#                 note_value=8,
#                 tempo=84,
#                 padding=0,
#                 note_head_fontsize=0.5,
#                 stem_length=2,
#                 text_fontsize=8,
#                 dotted=False,
#                 fraction=None,
#                 tempo_change=None,
#                 site="after",
#                 hspace=0,
#                 string_only=True,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0, 1]),
#         style="solid-line-with-arrow",
#         padding=13,
#         tweaks=None,
#         right_padding=4.25,
#         direction=None,
#         full_string=True,
#         command="Three",
#     ),
#     voice=score["Global Context"],
# )


# trinton.make_music(
#     lambda _: trinton.select_target(_, (2,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 [
#                     r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/50)",
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

# barlines

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BarLine("|.", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Score.BarLine.bar-extent = #'(-2 . 2)", site="before"
            ),
            abjad.BarLine(".|:", site="before"),
            abjad.BarLine(":|.", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1]),
    ),
    voice=score["Global Context"],
)

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

# for measure in [1]:
#     trinton.make_music(
#         lambda _: trinton.select_target(_, (measure,)),
#         trinton.attachment_command(
#             attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="absolute_after")],
#             selector=trinton.select_leaves_by_index([0]),
#             tag=abjad.Tag("+SCORE"),
#         ),
#         voice=score["Global Context"],
#     )
#
#
# for measure in [4]:
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
#
# for measure in [3]:
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
# for measure in [1, 2]:
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

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 25)))",
                site="absolute_before",
            ),
            abjad.LilyPondLiteral(
                r"\override BarNumber.Y-offset = 4.75",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (3,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 27 19)))",
#                 site="absolute_before",
#             ),
#             abjad.bundle(
#                 abjad.Markup(r"\markup { S }"),
#                 r"- \tweak transparent ##t",
#                 r"- \tweak padding #26",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#         direction=abjad.UP,
#     ),
#     voice=score["Global Context"],
# )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (21,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 40 19)))",
#                 site="absolute_before",
#             ),
#             abjad.bundle(
#                 abjad.Markup(r"\markup { S }"),
#                 r"- \tweak transparent ##t",
#                 r"- \tweak padding #26",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#         direction=abjad.UP,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            # abjad.LilyPondLiteral(
            #     r"\override Staff.TextScript.whiteout = ##f",
            #     site="before",
            # ),
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #1 \lower #5 { \hspace #-1.75 \column \override #'(font-name . "Bodoni72 Book Italic") { \line { December 2025 - July 2026 } \line { Buffalo, NY - Schöppingen, DE } } }"""
                ),
                r"- \tweak X-extent ##f",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["guitar 2 voice"],
)


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
    segment_path="/Users/trintonprater/scores/polyxena/polyxena/sections/09",
    build_path="/Users/trintonprater/scores/polyxena/polyxena/build",
    segment_name="09",
    includes=[
        "/Users/trintonprater/scores/polyxena/polyxena/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
