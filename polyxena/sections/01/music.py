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
        # ts.final_time_signature_list[0],
        [(3, 4), (3, 8), (3, 4), (3, 8), (3, 4), (3, 8)],
        [(1, 4)],
    ],
)

score = library.polyxena_score(section_ts)

# gambe music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1, 1, 1, 1, 1), (-1,)])),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler([["a", "ef"], ["a", "d"]]),
    library.multiple_muting(selector=abjad.select.chords, closed_fundamental=False),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 2, 3, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "scratch" }""",
        selector=trinton.select_leaves_by_index([0, 3], pitched=True),
        padding=6,
        direction=None,
        right_padding=-0.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    trinton.spanner_command(
        strings=["", "norm."],
        selector=trinton.select_logical_ties_by_index(
            [3, -1], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=6,
        right_padding=0,
        direction=None,
        full_string=False,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "tasto" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "IV" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=11,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Three",
        tag=None,
        tweaks=[
            # r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["cello 2 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2, 1)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.stencil = ##f", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(
        evans.RhythmHandler(
            evans.accelerando(
                [(1, 20), (1, 8), (1, 32)],
            )
        ),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    pitch.strange_bariolage_pitching(index=0, instrument="gambe"),
    library.articulate_bariolage(index=1),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="stringing gambe",
        auto_reversion=False,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("punta-to-talon")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "pont. moltiss." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["cello 1 voice"],
    # beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([1], 8)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.tuplet([(1, 1, 1, 1, 1, 1, 1, 1)])),
        direction=abjad.DOWN,
        voice_name="gambe gliss 2",
        temp_name="gliss 1",
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.tuplet([(1, 1, 1, 1, 1, 1, 1)])),
        direction=abjad.DOWN,
        voice_name="gambe gliss 3",
        temp_name="temp 1",
    ),
    voice=score["gambe gliss 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.tuplet([(1, 1, 1, 1)])),
        direction=abjad.DOWN,
        voice_name="gambe gliss 4",
        temp_name="temp 2",
    ),
    voice=score["gambe gliss 3"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    evans.PitchHandler(["f'", "a'", "d'", "f'"]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Accidental.stencil = ##f", site="before"
            )
        ],
        selector=trinton.pleaves(exclude=[0]),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "( finger percussion on accents )" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=15,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    trinton.continuous_glissando(zero_padding=True, invisible_center=True),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    abjad.slur,
    trinton.invisible_tuplet_brackets(),
    voice=score["cello 2 voice gliss 1"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    evans.PitchHandler(["b", "d'"]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Accidental.stencil = ##f", site="before"
            )
        ],
        selector=trinton.pleaves(exclude=[0]),
    ),
    trinton.continuous_glissando(zero_padding=True, invisible_center=True),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.noteheads_only(selector=trinton.pleaves()),
    trinton.invisible_tuplet_brackets(),
    voice=score["gambe gliss 2 temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    evans.PitchHandler(["gs", "e"]),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Accidental.stencil = ##f", site="before"
            )
        ],
        selector=trinton.pleaves(exclude=[0]),
    ),
    trinton.continuous_glissando(zero_padding=True, invisible_center=True),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.noteheads_only(selector=trinton.pleaves()),
    trinton.invisible_tuplet_brackets(),
    voice=score["gambe gliss 3 temp 2"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    evans.PitchHandler(
        [
            "ef",
            "c",
        ]
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Accidental.stencil = ##f", site="before"
            )
        ],
        selector=trinton.pleaves(exclude=[0]),
    ),
    trinton.continuous_glissando(zero_padding=True, invisible_center=True),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.noteheads_only(selector=trinton.pleaves()),
    trinton.invisible_tuplet_brackets(),
    voice=score["gambe gliss 4"],
)


# theorbe music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.tuplet([(1,), (8, 1), (1,)])),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index([0, 2], pitched=True, grace=False),
    ),
    evans.PitchHandler([["b''", "g''", "e''", "c''", "a'"], ["a'", "f'"]]),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="stringing theorbe",
        auto_reversion=False,
    ),
    trinton.continuous_glissando(
        selector=trinton.logical_ties(pitched=True, grace=False),
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #2.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\set glissandoMap = #'((4 . 1) (3 . 0))",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\unset glissandoMap",
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], -1),
    ),
    trinton.spanner_command(
        strings=["p - c", "i - a"],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=9,
        right_padding=0,
        direction=None,
        full_string=False,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    trinton.spanner_command(
        strings=["pont.", "pont. moltiss."],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=11.5,
        right_padding=0,
        direction=None,
        full_string=False,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "( rasg. )" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=14,
        direction=None,
        right_padding=28,
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
    trinton.tremolo_command(),
    voice=score["guitar 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2, 1)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rhythm.shuffled_gesture(index=2, stage=3, instrument="gambe")),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # evans.PitchHandler(["g", "b''"]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 1, 4, 6]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
        ],
        selector=trinton.select_leaves_by_index([4]),
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="tablature",
        auto_reversion=False,
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.select_leaves_by_index([0, 1, 2, 3])
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_leaves_by_index([4, 5, 6]),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3], pitched=True, grace=False
        ),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [3, 4], pitched=True, grace=False
        ),
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [4, 5, 6], pitched=True, grace=False
        ),
        zero_padding=True,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([6], pitched=True, grace=False),
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.hooked_spanner_command(
        string=r"""\markup { "( touching all strings affected by RH )" }""",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        padding=12,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = #11",
                site="before",
            ),
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -1], pitched=True),
        direction=abjad.UP,
    ),
    voice=score["guitar 2 voice"],
    # beam_meter=True
)

# globals

# final barline

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
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
    measures=[7],
    fermata="short-fermata",
    voice_names=["cello 1 voice", "cello 2 voice", "guitar 1 voice", "guitar 2 voice"],
    font_size=14,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    padding=10,
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
                tempo=48,
                padding=14,
                note_head_fontsize=0.5,
                stem_length=2,
                text_fontsize=8,
                dotted=False,
                fraction=None,
                tempo_change=None,
                site="after",
                hspace=0,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        # tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

for measure in [2, 4, 6]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[
                abjad.LilyPondLiteral(
                    [
                        r"\once \override TimeSignature.stencil = #(three-seven-time-signature)",
                        r"\set Score.proportionalNotationDuration = #(ly:make-moment 2/105)",
                    ],
                    site="before",
                ),
                abjad.LilyPondLiteral(
                    [
                        r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/30)",
                    ],
                    site="absolute_after",
                ),
            ],
            selector=trinton.select_leaves_by_index([0]),
        ),
        voice=score["Global Context"],
    )

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

# breaking

# for measure in [
#     7,
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
# for measure in [1, 2, 4, 5, 6]:
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
# for measure in [3]:
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (1 28.5 31 26.5)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

# trinton.make_music(
#     lambda _: trinton.select_target(_, (4,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.LilyPondLiteral(
#                 r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 15 30 15)))",
#                 site="absolute_before",
#             ),
#             abjad.bundle(
#                 abjad.Markup(r"\markup { \fontsize #25 { . } }"),
#                 r"- \tweak padding #7",
#                 r"- \tweak color #white",
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         tag=abjad.Tag("+SCORE"),
#         direction=abjad.UP,
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

# beautification

trinton.remove_redundant_time_signatures(score=score)
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
    segment_path="/Users/trintonprater/scores/polyxena/polyxena/sections/01",
    build_path="/Users/trintonprater/scores/polyxena/polyxena/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/polyxena/polyxena/build/polyxena-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
