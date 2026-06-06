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

score = library.polyxena_score([(37, 16), (37, 16), (37, 16), (1, 4)])

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

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([100], 4)),
    evans.PitchHandler([["a", "ef", "d"]]),
    library.multiple_muting(
        selector=abjad.select.chords,
        closed_fundamental=False,
        forgo_notehead_change=True,
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        auto_harmonics=False,
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        staff_type="reversion",
        reversion_clef="bass",
        reversion_line_count=5,
        auto_reversion=False,
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False)
    ),
    trinton.noteheads_only(selector=trinton.pleaves()),
    trinton.hooked_spanner_command(
        string=r"""\markup { "IV" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=5,
        direction=None,
        right_padding=0,
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
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([100], 4)),
    # evans.PitchHandler([]),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        auto_harmonics=False,
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        staff_type="stringing gambe",
        auto_reversion=False,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation("coda"),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False)
    ),
    trinton.noteheads_only(selector=trinton.pleaves()),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([100], 4)),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        staff_type="reversion",
        reversion_clef="percussion",
        reversion_line_count=1,
        auto_reversion=False,
        force_clef=False,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.stencil = ##f", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False)
    ),
    trinton.noteheads_only(selector=trinton.pleaves()),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    abjad.slur,
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
            abjad.Dynamic('"fff"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 4, -1], first=True, pitched=True
        ),
    ),
    trinton.spanner_command(
        strings=["t.", "dp.", ""],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 2, 4], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=7.5,
        right_padding=0,
        direction=None,
        full_string=False,
        # end_hook=True,
        # end_hook_right_padding=2,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "tailpiece" }""",
        selector=trinton.select_logical_ties_by_index(
            [4, -1], pitched=True, first=True
        ),
        padding=4,
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
    voice=score["cello 2 voice"],
)

# theorbe music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(evans.talea([1000], 4)),
    evans.PitchHandler([["a,", "f,", "d,"]]),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0], pitched=True),
        staff_type="stringing theorbe",
        auto_reversion=False,
        force_clef=False,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tremolo-articulation")],
        selector=trinton.select_logical_ties_by_index(
            [0], first=True, pitched=True, grace=False
        ),
    ),
    trinton.duration_line(selector=trinton.logical_ties(pitched=True, grace=False)),
    trinton.noteheads_only(selector=trinton.pleaves()),
    trinton.transparent_noteheads(selector=trinton.pleaves(grace=True)),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("f"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 2, 5, 5, -1], pitched=True),
    ),
    trinton.spanner_command(
        strings=[
            library.fingering_markup(fingering="p - c"),
            library.fingering_markup(fingering="i - m"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=10,
        right_padding=0,
        direction=None,
        full_string=True,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    trinton.spanner_command(
        strings=["xt.", "ord.", "xp."],
        selector=trinton.select_leaves_by_index([0, 3, 3, -1], pitched=True),
        style="solid-line-with-arrow",
        padding=14,
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
        padding=16.5,
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
    voice=score["guitar 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        rhythm.prolated_talea(
            index=7,
            denominator=16,
            prolations=[(7, 4), (3, 2)],
            elaboration_level=0,
            retrograde=False,
            parse_meter=False,
        )
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.tuplet([(2, 1, 2, 1, 1)])),
        direction=abjad.DOWN,
        voice_name="XIV voice sub 1",
        temp_name="XIII sub 1",
        preprocessor=trinton.fuse_eighths_preprocessor((2, 2, 3, 2, 1)),
    ),
    voice=score["guitar 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((1, 2, 2, 3, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            rhythm.prolated_talea(
                index=36,
                denominator=16,
                prolations=[(3, 1)],
                elaboration_level=0,
                retrograde=True,
                parse_meter=False,
            )
        ),
        direction=abjad.UP,
        voice_name="XII voice sub 1",
        temp_name="",
        preprocessor=trinton.fuse_eighths_preprocessor((2, 3, 2, 1, 2)),
    ),
    voice=score["guitar 2 voice"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.PitchHandler(["c"]),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(abjad.Tie(), r"- \tweak transparent ##t"),
        ],
        selector=trinton.logical_ties(
            exclude=[-2, -1], last=True, pitched=True, grace=False
        ),
    ),
    trinton.invisible_tuplet_brackets(),
    trinton.continuous_glissando(selector=trinton.logical_ties(), zero_padding=True),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.no-ledgers = ##t", site="before"
            )
        ],
        selector=trinton.pleaves(),
    ),
    library.stringing_noteheads(
        notehead_list=itertools.cycle(["XIV"]),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    trinton.noteheads_only(selector=trinton.pleaves()),
    trinton.transparent_noteheads(selector=trinton.pleaves(exclude=[0, -1])),
    trinton.hooked_spanner_command(
        string=r"""\markup { \override #'(font-name . "ekmelos") { \char ##xe614 } }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=5,
        direction="down",
        right_padding=2,
        full_string=True,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-size 8""",
        ],
    ),
    voice=score["XIV voice sub 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="twisting",
        auto_reversion=False,
        reversion_line_count=5,
        reversion_clef=None,
        force_clef=False,
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False)
    ),
    evans.PitchHandler(["c'", "a'"]),
    trinton.pitch_with_selector_command(
        pitch_list=["a", "g'"], selector=trinton.select_logical_ties_by_index([0, -1])
    ),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    library.stringing_noteheads(
        notehead_list=itertools.cycle(["XIII"]),
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.continuous_glissando(
        selector=trinton.logical_ties(pitched=True),
        zero_padding=True,
        invisible_center=True,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.no-ledgers = ##t", site="before"
            ),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.transparent_noteheads(selector=trinton.pleaves(exclude=[0, -1])),
    voice=score["guitar 2 voice XIII sub 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False)
    ),
    evans.PitchHandler(["a'", "c'"]),
    trinton.pitch_with_selector_command(
        pitch_list=["f'", "g'"], selector=trinton.select_logical_ties_by_index([0, -1])
    ),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    library.stringing_noteheads(
        notehead_list=itertools.cycle(["XII"]),
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.continuous_glissando(
        selector=trinton.logical_ties(pitched=True),
        zero_padding=True,
        invisible_center=True,
    ),
    trinton.transparent_noteheads(selector=trinton.pleaves(exclude=[0, -1])),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.no-ledgers = ##t", site="before"
            ),
        ],
        selector=trinton.pleaves(),
    ),
    voice=score["XII voice sub 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="reversion",
        auto_reversion=False,
        reversion_line_count=5,
        reversion_clef="bass",
        force_clef=False,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.Clef.stencil = ##f", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["guitar 2 voice"],
)

# globals

# fermate

trinton.fermata_measures(
    score=score,
    measures=[4],
    fermata="middle-fermata",
    voice_names=["cello 1 voice", "cello 2 voice", "guitar 1 voice", "guitar 2 voice"],
    font_size=14,
    clef_whitespace=True,
    blank=True,
    last_measure=False,
    padding=-7,
    # extra_offset=2.5,
    tag=abjad.Tag("+SCORE"),
)

# tempi

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.tempo_markup(
                note_value=16,
                tempo=60,
                padding=14,
                note_head_fontsize=0.5,
                stem_length=2,
                text_fontsize=8,
                dotted=False,
                fraction=None,
                tempo_change=None,
                site="after",
                hspace=5.75,
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
    lambda _: trinton.select_target(_, (4,)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BarLine("||", site="after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
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

for measure in [1]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )


for measure in [4]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )


for measure in [3]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [1, 2]:
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2 27 17)))",
                site="absolute_before",
            ),
            # abjad.LilyPondLiteral(
            #     r"\override BarNumber.Y-offset = 6.5",
            #     site="absolute_before",
            # ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 25 17)))",
                site="absolute_before",
            ),
            # abjad.LilyPondLiteral(
            #     r"\override BarNumber.Y-offset = 6.5",
            #     site="absolute_before",
            # ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 27 19)))",
                site="absolute_before",
            ),
            abjad.bundle(
                abjad.Markup(r"\markup { S }"),
                r"- \tweak transparent ##t",
                r"- \tweak padding #26",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

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
    segment_path="/Users/trintonprater/scores/polyxena/polyxena/sections/08",
    build_path="/Users/trintonprater/scores/polyxena/polyxena/build",
    segment_name="08",
    includes=[
        "/Users/trintonprater/scores/polyxena/polyxena/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
