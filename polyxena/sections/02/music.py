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

score = library.polyxena_score([(6, 4), (3, 16), (1, 4)])

# english horn music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (1, 1, 1),
                (1, 2, 1),
                (-1,),
                (1, 1, 1, 1),
                (1, 1, 3, 1),
                (-1,),
                (1, 1, 1),
            ]
        )
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        trinton.rotated_sequence(abjad.sequence.flatten(pitch.final_pitch_groups), 27),
    ),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True),
        instrument="english horn",
        lowest_octave=True,
    ),
    trinton.respell_with_flats(
        selector=trinton.select_logical_ties_by_index(
            [2, 4, 8], pitched=True, grace=False
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
    voice=score["englishhorn voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 2, 2, 2, 3, 1, 2)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([-4, 4, -4, 5, -1, 4, -100], 16)),
        direction=abjad.DOWN,
        voice_name="english horn breath voice",
        temp_name="temp 1",
    ),
    voice=score["englishhorn voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
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
    library.attach_patterned_dynamics(
        index=26,
        breath=True,
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([4, 6, 7, 8], grace=False),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.select_leaves_by_index([3, 7], pitched=True),
        peaks=[0, 4, 0, 3, 0],
        anchor_point_step_sizes=[0.5, 0, 2, 2],
        divisions=[5],
        counts=[4],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=7.5,
        forget=False,
    ),
    voice=score["english horn breath voice"],
)

# saxophone music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=30, later_material=True)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.pleaves()
    # ),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index([8, 9, 13], pitched=True, grace=False)
    ),
    trinton.detach_command(
        detachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index([7, 12], pitched=True),
    ),
    evans.RewriteMeterCommand(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.respell_with_sharps(
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 12], pitched=True, grace=False
        )
    ),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True),
        instrument="saxophone",
        lowest_octave=True,
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"pp"')],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 3, 4, 7, 8, 10, 11, -1], pitched=True
        ),
        direction=abjad.DOWN,
    ),
    voice=score["sopranosaxophone voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=30, stage=2)),
        direction=abjad.UP,
        voice_name="saxophone teeth voice 1",
        temp_name="temp 1",
    ),
    voice=score["sopranosaxophone voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index([1, 2, 3, 5]),
    ),
    evans.PitchHandler(
        [
            _ + 20
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 6
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
        selector=trinton.select_leaves_by_index([0, 3], pitched=True, grace=False),
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
        selector=trinton.select_leaves_by_index([4, -1], pitched=True, grace=False),
        padding=14,
        right_padding=1,
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

# clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (1, 1, 1, 1, 1, 1, 1),
                (-1,),
                (-1, 1, 1, 1),
                (1, 3, 2),
                (-1,),
                (1,),
            ]
        )
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        trinton.rotated_sequence(abjad.sequence.flatten(pitch.final_pitch_groups), 31),
    ),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True),
        instrument="clarinet",
        lowest_octave=True,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 6, 8, 11, 12, 13]),
    ),
    trinton.change_notehead_command(
        notehead="xcircle",
        selector=trinton.select_leaves_by_index(
            [0, 1, 2, 3, 4, 5, 6, 10, 11, 12, 13], pitched=True
        ),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.select_leaves_by_index([7, 8, 9], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"pp"'),
            abjad.Dynamic('"f"'),
            abjad.Dynamic('"pp"'),
        ],
        selector=trinton.select_leaves_by_index([0, 7, 10], pitched=True, grace=False),
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
            [0, 2, 3, 6, 10, 11], pitched=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #3.5", site="before"
            )
        ],
        selector=trinton.select_tuplets_by_index([0]),
    ),
    voice=score["clarinetinbflat voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((4, 2, 2, 3, 1, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=31, stage=2)),
        direction=abjad.UP,
        voice_name="clarinet teeth voice 1",
        temp_name="temp 1",
    ),
    voice=score["clarinetinbflat voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index([2, 3]),
    ),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index([17, 18], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopBeam(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([16], pitched=True, grace=False),
    ),
    evans.PitchHandler(
        [
            _ + 22
            for _ in trinton.rotated_sequence(
                abjad.sequence.flatten(pitch.final_pitch_groups), 31
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
        selector=trinton.select_leaves_by_index([0, 8], pitched=True, grace=False),
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
        string="""( teeth )""",
        selector=trinton.select_leaves_by_index([9, -1], pitched=True, grace=False),
        padding=14,
        right_padding=1,
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


# bass clarinet music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(rhythm.rhythm_a(stage=2, index=29, later_material=True)),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index(
            [5, 6, 7, 8, 11, 12], pitched=True, grace=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.respell_with_flats(
        selector=trinton.select_logical_ties_by_index([3], pitched=True, grace=False)
    ),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True),
        instrument="bass clarinet",
        lowest_octave=True,
    ),
    trinton.change_notehead_command(notehead="xcircle", selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[abjad.Dynamic('"pp"')],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index(
            [0, 4, 5, 6, 7, 9, 10, -1], pitched=True
        ),
        direction=abjad.DOWN,
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["bassclarinet voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(rhythm.rhythm_e(index=29, stage=2)),
        direction=abjad.UP,
        voice_name="bass clarinet teeth voice 1",
        temp_name="temp 1",
    ),
    voice=score["bassclarinet voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.force_rest(
        selector=trinton.select_tuplets_by_index([1, 2, 3]),
    ),
    trinton.force_rest(
        selector=trinton.select_leaves_by_index(
            [18, 19, 20, 21], pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopBeam(),
            abjad.StopSlur(),
        ],
        selector=trinton.select_leaves_by_index([17], pitched=True, grace=False),
    ),
    evans.PitchHandler(abjad.sequence.flatten(pitch.final_pitch_groups)),
    library.color_teeth_slurs(selector=trinton.pleaves()),
    library.color_voice(color=r"(css-color 'darkred)"),
    trinton.continuous_glissando(
        zero_padding=True, tweaks=[abjad.Tweak(r"- \tweak color #(css-color 'darkred)")]
    ),
    trinton.hooked_spanner_command(
        string="""teeth""",
        selector=trinton.select_leaves_by_index([0, 6], pitched=True, grace=False),
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
        selector=trinton.select_leaves_by_index([7, -1], pitched=True, grace=False),
        padding=14,
        right_padding=1,
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

# bassoon music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (1, 1, 1, 1, 1),
                (2, 1, 1),
                (-1,),
                (1, 2, 1),
                (1, 3, 1, 1),
                (-1,),
                (1, 2),
            ]
        )
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        trinton.rotated_sequence(abjad.sequence.flatten(pitch.final_pitch_groups), 28),
    ),
    library.transpose_to_first_octave(
        selector=trinton.logical_ties(pitched=True),
        instrument="bassoon",
        lowest_octave=True,
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.respell_with_flats(
        selector=trinton.select_logical_ties_by_index([3, 7], pitched=True, grace=False)
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
    voice=score["bassoon voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 2, 2, 2, 3, 1, 2)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([-4, 5, -4, 9, -2, 3, -100], 16)),
        direction=abjad.DOWN,
        voice_name="bassoon breath voice",
        temp_name="temp 1",
    ),
    voice=score["bassoon voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["b,,,"]]),
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
    library.attach_patterned_dynamics(
        index=27,
        breath=True,
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([2, 3, 4, 5, 7, 8], grace=False),
    ),
    library.graphic_bow_pressure_spanner(
        selector=trinton.select_leaves_by_index([4, 6], pitched=True),
        peaks=[2, 1, 4, 2, 3, 0],
        anchor_point_step_sizes=[3, 1.5],
        divisions=[6],
        counts=[4],
        cyclic=True,
        left_broken_text=None,
        left_text=None,
        right_padding=None,
        right_text=None,
        padding=3.5,
        forget=False,
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
                string="Processing Patch II",
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
    lambda _: trinton.select_target(_, (3,)),
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
    measures=[3],
    fermata="very-short-fermata",
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
    3,
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (2 36 34 36 28)))",
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
    segment_path="/Users/trintonprater/scores/polyxena/polyxena/sections/02",
    build_path="/Users/trintonprater/scores/polyxena/polyxena/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/polyxena/polyxena/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
