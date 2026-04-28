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
        ts.final_time_signature_list[7],
        [(1, 4)],
    ],
)

score = library.polyxena_score(section_ts)
# time signature changes

trinton.change_time_signatures(
    score=score,
    global_context="Global Context",
    measure_range=(15, 21),
    replacement_signatures=[(2, 8), (2, 8), (2, 8), (2, 8), (2, 8), (2, 8), (2, 8)],
)

trinton.change_time_signatures(
    score=score,
    global_context="Global Context",
    measure_range=(22, 28),
    replacement_signatures=[
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
    ],
)

# annotations

# event annotations

for measure, text in zip(
    [
        # 1,
        8,
        13,
        15,
        22,
        29,
        36,
        37,
    ],
    [
        # "bariolage",
        "bariolage gets sparser",
        "silence",
        "gambe builds up intensity",
        "gambe solo in full gear",
        "start introducing beating",
        "beating only, articulate bow changes",
        "beating only, don't articulate bow changes",
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

# gambe music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(
        rhythm.prolated_talea(
            index=1,
            denominator=32,
            prolations=[
                (2, 1),
                (7, 4),
                (3, 2),
                (1, 1),
                (3, 4),
                (1, 2),
                (2, 1),
                (7, 4),
                (3, 2),
                (1, 1),
                (3, 4),
                (1, 2),
                (1, 2),
                (1, 4),
            ],
            elaboration_level=0,
            retrograde=False,
            parse_meter=True,
        )
    ),
    trinton.rewrite_meter_command(),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    pitch.strange_bariolage_pitching(
        index=0,
        instrument="gambe",
        seed=37,
        selector=trinton.logical_ties(pitched=True),
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="stringing gambe",
        auto_reversion=False,
    ),
    trinton.continuous_glissando(selector=trinton.pleaves(), zero_padding=True),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 2, 3, 8, 9, 11, 12, 15, 16, 20, 21, 24, 25, 28]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [abjad.Articulation("talon-to-punta"), abjad.Articulation("punta-to-talon")]
        ),
        selector=trinton.select_logical_ties_by_index(
            [0, 3, 6, 9, 11, 14, 16], first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    library.attach_patterned_dynamics(
        index=36,
        selector=trinton.select_logical_ties_by_index(
            [0, 3, 6, 9, 11, 14, 16], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StartHairpin("--")],
        selector=trinton.select_logical_ties_by_index(
            [0, 3, 6, 9, 11, 14, 16], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.spanner_command(
        strings=["t.", "xp.", "t.", "mst.", "xp.", "p", "xt.", "ord."],
        selector=trinton.select_logical_ties_by_index(
            [0, 3, 3, 6, 6, 9, 9, 11, 11, 14, 14, 16, 16, -1], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=10,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        # end_hook_right_padding=2,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            # r"""- \tweak bound-details.left.Y #1.5""",
            # r"""- \tweak bound-details.right.Y #4""",
        ],
    ),
    # trinton.hooked_spanner_command(
    #     string=r"""\markup { "dp." }""",
    #     selector=trinton.select_logical_ties_by_index(
    #         [1, -1], first=True, pitched=True, grace=False
    #     ),
    #     padding=5,
    #     direction=None,
    #     right_padding=3,
    #     full_string=True,
    #     style="dashed-line-with-hook",
    #     hspace=None,
    #     command="Three",
    #     tag=None,
    #     tweaks=[
    #         r"""- \tweak font-name "Bodoni72 Book Italic" """,
    #         r"""- \tweak font-size 2""",
    #         # r"""- \tweak bound-details.left.Y #4""",
    #         # r"""- \tweak bound-details.right.Y #4""",
    #     ],
    # ),
    voice=score["cello 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(
        evans.tuplet([(1,), (1, 6), (1,), (1, 7), (2, 7), (3, 4), (15, 17, 40), (-1,)])
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index(
            [0, 2, 3, 5, 7, 9], pitched=True, grace=False
        ),
    ),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        pitch_list=pitch.make_bariolage_chords(
            instrument="gambe",
            string_ranges=[(1, 4), (1, 4), (2, 6), (1, 6), (1, 3), (1, 6), (4, 5)],
            index=14,
            seed=37,
        )
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        staff_type="reversion",
        reversion_clef="treble",
        reversion_line_count=5,
        auto_reversion=False,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.Clef("bass"), abjad.Clef("treble")]),
        selector=trinton.select_logical_ties_by_index(
            [
                2,
                4,
                5,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((3, 3, 3, 3, 9, 3, 18, 100)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(
        rhythm.prolated_talea(
            index=1,
            denominator=32,
            prolations=[
                (7, 4),
                (3, 2),
                (1, 1),
                (3, 4),
                (1, 2),
                (2, 1),
                (7, 4),
                (3, 2),
                (1, 1),
                (3, 4),
                (1, 2),
                (1, 2),
                (1, 4),
                (2, 1),
            ],
            elaboration_level=0,
            retrograde=True,
            parse_meter=True,
        )
    ),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        [
            # ["b", "d'", "f'", "a'", "c''", "e''", "g''", "b''"],
            ["b", "d'", "f'", "a'"],
            ["b", "d'", "f'", "a'"],
            ["a'", "c''", "e''", "g''"],
            ["a'", "c''", "e''", "g''"],
            ["a'", "c''", "e''", "g''"],
            ["c''", "e''", "g''", "b''"],
            ["f'", "a'", "c''", "e''"],
            ["f'", "a'", "c''", "e''"],
            ["b", "d'", "f'", "a'"],
        ]
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="stringing theorbe",
        auto_reversion=False,
    ),
    trinton.tremolo_command(selector=trinton.pleaves(grace=False)),
    library.attach_patterned_dynamics(
        index=36,
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 5, 6, 8, 11, 14, 15, 17], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StartHairpin("--")],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 5, 6, 8, 11, 14, 15, 17], first=True, pitched=True
        ),
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [0, 1], pitched=True, grace=False
        ),
        sustained=True,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [2, 3, 4], pitched=True, grace=False
        ),
        sustained=True,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([5], pitched=True, grace=False),
        sustained=True,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [6, 7], pitched=True, grace=False
        ),
        sustained=True,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [8, 9, 10], pitched=True, grace=False
        ),
        sustained=True,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [11, 12, 13], pitched=True, grace=False
        ),
        sustained=True,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([14], pitched=True, grace=False),
        sustained=True,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [15, 16], pitched=True, grace=False
        ),
        sustained=True,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [17, 18], pitched=True, grace=False
        ),
        sustained=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Tie.stencil = ##f", site="before"),
            abjad.LilyPondLiteral(r"\revert Tie.stencil", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.attachment_command(
        attachments=[abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.spanner_command(
        strings=[
            "t.",
            "xp.",
            "t.",
            "mst.",
            "xp.",
            "p",
            "xt.",
            "ord.",
            "t.",
            "xp.",
            "t.",
            "mst.",
            "xp.",
            "p",
            "xt.",
            "ord.",
            "t.",
            "xp.",
            "t.",
        ],
        selector=trinton.select_logical_ties_by_index(
            [
                0,
                1,
                1,
                2,
                2,
                3,
                3,
                4,
                4,
                5,
                5,
                6,
                6,
                7,
                7,
                8,
                8,
                9,
                9,
                10,
                10,
                11,
                11,
                12,
                12,
                13,
                13,
                14,
                14,
                15,
                15,
                16,
                16,
                17,
                17,
                18,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
        style="solid-line-with-arrow",
        padding=9,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        # end_hook_right_padding=2,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            # r"""- \tweak bound-details.left.Y #1.5""",
            # r"""- \tweak bound-details.right.Y #4""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=library.fingering_markup(fingering="i - c"),
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        padding=12.5,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            # r"""- \tweak bound-details.left.Y #4""",
            # r"""- \tweak bound-details.right.Y #4""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"( rasg. )",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        padding=16.5,
        direction=None,
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Three",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            # r"""- \tweak bound-details.left.Y #4""",
            # r"""- \tweak bound-details.right.Y #4""",
        ],
    ),
    voice=score["guitar 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 7)),
    evans.RhythmHandler(
        rhythm.prolated_talea(
            index=1,
            denominator=32,
            prolations=[
                (7, 4),
                (3, 2),
                (1, 1),
                (3, 4),
                (1, 2),
                (2, 1),
                (7, 4),
                (3, 2),
                (1, 1),
                (3, 4),
                (1, 2),
                (1, 2),
                (1, 4),
                (2, 1),
            ],
            elaboration_level=0,
            retrograde=True,
            parse_meter=True,
        )
    ),
    trinton.rewrite_meter_command(),
    evans.PitchHandler(
        pitch_list=pitch.make_bariolage_chords(
            instrument="theorbe",
            string_ranges=[
                (5, 8),
                (5, 8),
                (2, 5),
                (2, 5),
                (2, 5),
                (1, 4),
                (3, 6),
                (3, 6),
                (5, 8),
                (5, 8),
                (5, 8),
                (2, 5),
                (2, 5),
                (2, 5),
                (1, 4),
                (3, 6),
                (3, 6),
                (5, 8),
                (5, 8),
            ],
            index=14,
            seed=37,
        )
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        staff_type="reversion",
        reversion_clef="bass",
        reversion_line_count=5,
        auto_reversion=False,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.Clef("treble"), abjad.Clef("bass")]),
        selector=trinton.select_logical_ties_by_index(
            [6, 8, 11, 17], first=True, pitched=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.chords
    # ),
    trinton.force_accidentals_command(
        selector=trinton.notehead_selector(
            chord_indices=[0, 12, 14, 28, 30],
            head_indices_lists=[[2], [3], [1], [3], [2]],
        )
    ),
    trinton.change_notehead_command(
        notehead="half-harmonic",
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 8, 9, 10, 13, 14, 16], pitched=True, grace=False
        ),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 5, 7, 12, 15, 18], pitched=True, grace=False
        ),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 17, 18], pitched=True, grace=False
        ),
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #2.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [2, 3, 4, 6, 7, 11, 12, 13, 15, 16], pitched=True, grace=False
        ),
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #2.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    voice=score["guitar 2 voice"],
    beam_meter=True,
)

# globals

# final barline

trinton.make_music(
    lambda _: trinton.select_target(_, (37,)),
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
    measures=[37],
    fermata="extremely-long-fermata",
    voice_names=["cello 1 voice", "cello 2 voice", "guitar 1 voice", "guitar 2 voice"],
    font_size=14,
    clef_whitespace=True,
    blank=False,
    last_measure=False,
    padding=-4,
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
                hspace=-2,
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
    lambda _: trinton.select_target(_, (8,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=8,
                tempo=84,
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
    lambda _: trinton.select_target(_, (15,)),
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

trinton.make_music(
    lambda _: trinton.select_target(_, (29,)),
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

# trinton.make_music(
#     lambda _: trinton.select_target(_, (13, 14)),
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

# for measure in [12, 19]:
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
# for measure in [5, 15, 24]:
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
for measure in [1, 2, 4, 5, 6]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [3, 7]:
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

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 21 40 23)))",
                site="absolute_before",
            ),
            abjad.bundle(
                abjad.Markup(r"\markup { S }"),
                r"- \tweak transparent ##t",
                r"- \tweak padding #24",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 21 40 26)))",
                site="absolute_before",
            ),
            abjad.bundle(
                abjad.Markup(r"\markup { S }"),
                r"- \tweak transparent ##t",
                r"- \tweak padding #20",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

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
    segment_path="/Users/trintonprater/scores/polyxena/polyxena/sections/06",
    build_path="/Users/trintonprater/scores/polyxena/polyxena/build",
    segment_name="06",
    includes=[
        "/Users/trintonprater/scores/polyxena/polyxena/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
