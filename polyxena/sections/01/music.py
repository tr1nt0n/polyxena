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

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=21, later_material=True)),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True),
    # ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 4, 5, 6, 7, 17, 18, 19, 20], pitched=True
        ),
    ),
    evans.RewriteMeterCommand(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True),
        instrument="english horn",
        lowest_octave=True,
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True),
    # ),
    trinton.respell_with_flats(
        selector=trinton.select_logical_ties_by_index([3], pitched=True, grace=False)
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.attach_patterned_dynamics(
        index=0,
        selector=trinton.patterned_tie_index_selector(
            [0, 3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
    ),
    voice=score["englishhorn voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=23, stage=2)),
        direction=abjad.UP,
        voice_name="english horn teeth voice",
        temp_name="temp 1",
    ),
    voice=score["englishhorn voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    # library.half_note_signifier(direction=abjad.DOWN),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.pleaves(),
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ],
        ),
        selector=trinton.select_leaves_by_index([0, 3, 4, 6, 7, 9], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["englishhorn voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index([0, 1, 2, 6]),
    ),
    evans.PitchHandler(
        [
            _ + 20
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 21
            )
        ]
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceOne", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
        padding=13.5,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
        ],
    ),
    voice=score["english horn teeth voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=0, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="english horn"
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 2]),
    ),
    trinton.respell_with_sharps(
        selector=trinton.select_leaves_by_index([2], pitched=True)
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
                [9],
                16,
            )
        ),
        direction=abjad.DOWN,
        voice_name="english horn breath voice 2",
        temp_name="temp 2",
    ),
    voice=score["englishhorn voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([["g,"]]),
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
    trinton.duration_line(
        selector=trinton.logical_ties(pitched=True),
        color=r"(x11-color 'LightSlateBlue)",
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    library.color_voice(color="(x11-color 'LightSlateBlue)"),
    library.attach_patterned_dynamics(
        index=0,
        breath=True,
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["english horn breath voice 2"],
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

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=24, later_material=True)),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True),
    # ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 4, 9, 10, 11, 12, 13, 14, 15, 16], pitched=True
        ),
    ),
    evans.RewriteMeterCommand(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True),
        instrument="saxophone",
        lowest_octave=True,
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True),
    # ),
    # trinton.respell_with_flats(
    #     selector=trinton.select_logical_ties_by_index([3], pitched=True, grace=False)
    # ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.attach_patterned_dynamics(
        index=0,
        selector=trinton.patterned_tie_index_selector(
            [0, 3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
    ),
    voice=score["sopranosaxophone voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=26, stage=2)),
        direction=abjad.UP,
        voice_name="saxophone teeth voice",
        temp_name="temp 3",
    ),
    voice=score["sopranosaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    # library.half_note_signifier(direction=abjad.DOWN),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.pleaves(),
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ],
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["sopranosaxophone voice temp 3"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index([0, 1, 2, 4, 5, 6]),
    ),
    evans.PitchHandler(
        [
            _ + 15
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 26
            )
        ]
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceOne", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
        padding=13,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
        ],
    ),
    voice=score["saxophone teeth voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=1, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="saxophone"
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 2, 3, 5]),
    ),
    trinton.respell_with_sharps(
        selector=trinton.select_logical_ties_by_index(
            [1, -1], pitched=True, grace=False
        )
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
                [9],
                16,
            )
        ),
        direction=abjad.DOWN,
        voice_name="saxophone breath voice 3",
        temp_name="temp 4",
    ),
    voice=score["sopranosaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([["g,"]]),
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
    trinton.duration_line(
        selector=trinton.logical_ties(pitched=True),
        color=r"(x11-color 'LightSlateBlue)",
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    library.color_voice(color="(x11-color 'LightSlateBlue)"),
    library.attach_patterned_dynamics(
        index=1,
        breath=True,
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["saxophone breath voice 3"],
)

# clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=3, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True),
        instrument="clarinet",
        lowest_octave=True,
    ),
    trinton.change_notehead_command(
        notehead="xcircle",
        selector=trinton.pleaves(),
    ),
    abjad.slur,
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #3 { \hspace #-6 { \override #'(font-name . "Bodoni72 Book Italic") { Always so delicately it becomes distant, ghostly. } } }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["clarinetinbflat voice"],
    beam_meter=True,
)

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

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=24, later_material=True)),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True),
    # ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 4, 5, 6, 7, 8, 11, 12, 13, 14, 15, 16], pitched=True
        ),
    ),
    evans.RewriteMeterCommand(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True),
        instrument="clarinet",
        lowest_octave=True,
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True),
    # ),
    # trinton.respell_with_flats(
    #     selector=trinton.select_logical_ties_by_index([3], pitched=True, grace=False)
    # ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.attach_patterned_dynamics(
        index=0,
        selector=trinton.patterned_tie_index_selector(
            [0, 3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
    ),
    voice=score["clarinetinbflat voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=26, stage=2)),
        direction=abjad.UP,
        voice_name="clarinet teeth voice",
        temp_name="temp 2",
    ),
    voice=score["clarinetinbflat voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    # library.half_note_signifier(direction=abjad.DOWN),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.pleaves(),
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ],
        ),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["clarinetinbflat voice temp 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index([0, 1, 2, 3, 6]),
    ),
    evans.PitchHandler(
        [
            _ + 20
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 26
            )
        ]
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceOne", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
        padding=14.5,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
        ],
    ),
    voice=score["clarinet teeth voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=2, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="clarinet"
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 2]),
    ),
    # trinton.respell_with_sharps(
    #     selector=trinton.select_logical_ties_by_index([1, -1], pitched=True, grace=False)
    # ),
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
                [9],
                16,
            )
        ),
        direction=abjad.DOWN,
        voice_name="clarinet breath voice 2",
        temp_name="temp 3",
    ),
    voice=score["clarinetinbflat voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([["g,"]]),
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
    trinton.duration_line(
        selector=trinton.logical_ties(pitched=True),
        color=r"(x11-color 'LightSlateBlue)",
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    library.color_voice(color="(x11-color 'LightSlateBlue)"),
    library.attach_patterned_dynamics(
        index=2,
        breath=True,
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["clarinet breath voice 2"],
)

# bass clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=9, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True),
        instrument="bass clarinet",
        lowest_octave=True,
    ),
    trinton.change_notehead_command(
        notehead="xcircle",
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("tenuto")],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #3 { \hspace #-6 { \override #'(font-name . "Bodoni72 Book Italic") { Always so delicately it becomes distant, ghostly. } } }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    library.half_note_signifier(),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=0, later_material=True)),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True),
    # ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index([24, 25, 26, 27], pitched=True),
    ),
    evans.RewriteMeterCommand(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True),
        instrument="bass clarinet",
        lowest_octave=True,
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.attach_patterned_dynamics(
        index=6,
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
    ),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=0, stage=2)),
        direction=abjad.UP,
        voice_name="bass clarinet teeth voice 1",
        temp_name="temp 1",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    library.half_note_signifier(direction=abjad.DOWN),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.pleaves(),
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ],
        ),
        selector=trinton.select_leaves_by_index(
            [0, 2, 6, 7, 9, 12, 13, 17, 18, 21, 22, 24, 25, 27, 28, 31], pitched=True
        ),
        direction=abjad.DOWN,
    ),
    voice=score["bassclarinet voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index([-4, -3, -2]),
    ),
    evans.PitchHandler(
        [_ + 20 for _ in abjad.sequence.flatten(pitch.final_pitch_groups)]
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, -9], pitched=True, grace=False),
        padding=13.5,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
        ],
    ),
    trinton.hooked_spanner_command(
        string="""( teeth )""",
        selector=trinton.select_leaves_by_index([-8, -1], pitched=True, grace=False),
        padding=14,
        right_padding=27,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
        ],
    ),
    voice=score["bass clarinet teeth voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=12, later_material=True)),
    evans.RewriteMeterCommand(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True),
        instrument="bass clarinet",
        lowest_octave=True,
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    abjad.slur,
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=12, stage=1)),
        direction=abjad.UP,
        voice_name="bass clarinet teeth voice 2",
        temp_name="temp 2",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.PitchHandler(
        [
            _ + 20
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 12
            )
        ]
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    voice=score["bass clarinet teeth voice 2"],
)

# bassoon music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=12, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True),
        instrument="bassoon",
    ),
    trinton.respell_with_flats(
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        )
    ),
    trinton.change_notehead_command(
        notehead="xcircle",
        selector=trinton.pleaves(),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("pp"), abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    abjad.slur,
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #3 { \hspace #-6 { \override #'(font-name . "Bodoni72 Book Italic") { Always so delicately it becomes distant, ghostly. } } }"""
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    library.half_note_signifier(),
    voice=score["bassoon voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=15, later_material=True)),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True),
    # ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31], pitched=True
        ),
    ),
    evans.RewriteMeterCommand(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True),
        instrument="bassoon",
        lowest_octave=True,
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True),
    # ),
    trinton.respell_with_flats(
        selector=trinton.select_logical_ties_by_index([8], pitched=True, grace=False)
    ),
    trinton.respell_with_sharps(
        selector=trinton.select_logical_ties_by_index([1, 2], pitched=True, grace=False)
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.attach_patterned_dynamics(
        index=5,
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
    ),
    voice=score["bassoon voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=14, stage=2)),
        direction=abjad.UP,
        voice_name="bassoon teeth voice",
        temp_name="temp 1",
    ),
    voice=score["bassoon voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    # library.half_note_signifier(direction=abjad.DOWN),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.pleaves(),
    #     direction=abjad.DOWN
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.StartSlur(),
                abjad.StopSlur(),
            ],
        ),
        selector=trinton.select_leaves_by_index(
            [0, 2, 6, 9, 10, 12, 13, 16, 19, 21], pitched=True
        ),
        direction=abjad.DOWN,
    ),
    voice=score["bassoon voice temp 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index([0, 1, 11, 12, 13, 14]),
    ),
    evans.PitchHandler(
        trinton.rotated_sequence(abjad.sequence.flatten(pitch.final_pitch_groups), 14)
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceOne", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
        padding=13.5,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak color #(css-color 'darkred)""",
        ],
    ),
    voice=score["bassoon teeth voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=3, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="bassoon"
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 2, 3, 5]),
    ),
    trinton.respell_with_flats(
        selector=trinton.select_logical_ties_by_index([2], pitched=True, grace=False)
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
                [9],
                16,
            )
        ),
        direction=abjad.DOWN,
        voice_name="bassoon breath voice",
        temp_name="temp 2",
    ),
    voice=score["bassoon voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.rewrite_meter_command(),
    evans.PitchHandler([["c,,"]]),
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
    trinton.duration_line(
        selector=trinton.logical_ties(pitched=True),
        color=r"(x11-color 'LightSlateBlue)",
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    library.color_voice(color="(x11-color 'LightSlateBlue)"),
    library.attach_patterned_dynamics(
        index=3,
        breath=True,
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["bassoon breath voice"],
)

# globals

# electronics

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="Processing Patch I",
                tweaks=[r"- \tweak padding 20"],
                column="\center-column",
                font_name="Bodoni72 Book",
                fontsize=7,
                string_only=False,
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

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
    padding=-10,
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
                padding=28.5,
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

for measure in [
    1,
    2,
    3,
    4,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

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

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (4 32 34 37 38)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
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
