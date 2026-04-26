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

# original_sequence = [_[0] for _ in ts.time_signatures[0:7]]
# modulated_sequence = [_ % 5 for _ in original_sequence]
#
# material_sequence = [_ for _ in modulated_sequence]
#
# start_index_counter = 0
# for _ in range(0, 3):
#     samples = material_sequence[start_index_counter:-1]
#     for sample, modulator in zip(samples, modulated_sequence):
#         sample = sample + modulator
#         sample = sample % 5
#         material_sequence.append(sample)
#
#     start_index_counter += 5
#
# material_sequence = trinton.remove_adjacent(material_sequence)
#
# retrograde_material_sequence = material_sequence[::-1]
#
# _material_to_color = {
#     0: '"cyan"',  # rasgeado,
#     1: '"blue"',  # bariolage,
#     2: '"green"',  # golpe/finger percussion,
#     3: '"yellow"',  # multiple muting,
#     4: '"red"',  # multiple glissandi,
# }
#
# for measure_range, material_index in zip(
#     [(1, 2), (3,), (4,), (5,), (6,), (7, 8), (9,), (10,), (11,), (12, 13)],
#     itertools.cycle(material_sequence),
# ):
#     trinton.make_music(
#         lambda _: trinton.select_target(_, measure_range),
#         trinton.linear_attachment_command(
#             attachments=[
#                 abjad.LilyPondLiteral(
#                     rf"""\staffHighlight {_material_to_color[material_index]} """,
#                     site="before",
#                 ),
#                 abjad.LilyPondLiteral(r"\stopStaffHighlight", site="absolute_after"),
#             ],
#             selector=trinton.select_leaves_by_index([0, -1]),
#         ),
#         voice=score["cello 2 voice"],
#     )
#
# for measure_range, material_index in zip(
#     [(1,), (2,), (3,), (4, 5), (6, 7), (8, 9), (10, 11), (12, 13)],
#     itertools.cycle(retrograde_material_sequence),
# ):
#     trinton.make_music(
#         lambda _: trinton.select_target(_, measure_range),
#         trinton.linear_attachment_command(
#             attachments=[
#                 abjad.LilyPondLiteral(
#                     rf"""\staffHighlight {_material_to_color[material_index]} """,
#                     site="before",
#                 ),
#                 abjad.LilyPondLiteral(r"\stopStaffHighlight", site="absolute_after"),
#             ],
#             selector=trinton.select_leaves_by_index([0, -1]),
#         ),
#         voice=score["guitar 2 voice"],
#     )

# gambe music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    evans.RhythmHandler(evans.talea([3, 4, 100], 16)),
    evans.PitchHandler(
        [
            ["af,", "d", "ef"],
            ["d", "ef"],
            ["bf,", "d", "e"],
        ]
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.multiple_muting(
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        closed_fundamental=True,
    ),
    library.multiple_muting(
        selector=trinton.select_leaves_by_index([1], pitched=True),
        closed_fundamental=False,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("punta-to-talon")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    library.pressure_trills(
        head="harmonic",
        trill_pitch=["af,", "d", "ef"],
        padding=3,
        # bound_details=(2, 6),
        right_padding=2,
        multimuting=True,
        closed_fundamental=True,
        selector=trinton.select_leaves_by_index([1, 2], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "V" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=14,
        direction=None,
        right_padding=17,
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
    trinton.spanner_command(
        strings=["xp.", ""],
        selector=trinton.select_logical_ties_by_index(
            [0, 1], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        # padding=14,
        right_padding=-1,
        direction=None,
        full_string=False,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #5""",
            r"""- \tweak bound-details.right.Y #-2""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "p." }""",
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
        padding=5.5,
        direction=None,
        right_padding=17,
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
        attachments=[abjad.Dynamic("ppp"), abjad.StartHairpin("<"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, 0, 1], pitched=True),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 3)),
    library.pressure_trills(
        head="harmonic",
        trill_pitch=["d", "e"],
        padding=3,
        # bound_details=(2, 6),
        right_padding=-21,
        multimuting=True,
        closed_fundamental=False,
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopTrillSpan()],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=True),
    ),
    voice=score["cello 2 voice"],
)

rhythm.make_multi_gliss(
    score=score,
    voice_name="cello 2 voice",
    measures=(3,),
    pitch_lists=[
        ["a,", "f,", "a,", "f,"],
        ["b,", "d", "b,"],
        ["ef", "d", "e"],
        ["cs'", "a", "c'", "a"],
    ],
    preprocessor=None,
    finger_percussion="first",
    finger_percussion_padding=4,
    finger_percussion_voice_index=1,
    extra_voice="sub 1",
    notehead=None,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"#(define afterGraceFraction (cons 15 16))",
                ],
                site="before",
            ),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "finger perc." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=11,
        direction=None,
        right_padding=1,
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
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(
            exclude=[0], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Voice.Dots.staff-position = #9", site="before"
            ),
        ],
        selector=trinton.pleaves(grace=False),
    ),
    voice=score["cello 2 voice gliss 2 sub 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([100], 16)),
    evans.PitchHandler(
        [
            ["bf,", "d", "e"],
        ]
    ),
    library.multiple_muting(
        selector=trinton.select_leaves_by_index([0], pitched=True),
        closed_fundamental=True,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("punta-to-talon")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    library.pressure_trills(
        head="harmonic",
        trill_pitch=["d", "e"],
        padding=3,
        # bound_details=(2, 6),
        right_padding=-19,
        multimuting=True,
        closed_fundamental=False,
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopTrillSpan()],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "V" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=15.5,
        direction=None,
        right_padding=13.5,
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
    trinton.hooked_spanner_command(
        string=r"""\markup { "p." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=13,
        direction=None,
        right_padding=13.5,
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
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        evans.talea([1000], 4),
    ),
    evans.PitchHandler(
        pitch_list=pitch.make_bariolage_chords(
            instrument="gambe", string_ranges=[(1, 4)], index=2, seed=37
        )
    ),
    # trinton.octavation(
    #     octave=1,
    #     selector=trinton.select_logical_ties_by_index([0], pitched=True)
    # ),
    trinton.change_notehead_command(
        notehead="half-harmonic",
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"#(define afterGraceFraction (cons 15 16))",
                ],
                site="before",
            ),
            abjad.Clef("treble"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["cello 2 voice"],
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
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(
        rhythm.prolated_talea(
            index=6,
            denominator=16,
            prolations=[(3, 1), (3, 1), (2, 1)],
            elaboration_level=0,
            retrograde=False,
            parse_meter=True,
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [
            ["g'", "e'"],
            ["b'", "g'", "e'", "c'"],
            [
                "b'",
                "g'",
                "e'",
            ],
            ["e'", "c'"],
            ["g'", "e'", "c'"],
            ["b'", "g'", "e'", "c'"],
            ["b'", "g'"],
            ["g'", "e'", "c'"],
        ]
    ),
    # # trinton.annotate_leaves_locally(
    # #     selector=abjad.select.leaves
    # # ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="stringing gambe",
        auto_reversion=False,
    ),
    trinton.tremolo_command(),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio()],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "xp." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=5,
        direction=None,
        right_padding=4,
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
        attachments=[abjad.Dynamic("ppp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["cello 1 voice"],
    beam_meter=True,
)

rhythm.make_multi_gliss(
    score=score,
    voice_name="cello 2 voice",
    measures=(6,),
    pitch_lists=[
        ["a,", "f,", "a,", "f,"],
        ["b,", "d", "b,"],
        ["ef", "d", "e"],
        ["cs'", "a", "c'", "a"],
    ],
    preprocessor=trinton.fuse_sixteenths_preprocessor((3, 2, 2)),
    finger_percussion="first",
    finger_percussion_padding=4,
    finger_percussion_voice_index=1,
    extra_voice="sub 2",
    notehead=None,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.attachment_command(
        attachments=[
            abjad.Clef("bass"),
            abjad.Dynamic("f"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "finger perc." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=11,
        direction=None,
        right_padding=1,
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
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(
            exclude=[0], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Voice.Dots.staff-position = #9", site="before"
            ),
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([1, 2]),
    ),
    voice=score["cello 2 voice gliss 2 sub 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 8)),
    evans.RhythmHandler(evans.talea([16, 7], 32)),
    evans.PitchHandler([["bf,", "d", "e"], ["af,", "d", "ef"]]),
    library.multiple_muting(
        selector=trinton.pleaves(grace=False),
        closed_fundamental=True,
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.Dynamic("pp")],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 9)),
    library.pressure_trills(
        head="harmonic",
        trill_pitch=["d", "e"],
        padding=3,
        # bound_details=(2, 6),
        right_padding=3,
        multimuting=True,
        closed_fundamental=False,
        selector=trinton.select_leaves_by_index([0, 1]),
    ),
    library.pressure_trills(
        head="harmonic",
        trill_pitch=["d", "ef"],
        padding=3,
        # bound_details=(2, 6),
        right_padding=-14,
        multimuting=True,
        closed_fundamental=False,
        selector=trinton.select_leaves_by_index([1, -1], grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopTrillSpan()],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "V" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=13,
        direction=None,
        right_padding=9.5,
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
    trinton.hooked_spanner_command(
        string=r"""\markup { "p." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=10.5,
        direction=None,
        right_padding=9.5,
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
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(
        evans.talea([1000], 4),
    ),
    evans.PitchHandler(
        pitch_list=pitch.make_bariolage_chords(
            instrument="gambe", string_ranges=[(1, 4)], index=2, seed=37
        )
    ),
    # trinton.octavation(
    #     octave=1,
    #     selector=trinton.select_logical_ties_by_index([0], pitched=True)
    # ),
    trinton.change_notehead_command(
        notehead="half-harmonic",
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"#(define afterGraceFraction (cons 15 16))",
                ],
                site="before",
            ),
            abjad.Clef("treble"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Staff.Clef.X-extent = ##f",
                    r"\once \override Staff.Clef.extra-offset = #'(-3.5 . 0)",
                ],
                site="absolute_before",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
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
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(
        rhythm.prolated_talea(
            index=6,
            denominator=16,
            prolations=[(3, 1), (3, 1), (2, 1)],
            elaboration_level=0,
            retrograde=False,
            parse_meter=True,
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Staff.Clef.X-extent = ##f",
                    r"\once \override Staff.Clef.extra-offset = #'(-2.5 . 0)",
                ],
                site="absolute_before",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    evans.PitchHandler(
        [
            ["g'", "e'"],
            ["b'", "g'", "e'", "c'"],
            [
                "b'",
                "g'",
                "e'",
            ],
            ["e'", "c'"],
            ["g'", "e'", "c'"],
            ["b'", "g'", "e'", "c'"],
            ["b'", "g'"],
            ["g'", "e'", "c'"],
        ]
    ),
    # # trinton.annotate_leaves_locally(
    # #     selector=abjad.select.leaves
    # # ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="stringing gambe",
        auto_reversion=False,
    ),
    trinton.tremolo_command(),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio()],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "xp." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=5,
        direction=None,
        right_padding=2,
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
        attachments=[abjad.Dynamic("ppp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["cello 1 voice"],
    beam_meter=True,
)

rhythm.make_multi_gliss(
    score=score,
    voice_name="cello 2 voice",
    measures=(10,),
    pitch_lists=[
        ["bf'", "f'", "a'", "e'", "f'", "d'"],
        ["fs'", "c'", "d'", "a"],
        ["b", "g", "a", "d", "g", "e"],
        ["af", "d", "g", "c"],
    ],
    preprocessor=None,
    finger_percussion=None,
    finger_percussion_padding=None,
    finger_percussion_voice_index=0,
    extra_voice="sub 3",
    notehead="half-harmonic",
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    abjad.slur,
    trinton.spanner_command(
        strings=["( xp. )", "t."],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=4,
        right_padding=0,
        direction=None,
        full_string=False,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            # r"""- \tweak bound-details.left.Y #5""",
            # r"""- \tweak bound-details.right.Y #-2""",
        ],
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("<"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["cello 2 voice gliss 1 sub 3"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(evans.talea([100], 16)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False)
    ),
    evans.PitchHandler([["bf'", "fs'", "b", "af"], ["dqs'", "bf", "eqs", "cs"]]),
    trinton.noteheads_only(),
    trinton.continuous_glissando(
        selector=trinton.pleaves(),
        zero_padding=True,
        # slur=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10,)),
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
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(evans.talea([100], 16)),
    evans.PitchHandler(pitch_list=[["b'", "g'", "e'", "c'"]]),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="stringing gambe",
        auto_reversion=False,
    ),
    trinton.tremolo_command(),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio()],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "( t. )" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=5.5,
        direction=None,
        right_padding=0.5,
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
    voice=score["cello 1 voice"],
)

# theorbe music

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    evans.RhythmHandler(evans.talea([100], 8)),
    evans.PitchHandler([["c''", "e''", "gqf''"]]),
    library.multiple_muting(
        selector=trinton.select_leaves_by_index([0], pitched=True),
        closed_fundamental=True,
    ),
    trinton.tremolo_command(),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["guitar 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    library.pressure_trills(
        head="harmonic",
        trill_pitch=["e''", "gqf''"],
        padding=3,
        # bound_details=(2, 6),
        right_padding=2,
        multimuting=True,
        closed_fundamental=False,
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["guitar 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.hooked_spanner_command(
        string=r"""\markup { "III" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=11,
        direction=None,
        right_padding=22,
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
    trinton.hooked_spanner_command(
        string=r"""\markup { "msp. ( still w/ plectrum )" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=22,
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
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["guitar 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.tuplet([(-2, 3, 1)])),
    abjad.beam,
    trinton.pitch_with_selector_command(
        pitch_list=pitch.make_bariolage_chords(
            instrument="theorbe", string_ranges=[(5, 8)], index=1, seed=37
        ),
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["d,", "b''"],
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
    ),
    trinton.continuous_glissando(
        zero_padding=True,
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
        staff_type="stringing theorbe",
        auto_reversion=False,
    ),
    trinton.manual_beam_positions(positions=(10, 10)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"#(define afterGraceFraction (cons 15 16))",
                    # r"\override Stem.direction = #DOWN",
                    # r"\once \override TupletBracket.padding = #1",
                    # rf"""\once \override TupletBracket.stencil =
                    #      #(lambda (grob)
                    #         (let* ((pos (ly:grob-property grob 'positions))
                    #                (dir (ly:grob-property grob 'direction))
                    #                (new-pos (if (= dir 1)
                    #                             (max (car pos)(cdr pos))
                    #                             (min (car pos)(cdr pos)))))
                    #           (ly:grob-set-property! grob 'positions (cons new-pos new-pos))
                    #           (ly:tuplet-bracket::print grob)))""",
                    # r"\once \override TupletBracket.padding = #-12.5",
                ],
                site="before",
            ),
            # abjad.LilyPondLiteral(
            #     [
            #         r"\revert Stem.direction",
            #     ],
            #     site="absolute_after",
            # ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Articulation("hammer-on"),
            abjad.Dynamic("f"),
            abjad.LaissezVibrer(),
            abjad.LilyPondLiteral(
                r"\once \override Staff.DynamicLineSpanner.staff-padding = #7",
                site="before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    trinton.force_accidentals_command(
        selector=trinton.notehead_selector(
            chord_indices=[0],
            head_indices_lists=[[1, 2]],
        )
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("mp"),
            # abjad.LilyPondLiteral(
            #     r"\once \override Staff.DynamicLineSpanner.staff-padding = #9",
            #     site="before",
            # ),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "ob." }""",
        selector=trinton.select_leaves_by_index([1, -1], pitched=True),
        padding=14.5,
        direction=None,
        right_padding=1,
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
    voice=score["guitar 2 voice"],
)

rhythm.make_multi_gliss(
    score=score,
    voice_name="guitar 2 voice",
    measures=(3,),
    pitch_lists=[
        ["b,", "g,", "b,", "g,"],
        ["e", "c", "e"],
        ["ds", "f", "d"],
        ["f", "b", "f", "b"],
    ],
    preprocessor=None,
    finger_percussion="first",
    finger_percussion_padding=4,
    extra_voice="sub 1",
    notehead=None,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0], pitched=True),
        staff_type="reversion",
        auto_reversion=False,
        reversion_line_count=5,
        reversion_clef="bass",
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("hammer-on"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    abjad.slur,
    voice=score["guitar 2 voice gliss 1 sub 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(
        evans.talea([1000], 4),
    ),
    evans.PitchHandler(
        pitch_list=pitch.make_bariolage_chords(
            instrument="theorbe", string_ranges=[(1, 4)], index=36, seed=37
        )
    ),
    trinton.octavation(
        octave=1, selector=trinton.select_logical_ties_by_index([0], pitched=True)
    ),
    trinton.change_notehead_command(
        notehead="half-harmonic",
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    trinton.duration_line(),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[abjad.Clef("treble")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["guitar 2 voice"],
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
    voice=score["guitar 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 5)),
    evans.RhythmHandler(
        rhythm.weighted_talea(
            start_index=6,
            prolations=[7, 6, 6, 3],
            elaboration_level=3,
            retrograde=False,
        )
    ),
    evans.PitchHandler(
        [
            ["g''", "e''"],
            ["b''", "g''", "e''", "c''"],
            [
                "b''",
                "g''",
                "e''",
            ],
            ["e''", "c''"],
            ["g''", "e''", "c''"],
            ["b''", "g''", "e''", "c''"],
            ["b''", "g''"],
            ["g''", "e''", "c''"],
        ]
    ),
    # trinton.annotate_leaves_locally(
    #     selector=abjad.select.leaves
    # ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="stringing theorbe",
        auto_reversion=False,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 1, 4, 8, 9, 13, 16, 21], grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.BeamCount(left=2, right=1)],
        selector=trinton.select_leaves_by_index([12], pitched=True, grace=False),
    ),
    abjad.slur,
    trinton.tremolo_command(),
    trinton.attachment_command(
        attachments=[abjad.Arpeggio()],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "xp." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=9.5,
        direction=None,
        right_padding=2,
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
        attachments=[abjad.Dynamic("ppp")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["guitar 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(evans.tuplet([(-2, 1, 1, 1, 1), (1,), (1, 2, 3)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index([4], pitched=True),
    ),
    evans.PitchHandler(
        [
            ["a,"],
            ["a,", "f,", "d,"],
            ["a,", "f,", "d,"],
            ["a,", "f,", "d,"],
            ["a,", "f,", "d,"],
            ["a,", "f,", "d,"],
            ["a,", "f,", "d,"],
        ]
    ),
    trinton.tremolo_command(),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    abjad.beam,
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([3, 4, 5], pitched=True),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { \hspace #-8 "( w/o plectrum )" }"""),
                r"""- \tweak font-name "Bodoni72 Book Italic" """,
                r"""- \tweak font-size 2""",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("|>"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 1, 2, 2, 3, 4, 4, 5, 5, 6], first=True, pitched=True
        ),
    ),
    trinton.spanner_command(
        strings=[
            library.fingering_markup(fingering="i - m"),
            library.fingering_markup(fingering="p - c"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=13,
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
        strings=["p.", "xt."],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=17,
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
        padding=19.5,
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
    preprocessor=trinton.fuse_sixteenths_preprocessor((7, 1, 7)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    evans.RhythmHandler(evans.talea([-3, 4, 3, 3, 2], 16)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.talea([-3, 3, 4, 2, 3], 16)),
        direction=abjad.DOWN,
        voice_name="XIV voice",
        temp_name="XIII",
        # preprocessor=trinton.fuse_eighths_preprocessor((1, 2)),
    ),
    voice=score["guitar 2 voice"],
    # preprocessor=trinton.fuse_eighths_preprocessor((2, 1)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="twisting",
        auto_reversion=False,
        reversion_line_count=5,
        reversion_clef=None,
        force_clef=True,
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(evans.tuplet([(-2, 1, 2, 1), (1,), (1, 1, 1)])),
        direction=abjad.UP,
        voice_name="XII voice",
        temp_name="",
        preprocessor=trinton.fuse_sixteenths_preprocessor((7, 1, 7)),
    ),
    voice=score["guitar 2 voice"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    abjad.beam,
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([2, 3], pitched=True, grace=False),
    ),
    trinton.duration_line(
        selector=trinton.pleaves(),
        color=False,
        sustained=True,
        visible_grace=False,
        on_beat_graces=False,
        fraction=None,
    ),
    evans.PitchHandler(["g'"]),
    trinton.pitch_with_selector_command(
        pitch_list=["a'"], selector=trinton.pleaves(grace=True)
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.no-ledgers = ##t", site="before"
            )
        ],
        selector=trinton.pleaves(),
    ),
    library.stringing_noteheads(
        notehead_list=itertools.cycle(["XII"]),
        selector=trinton.select_logical_ties_by_index(
            [0], pitched=True, first=True, grace=False
        ),
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.hooked_spanner_command(
        string=r"""\markup { \override #'(font-name . "ekmelos") { \char ##xe7fa } }""",
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        padding=13.5,
        direction=None,
        right_padding=-1,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-size 4""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { \override #'(font-name . "ekmelos") { \char ##xe614 } }""",
        selector=trinton.select_logical_ties_by_index([1, 2], first=True, pitched=True),
        padding=13.5,
        direction=None,
        right_padding=-1,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-size 8""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { \override #'(font-name . "ekmelos") { \char ##xe7fa } }""",
        selector=trinton.select_leaves_by_index([2, 3], pitched=True),
        padding=13.5,
        direction=None,
        right_padding=-1,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-size 4""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { \override #'(font-name . "ekmelos") { \char ##xe614 } }""",
        selector=trinton.select_logical_ties_by_index([3, 4], first=True, pitched=True),
        padding=13.5,
        direction=None,
        right_padding=-1,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-size 8""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { \override #'(font-name . "ekmelos") { \char ##xe7fa } }""",
        selector=trinton.select_logical_ties_by_index([4, 5], first=True, pitched=True),
        padding=13.5,
        direction=None,
        right_padding=-1,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-size 4""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { \override #'(font-name . "ekmelos") { \char ##xe614 } }""",
        selector=trinton.select_logical_ties_by_index([5, 6], first=True, pitched=True),
        padding=13.5,
        direction=None,
        right_padding=-1,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-size 8""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { \override #'(font-name . "ekmelos") { \char ##xe7fa } }""",
        selector=trinton.select_leaves_by_index([6, -1], pitched=True),
        padding=13.5,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-size 4""",
        ],
    ),
    voice=score["XII voice"],
    # beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False)
    ),
    evans.PitchHandler(["c'", "e"]),
    trinton.pitch_with_selector_command(
        pitch_list=["a", "b"],
        selector=trinton.select_logical_ties_by_index([0, -1], pitched=True),
    ),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    library.stringing_noteheads(
        notehead_list=itertools.cycle(["XIII"]),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
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
    trinton.invisible_rests(),
    # trinton.transparent_noteheads(
    #     selector=trinton.select_logical_ties_by_index(
    #         [-3, -2, -1], first=True, pitched=True, grace=False
    #     )
    # ),
    voice=score["guitar 2 voice XIII"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6, 7)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False)
    ),
    evans.PitchHandler(["e", "c'"]),
    trinton.pitch_with_selector_command(
        pitch_list=["d"],
        selector=trinton.select_logical_ties_by_index([0, -1], pitched=True),
    ),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    library.stringing_noteheads(
        notehead_list=itertools.cycle(["XIV"]),
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
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
    trinton.invisible_rests(),
    # trinton.transparent_noteheads(
    #     selector=trinton.select_logical_ties_by_index(
    #         [-2, -1], first=True, pitched=True, grace=False
    #     )
    # ),
    voice=score["XIV voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8,)),
    evans.RhythmHandler(evans.tuplet([(2, 1)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0], pitched=True),
        staff_type="reversion",
        auto_reversion=False,
        reversion_line_count=5,
        reversion_clef="bass",
    ),
    voice=score["guitar 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (9,)),
    evans.RhythmHandler(evans.tuplet([(4, 1, 6, 2, 1), (6, 3, 4, 1)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index([4], pitched=True),
    ),
    voice=score["guitar 2 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((3,)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (8, 9)),
    trinton.pitch_with_selector_command(
        pitch_list=pitch.make_bariolage_chords(
            instrument="theorbe",
            string_ranges=[
                (5, 8),
                (5, 8),
                (5, 8),
                (5, 8),
                (5, 8),
                (5, 8),
            ],
            index=1,
            seed=37,
        ),
        selector=trinton.logical_ties(exclude=[1, 3, 4, 8], pitched=True, grace=False),
    ),
    trinton.force_accidentals_command(
        selector=trinton.notehead_selector(
            chord_indices=[0, 3, 5, 6],
            head_indices_lists=[[1, 2], [2, 3], [1, 2], [1, 2]],
        )
    ),
    trinton.aftergrace_command(
        invisible=True,
        selector=trinton.select_logical_ties_by_index(
            [1, 3, 4, 8], pitched=True, grace=False
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["d,", "b''"],
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 4, 5, 6, 7, 11, 12], pitched=True
        ),
    ),
    library.change_staff_type(
        selector=trinton.select_logical_ties_by_index(
            [1], first=True, pitched=True, grace=False
        ),
        staff_type="stringing theorbe",
        auto_reversion=False,
    ),
    library.change_staff_type(
        selector=trinton.select_logical_ties_by_index(
            [3], first=True, pitched=True, grace=False
        ),
        staff_type="stringing theorbe",
        auto_reversion=False,
    ),
    library.change_staff_type(
        selector=trinton.select_logical_ties_by_index(
            [8], first=True, pitched=True, grace=False
        ),
        staff_type="stringing theorbe",
        auto_reversion=False,
    ),
    library.change_staff_type(
        selector=trinton.select_logical_ties_by_index(
            [2], first=True, pitched=True, grace=False
        ),
        staff_type="reversion",
        auto_reversion=False,
        reversion_line_count=5,
        reversion_clef="bass",
    ),
    library.change_staff_type(
        selector=trinton.select_logical_ties_by_index(
            [5], first=True, pitched=True, grace=False
        ),
        staff_type="reversion",
        auto_reversion=False,
        reversion_line_count=5,
        reversion_clef="bass",
    ),
    library.change_staff_type(
        selector=trinton.select_logical_ties_by_index(
            [9], first=True, pitched=True, grace=False
        ),
        staff_type="reversion",
        auto_reversion=False,
        reversion_line_count=5,
        reversion_clef="bass",
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([1, 2, 4, 5], pitched=True),
        zero_padding=True,
        # invisible_center=True
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([6, 7, 11, 12], pitched=True),
        zero_padding=True,
        # invisible_center=True
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Stem.direction = #DOWN", site="before"
            )
        ],
        selector=trinton.select_logical_ties_by_index(
            [3], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.direction = #UP", site="before"
            )
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Articulation(">"),
            abjad.Articulation("hammer-on"),
        ],
        selector=trinton.logical_ties(
            exclude=[1, 3, 4, 8], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LaissezVibrer(),
        ],
        selector=trinton.logical_ties(
            exclude=[1, 3, 4, 8], last=True, pitched=True, grace=False
        ),
    ),
    trinton.manual_beam_positions(
        positions=(10, 10),
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { \hspace #-12 { "ob. w/ plectrum" } }""",
        selector=trinton.select_logical_ties_by_index([1, 2], first=True, pitched=True),
        padding=15.5,
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
        string=r"""\markup { "ob." }""",
        selector=trinton.select_logical_ties_by_index(
            [4, 7, 11, 12], first=True, pitched=True
        ),
        padding=11,
        direction=None,
        right_padding=1,
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
    trinton.attachment_command(
        attachments=[abjad.Dynamic("f")],
        selector=trinton.select_logical_ties_by_index(
            [0, 2, 5, 9], pitched=True, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Staff.DynamicLineSpanner.staff-padding = #6",
                site="before",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0], pitched=True, first=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_logical_ties_by_index(
            [1, 3, 8], pitched=True, first=True, grace=False
        ),
    ),
    voice=score["guitar 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    evans.RhythmHandler(evans.talea([2, 2, 2, 2, 1], 16)),
    evans.PitchHandler(["e''", "g'", "c''", "b", "d'"]),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="tablature",
        auto_reversion=False,
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.select_leaves_by_index([0, 1, 2])
    ),
    trinton.change_notehead_command(
        notehead="half-harmonic", selector=trinton.select_leaves_by_index([3, 4])
    ),
    trinton.continuous_glissando(
        selector=trinton.select_leaves_by_index([0, 1, 2]),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_leaves_by_index([2, 3]),
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        selector=trinton.select_leaves_by_index([3, 4]),
        zero_padding=True,
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "( touching all strings affected by RH )" }""",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        padding=6.5,
        direction=None,
        right_padding=1.5,
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
    voice=score["guitar 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (10, 11)),
    evans.RhythmHandler(evans.talea([8, 1], 16)),
    evans.PitchHandler([["e''", "g''", "b''"], ["a'", "c''", "e''", "g''", "b''"]]),
    trinton.tremolo_command(),
    abjad.slur,
    trinton.continuous_glissando(
        selector=trinton.pleaves(),
        zero_padding=True,
        slur=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #2.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.spanner_command(
        strings=[
            library.fingering_markup(fingering="p - c"),
            library.fingering_markup(fingering="m - c"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=12.5,
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
        strings=["msp.", "t."],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=16.5,
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
        string=r"""\markup { "( rasg. w/o plectrum )" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=19,
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
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin(">"), abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["guitar 1 voice"],
    beam_meter=True,
)

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
                hspace=3.5,
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
                hspace=-1,
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
                hspace=5,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 12 40 18)))",
                site="absolute_before",
            ),
            abjad.bundle(
                abjad.Markup(r"\markup { S }"),
                r"- \tweak transparent ##t",
                r"- \tweak padding #28",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 12 38 28)))",
                site="absolute_before",
            ),
            abjad.bundle(
                abjad.Markup(r"\markup { S }"),
                r"- \tweak transparent ##t",
                r"- \tweak padding #28",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

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
