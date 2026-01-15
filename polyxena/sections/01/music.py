import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
from polyxena import library
from polyxena import pitch
from polyxena import rhythm

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

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=12)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="english horn"
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 3, 5, 7]),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.respell_with_flats(
        selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    # trinton.attachment_command(
    #     attachments=[abjad.Dynamic('"ff"')],
    #     selector=trinton.select_leaves_by_index([0], pitched=True),
    # ),
    voice=score["englishhorn voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=1)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="english horn"
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.leaves,
    #     selector=trinton.pleaves()
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 3, 4, 6, 7, 10, 11, 14, 16, 19]),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.respell_with_flats(
        selector=trinton.select_leaves_by_index([2, 8, 14, 16], pitched=True)
    ),
    trinton.respell_with_sharps(
        selector=trinton.select_leaves_by_index([5], pitched=True)
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
    ),
    voice=score["englishhorn voice"],
)

# soprano saxophone music


trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=2, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="clarinet"
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 2, 4, 6]),
    ),
    trinton.respell_with_sharps(
        selector=trinton.select_leaves_by_index([-2], pitched=True)
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
        direction=abjad.DOWN,
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            evans.talea(
                [1],
                4,
            )
        ),
        direction=abjad.DOWN,
        voice_name="saxophone breath voice 1",
        temp_name="temp 1",
    ),
    voice=score["sopranosaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.PitchHandler([["f,"]]),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Voice.NoteHead.no-ledgers = ##t",
                    r"\once \override Voice.Accidental.stencil = ##f",
                ],
                site="before",
            ),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.duration_line(
        selector=trinton.logical_ties(pitched=True),
        color=r"(x11-color 'LightSlateBlue)",
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("tenuto"),
                r"- \tweak color #(x11-color 'LightSlateBlue)",
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True, grace=False
        ),
        direction=abjad.UP,
    ),
    library.color_voice(color="(x11-color 'LightSlateBlue)"),
    library.attach_patterned_dynamics(
        index=0,
        breath=True,
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["saxophone breath voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=5, later_material=True)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 5], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="saxophone"
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([2, 3, 4, 5]),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_b(index=2)),
        direction=abjad.DOWN,
        voice_name="saxophone breath voice 2",
        temp_name="temp 2",
    ),
    voice=score["sopranosaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 3], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["c"]]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 2, 3, 4]),
    ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Voice.NoteHead.no-ledgers = ##t",
                    r"\once \override Voice.Accidental.stencil = ##f",
                ],
                site="before",
            ),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\voiceTwo",
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = -12",
                site="before",
            ),
        ],
        selector=abjad.select.rests,
    ),
    trinton.duration_line(
        selector=trinton.logical_ties(pitched=True),
        color=r"(x11-color 'LightSlateBlue)",
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    library.color_voice(color="(x11-color 'LightSlateBlue)"),
    library.attach_patterned_dynamics(
        index=3,
        breath=True,
        swells=True,
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    library.graphic_bow_pressure_spanner(
        # selector=trinton.logical_ties(),
        peaks=[3, 0.5, 1],
        anchor_point_step_sizes=[2, 0.5, 1],
        divisions=[3],
        counts=[4],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=5.5,
        forget=False,
    ),
    voice=score["saxophone breath voice 2"],
)

# clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=2, later_material=True)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 3], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="clarinet"
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 2, 4, 5, 6, 7, 9, 10]),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_b(index=4)),
        direction=abjad.DOWN,
        voice_name="clarinet breath voice 1",
        temp_name="temp 1",
    ),
    voice=score["clarinetinbflat voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index([0, 2], pitched=True, grace=False)
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["f,"]]),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([2, 3, 5, 6]),
    ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Voice.NoteHead.no-ledgers = ##t",
                    r"\once \override Voice.Accidental.stencil = ##f",
                ],
                site="before",
            ),
        ],
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\voiceTwo",
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Rest.staff-position = -16",
                site="before",
            ),
        ],
        selector=abjad.select.rests,
    ),
    trinton.duration_line(
        selector=trinton.logical_ties(pitched=True),
        color=r"(x11-color 'LightSlateBlue)",
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    library.color_voice(color="(x11-color 'LightSlateBlue)"),
    library.attach_patterned_dynamics(
        index=2,
        breath=True,
        swells=True,
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
    ),
    library.attach_patterned_dynamics(
        index=4,
        breath=True,
        swells=True,
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, pitched=True),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        peaks=[3, 0.5, 1],
        anchor_point_step_sizes=[2, 0.5, 1],
        divisions=[3],
        counts=[4],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=3,
        forget=False,
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, pitched=True),
        peaks=[1, 2, 0.5, 3],
        anchor_point_step_sizes=[2, 1, 4],
        divisions=[4],
        counts=[4],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=3.5,
        forget=False,
    ),
    voice=score["clarinet breath voice 1"],
)

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
