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
        (7, 4),
        (8, 4),
        (3, 4),
        (8, 4),
        (3, 4),
        (7, 4),
        (3, 4),
        (7, 4),
        (8, 4),
        (3, 4),
        (8, 4),
        (3, 4),
        (7, 4),
        (3, 4),
        (7, 4),
        (8, 4),
        (7, 4),
        (8, 4),
        (3, 4),
        (9, 16),
        (1, 4),
    ]
)

# english horn music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=40)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="english horn"
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                1,
                2,
                4,
                5,
                7,
                9,
                10,
                12,
                13,
                14,
                15,
                16,
                18,
                19,
                21,
                23,
                24,
                26,
                27,
                28,
                29,
            ]
        ),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.respell_with_flats(
        selector=trinton.select_leaves_by_index([-3], pitched=True)
    ),
    voice=score["englishhorn voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=3)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [2, 3, 4, 5], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="english horn"
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 1, 2, 3]),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    # trinton.respell_with_flats(
    #     selector=trinton.select_leaves_by_index([-3], pitched=True)
    # ),
    voice=score["englishhorn voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=5, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="english horn"
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"p"')], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.respell_with_sharps(selector=trinton.select_leaves_by_index([2])),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 5, 6, 7]),
    ),
    voice=score["englishhorn voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=5, stage=2)),
        direction=abjad.UP,
        voice_name="english horn teeth voice 1",
        temp_name="temp 1",
    ),
    voice=score["englishhorn voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.PitchHandler(
        [
            _ + 20
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 5
            )
        ]
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
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
    voice=score["english horn teeth voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=27)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="english horn"
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 1, 2, 3, 4, 6, 7, 9, 11, 12]),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.respell_with_flats(
        selector=trinton.select_leaves_by_index([4], pitched=True)
    ),
    voice=score["englishhorn voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 14)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=3, index=11)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="english horn"
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.attach_patterned_dynamics(
        index=11,
        breath=False,
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
        direction=abjad.UP,
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.StartHairpin(">o")],
        selector=trinton.select_leaves_by_index([59]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                3,
                8,
                9,
                11,
                12,
                20,
                21,
                30,
                31,
                34,
                35,
                40,
                41,
                42,
                44,
                50,
                51,
                58,
                59,
                62,
                63,
                68,
                69,
                71,
                72,
                78,
                79,
                86,
                87,
                90,
                91,
                96,
                97,
                99,
                100,
                106,
                107,
                115,
                116,
                121,
                122,
                128,
                129,
                131,
                132,
                138,
                139,
                146,
            ],
            pitched=True,
            grace=False,
        ),
        direction=abjad.UP,
    ),
    voice=score["englishhorn voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 14)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=11, stage=3)),
        direction=abjad.UP,
        voice_name="english horn teeth voice 2",
        temp_name="temp 2",
    ),
    voice=score["englishhorn voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 14)),
    evans.PitchHandler(
        [
            _ + 25
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 11
            )
        ]
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=10.5,
        right_padding=0.5,
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
    voice=score["english horn teeth voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 20)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=186, later_material=True)),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True, grace=False),
        instrument="english horn",
    ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index([3, 4], pitched=True, grace=False)
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, grace=False)
    #     selector=trinton.pleaves()
    # ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.half_note_signifier(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 5, 6, 12, 13, 20, 21, 26, 27, 32, 33, 38, 39, 42], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #3 { \hspace #-3 { \override #'(font-name . "Bodoni72 Book Italic") { \column { \line { "Hard to tell whether it's so far away it's barely audible," } \line { "or so close as to become indistinguishable." } } } } }"""
            ),
            abjad.Dynamic('"pp"'),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["englishhorn voice"],
    beam_meter=True,
)

# saxophone music

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=58)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="saxophone"
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
                5,
                7,
                9,
                11,
                12,
                14,
                16,
                19,
            ]
        ),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    voice=score["sopranosaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=78, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="saxophone"
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([2, 3]),
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.attach_patterned_dynamics(
        index=76,
        breath=False,
        selector=trinton.patterned_tie_index_selector(
            [0, 3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=78, stage=1)),
        direction=abjad.UP,
        voice_name="saxophone teeth voice 1",
        temp_name="temp 1",
    ),
    voice=score["sopranosaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.PitchHandler(
        [
            _ + 16
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 78
            )
        ]
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, 6], pitched=True, grace=False),
        padding=12.5,
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
        string="""teeth""",
        selector=trinton.select_leaves_by_index([7, -1], pitched=True, grace=False),
        padding=12.5,
        right_padding=3,
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
    voice=score["saxophone teeth voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=9)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="saxophone"
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 1, 3, 4, 5, 6, 7, 9, 10, 12, 14, 15]
        ),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    voice=score["sopranosaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=7, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="saxophone"
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"p"')], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 4, 5, 6]),
    ),
    voice=score["sopranosaxophone voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=7, stage=2)),
        direction=abjad.UP,
        voice_name="saxophone teeth voice 2",
        temp_name="temp 2",
    ),
    voice=score["sopranosaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.PitchHandler(
        [
            _ + 20
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 7
            )
        ]
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
        padding=13,
        right_padding=0.5,
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
    voice=score["saxophone teeth voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=31)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 4, 5], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="saxophone"
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 2, 3, 5]),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    # trinton.respell_with_flats(
    #     selector=trinton.select_leaves_by_index([4], pitched=True)
    # ),
    voice=score["sopranosaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=3, index=33)),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="saxophone"
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.attach_patterned_dynamics(
        index=33,
        breath=False,
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
        direction=abjad.UP,
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 2, 3, 8, 9, 11, 12, 18, 19, 26, 27, 30, 31, 32],
            pitched=True,
            grace=False,
        ),
        direction=abjad.UP,
    ),
    voice=score["sopranosaxophone voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=33, stage=3)),
        direction=abjad.UP,
        voice_name="saxophone teeth voice 3",
        temp_name="temp 3",
    ),
    voice=score["sopranosaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.PitchHandler(
        [
            _ + 25
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 33
            )
        ]
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=13.5,
        right_padding=0.5,
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
    voice=score["saxophone teeth voice 3"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=3, index=11)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 6, 7, 8], pitched=True, grace=False
        )
    ),
    rmakers.rewrite_rest_filled,
    rmakers.extract_trivial,
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="saxophone"
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, -1], pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"mp"')],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["sopranosaxophone voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=11, stage=2)),
        direction=abjad.UP,
        voice_name="saxophone teeth voice 4",
        temp_name="temp 4",
    ),
    voice=score["sopranosaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0, 1, 3, 4])),
    evans.PitchHandler(
        [
            _ + 25
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 11
            )
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceOne", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=15,
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
    voice=score["saxophone teeth voice 4"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 17)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=54, later_material=True)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [22, 23, 24, 25, 26], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="saxophone"
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["sopranosaxophone voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 17)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([-3, 1, -5, 1, -4, 1, -6, 1], 4)),
        direction=abjad.DOWN,
        voice_name="saxophone breath voice",
        temp_name="temp 5",
    ),
    voice=score["sopranosaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 17)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["d"]]),
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
                r"\once \override Rest.staff-position = -14",
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
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Dynamic('"mf"'), r"- \tweak color #(x11-color 'LightSlateBlue)"
            ),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("tenuto"),
                r"- \tweak color #(x11-color 'LightSlateBlue)",
            ),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    voice=score["saxophone breath voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18, 20)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=420, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True, grace=False), instrument="saxophone"
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, grace=False)
    #     selector=trinton.pleaves()
    # ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.half_note_signifier(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 8, 9, 16, 17, 19], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #3 { \hspace #-3 { \override #'(font-name . "Bodoni72 Book Italic") { \column { \line { "Hard to tell whether it's so far away it's barely audible," } \line { "or so close as to become indistinguishable." } } } } }"""
            ),
            abjad.Dynamic('"pp"'),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["sopranosaxophone voice"],
    beam_meter=True,
)

# clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=64)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index([0, 1], pitched=True, grace=False)
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="clarinet"
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 2, 3, 4, 6, 7, 8, 9]),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    voice=score["clarinetinbflat voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=76, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="clarinet"
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 2]),
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.attach_patterned_dynamics(
        index=76,
        breath=False,
        selector=trinton.patterned_tie_index_selector(
            [0, 3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=76, stage=1)),
        direction=abjad.UP,
        voice_name="clarinet teeth voice 1",
        temp_name="temp 1",
    ),
    voice=score["clarinetinbflat voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.PitchHandler(
        [
            _ + 16
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 76
            )
        ]
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
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
    voice=score["clarinet teeth voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=27)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="clarinet"
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     # selector=trinton.pleaves(),
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 1, 2, 3, 4, 6, 7, 9]),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    voice=score["clarinetinbflat voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=10, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="clarinet"
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.half_note_signifier(direction=abjad.DOWN),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     direction=abjad.DOWN
    # ),
    trinton.respell_with_sharps(
        selector=trinton.select_logical_ties_by_index(
            [2, 8, 9], first=True, pitched=True, grace=False
        )
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 5, 6, 7, 9, 12, 13, 17, 18, 21]),
    ),
    library.attach_patterned_dynamics(
        index=10,
        breath=False,
        selector=trinton.patterned_tie_index_selector(
            [0, 3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StartHairpin("<")],
        selector=trinton.select_logical_ties_by_index(
            [0, 3, 12], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StartHairpin("--")],
        selector=trinton.select_logical_ties_by_index([9], first=True, pitched=True),
    ),
    voice=score["clarinetinbflat voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=10, stage=2)),
        direction=abjad.UP,
        voice_name="clarinet teeth voice 2",
        temp_name="temp 2",
    ),
    voice=score["clarinetinbflat voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.PitchHandler(
        [
            _ + 20
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 10
            )
        ],
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
        padding=14,
        right_padding=0,
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
    voice=score["clarinet teeth voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=3, index=17)),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="clarinet"
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.attach_patterned_dynamics(
        index=17,
        breath=False,
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
        direction=abjad.UP,
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.StartHairpin(">o")],
        selector=trinton.select_leaves_by_index([19]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 2, 3, 8, 9, 11, 12, 18, 19, 26, 27, 30, 31, 36, 37, 39, 40, 46, 47, 54],
            pitched=True,
            grace=False,
        ),
        direction=abjad.UP,
    ),
    voice=score["clarinetinbflat voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=17, stage=3)),
        direction=abjad.UP,
        voice_name="clarinet teeth voice 3",
        temp_name="temp 3",
    ),
    voice=score["clarinetinbflat voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    evans.PitchHandler(
        [
            _ + 26
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 17
            )
        ]
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=10,
        right_padding=0.5,
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
    voice=score["clarinet teeth voice 3"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=3, index=12)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 6, 7, 8, 9, 14, 15, 16, 17], pitched=True, grace=False
        )
    ),
    rmakers.rewrite_rest_filled,
    rmakers.extract_trivial,
    trinton.fuse_tuplet_rests_command(),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="clarinet"
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 3, 4, -1], pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"mp"')],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["clarinetinbflat voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=12, stage=2)),
        direction=abjad.UP,
        voice_name="clarinet teeth voice 4",
        temp_name="temp 4",
    ),
    voice=score["clarinetinbflat voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0, 1, 4, 6])),
    evans.PitchHandler(
        [
            _ + 21
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 12
            )
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceOne", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
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
    voice=score["clarinet teeth voice 4"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 16)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=82, later_material=True)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [26, 27, 28, 29], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="clarinet"
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["clarinetinbflat voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 16)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([-3, 1, -5, 1, -4, 1, -6, 1], 4)),
        direction=abjad.DOWN,
        voice_name="clarinet breath voice",
        temp_name="temp 5",
    ),
    voice=score["clarinetinbflat voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["f,"]]),
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
                r"\once \override Rest.staff-position = -17",
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
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Dynamic('"mf"'), r"- \tweak color #(x11-color 'LightSlateBlue)"
            ),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Articulation("tenuto"),
                r"- \tweak color #(x11-color 'LightSlateBlue)",
            ),
        ],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
        direction=abjad.UP,
    ),
    voice=score["clarinet breath voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (17, 20)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=279, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True, grace=False), instrument="clarinet"
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, grace=False)
    #     selector=trinton.pleaves()
    # ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.half_note_signifier(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 6, 7, 14, 15, 19, 20, 26, 27, 30], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #3 { \hspace #-3 { \override #'(font-name . "Bodoni72 Book Italic") { \column { \line { "Hard to tell whether it's so far away it's barely audible," } \line { "or so close as to become indistinguishable." } } } } }"""
            ),
            abjad.Dynamic('"pp"'),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["clarinetinbflat voice"],
    beam_meter=True,
)

# bass clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 4)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=68, later_material=True)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 10, 11], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="bass clarinet"
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([6, 7, 8, 9, 15, 16, 17, 18]),
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.attach_patterned_dynamics(
        index=68,
        breath=False,
        selector=trinton.patterned_tie_index_selector(
            [0, 3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.StartHairpin(">")],
        selector=trinton.select_logical_ties_by_index(
            [0], pitched=True, first=True, grace=False
        ),
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=68, stage=1)),
        direction=abjad.UP,
        voice_name="bass clarinet teeth voice 1",
        temp_name="temp 1",
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 4)),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index([0, 2, 10]),
    ),
    evans.PitchHandler(
        trinton.rotated_sequence(abjad.sequence.flatten(pitch.final_pitch_groups), 68)
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceOne", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, 2], pitched=True, grace=False),
        padding=12,
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
        string="""teeth""",
        selector=trinton.select_leaves_by_index([3, 10], pitched=True, grace=False),
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
        string="""teeth""",
        selector=trinton.select_leaves_by_index([11, 16], pitched=True, grace=False),
        padding=14,
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
        string="""teeth""",
        selector=trinton.select_leaves_by_index([17, 20], pitched=True, grace=False),
        padding=13.5,
        right_padding=4,
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
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=9, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="bass clarinet"
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"p"')], selector=trinton.select_leaves_by_index([0])
    ),
    abjad.slur,
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=9, stage=2)),
        direction=abjad.UP,
        voice_name="bass clarinet teeth voice 2",
        temp_name="temp 2",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.PitchHandler(
        trinton.rotated_sequence(abjad.sequence.flatten(pitch.final_pitch_groups), 9)
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
        padding=14,
        right_padding=0.5,
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
    voice=score["bass clarinet teeth voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=33)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 5], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="bass clarinet"
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 3, 4, 5, 6, 8]),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    # trinton.respell_with_flats(
    #     selector=trinton.select_leaves_by_index([4], pitched=True)
    # ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=3, index=40)),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="bass clarinet"
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.attach_patterned_dynamics(
        index=40,
        breath=False,
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 2, 3, 8, 9, 11, 12, -1], pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=40, stage=3)),
        direction=abjad.UP,
        voice_name="bass clarinet teeth voice 3",
        temp_name="temp 3",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    evans.PitchHandler(
        [
            _ + 6
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 40
            )
        ]
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=14.5,
        right_padding=0.5,
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
    voice=score["bass clarinet teeth voice 3"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=3, index=13)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 17, 18], pitched=True, grace=False
        )
    ),
    rmakers.rewrite_rest_filled,
    rmakers.extract_trivial,
    trinton.fuse_tuplet_rests_command(),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="bass clarinet"
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 2, 3, 4], pitched=True, grace=False
        ),
        # direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"mp"')],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=13, stage=2)),
        direction=abjad.UP,
        voice_name="bass clarinet teeth voice 4",
        temp_name="temp 4",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([1, 2, 3, 4, 6])),
    evans.PitchHandler(
        [
            _ + 2
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 13
            )
        ]
    ),
    # trinton.attachment_command(
    #     attachments=[abjad.LilyPondLiteral(r"\voiceOne", site="before")],
    #     selector=trinton.select_leaves_by_index([0]),
    # ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, 6], pitched=True),
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
    trinton.hooked_spanner_command(
        string="""( teeth )""",
        selector=trinton.select_leaves_by_index([7, -1], pitched=True),
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
    voice=score["bass clarinet teeth voice 4"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 20)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=36, later_material=True)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [24, 25, 26, 27], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="bass clarinet"
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 20)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([1], 4)),
        direction=abjad.DOWN,
        voice_name="bass clarinet breath voice",
        temp_name="temp 5",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 20)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [11, 12], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["a,,"]]),
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
                r"\once \override Rest.staff-position = -10",
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
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Dynamic('"p"'), r"- \tweak color #(x11-color 'LightSlateBlue)"
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [0, 4, 10, 13, 20], 28, pitched=True, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Dynamic('"mf"'), r"- \tweak color #(x11-color 'LightSlateBlue)"
            ),
        ],
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True, grace=False
        ),
    ),
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
    voice=score["bass clarinet breath voice"],
    beam_meter=True,
)

# bassoon music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=51)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="bassoon"
    ),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [2, 3, 5, 6, 7, 8, 9, 11, 12, 14, 16, 17, 19, 20]
        ),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["bassoon voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=12)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="bassoon"
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves,
    #     # selector=trinton.pleaves(),
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                3,
                5,
                7,
                9,
                11,
                12,
                14,
                15,
                16,
                17,
                18,
                20,
                22,
                23,
                24,
                25,
                26,
                28,
                29,
                30,
                31,
                33,
                35,
                36,
                37,
            ]
        ),
    ),
    trinton.change_notehead_command(notehead="cross", selector=trinton.pleaves()),
    trinton.respell_with_flats(
        selector=trinton.select_leaves_by_index([2], pitched=True)
    ),
    voice=score["bassoon voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 10)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=3, index=25)),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="bassoon"
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.attach_patterned_dynamics(
        index=25,
        breath=False,
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.patterned_tie_index_selector(
            [3, 9, 12, 19, 27], 28, pitched=True, first=True
        ),
        direction=abjad.UP,
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                2,
                3,
                8,
                9,
                11,
                12,
                18,
                19,
                26,
                27,
                30,
                31,
                36,
                37,
                39,
                40,
                46,
                47,
                54,
                55,
                58,
                59,
                64,
                65,
                67,
                68,
                71,
            ],
            pitched=True,
            grace=False,
        ),
        direction=abjad.UP,
    ),
    voice=score["bassoon voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 10)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=25, stage=3)),
        direction=abjad.UP,
        voice_name="bassoon teeth voice 1",
        temp_name="temp 1",
    ),
    voice=score["bassoon voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 10)),
    evans.PitchHandler(
        trinton.rotated_sequence(abjad.sequence.flatten(pitch.final_pitch_groups), 25)
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9,
        right_padding=0.5,
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
    voice=score["bassoon teeth voice 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=3, index=15)),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 13, 14, 15, 16, 17, 18],
            pitched=True,
            grace=False,
        )
    ),
    rmakers.rewrite_rest_filled,
    rmakers.extract_trivial,
    trinton.fuse_tuplet_rests_command(),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True), instrument="bassoon"
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, -1], pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"mp"')],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["bassoon voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=15, stage=2)),
        direction=abjad.UP,
        voice_name="bassoon teeth voice 2",
        temp_name="temp 2",
    ),
    voice=score["bassoon voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13, 14)),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([0, 1, 2, 3, 4, 5, 7])),
    evans.PitchHandler(
        trinton.rotated_sequence(abjad.sequence.flatten(pitch.final_pitch_groups), 15)
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\voiceOne", site="before")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=14,
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
    voice=score["bassoon teeth voice 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (16, 20)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=1, index=124, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True, grace=False), instrument="bassoon"
    ),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index([6, 7, 8], pitched=True, grace=False)
    ),
    trinton.detach_command(
        detachments=[
            abjad.Tie,
        ],
        selector=trinton.select_leaves_by_index([5], pitched=True, grace=False),
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, grace=False)
    #     selector=trinton.pleaves()
    # ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    library.half_note_signifier(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 5, 6, 10, 11, 15, 16, 23, 24, 29, 30, 36], pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Markup(
                r"""\markup \fontsize #3 { \hspace #-3 { \override #'(font-name . "Bodoni72 Book Italic") { \column { \line { "Hard to tell whether it's so far away it's barely audible," } \line { "or so close as to become indistinguishable." } } } } }"""
            ),
            abjad.Dynamic('"pp"'),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.DOWN,
    ),
    voice=score["bassoon voice"],
    beam_meter=True,
)

# globals

# electronics

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            trinton.boxed_markup(
                string="Processing Patch III",
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
    lambda _: trinton.select_target(_, (21,)),
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
    measures=[21],
    fermata="long-fermata",
    voice_names=[
        "englishhorn voice",
        "sopranosaxophone voice",
        "clarinetinbflat voice",
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

# breaking

for measure in [
    21,
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

for measure in [1, 3, 4, 5, 7, 8, 10, 11, 13, 15, 17, 18, 19, 20]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [
    2,
    6,
    9,
    12,
    14,
    16,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\break", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [12]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="absolute_after")],
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2 36 36 36 36)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2 36 36 36 36)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (7 36 36 36 36)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (3 28)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (13,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (3 30 27 28 20)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2 36 36 36 36)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (17,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2 36 36 36 36)))",
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
    segment_path="/Users/trintonprater/scores/polyxena/polyxena/sections/03",
    build_path="/Users/trintonprater/scores/polyxena/polyxena/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/polyxena/polyxena/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
