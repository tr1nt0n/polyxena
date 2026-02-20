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
        ts.final_time_signature_list[0],
        [(1, 4)],
    ],
)

score = library.polyxena_score(section_ts)

# gambe music

# gambe right hand

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    evans.RhythmHandler(
        trinton.handwrite_nested_tuplets(
            tuplet_ratios=[(1, 4, 1), (1,), (1,), (1,), (1,), (-1,), (1,), (4, 1, -2)],
            # preprocessor=trinton.fuse_quarters_preprocessor((2, 1)),
            nested_ratios=[(4, 3), (-2, 1)],
            triple_nested_ratios=None,
            nested_vectors=None,
            nested_period=None,
            triple_nested_vectors=None,
            triple_nested_period=None,
            extract_trivial_tuplets=True,
            nested_selector=trinton.select_logical_ties_by_index(
                [1, -2], pitched=True, grace=False
            ),
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.Tie(),
        ],
        selector=trinton.select_leaves_by_index([0, 2, -2], pitched=True, grace=False),
    ),
    rhythm.replace_with_tremolo_container(
        selector=trinton.select_logical_ties_by_index(
            [2, 4], pitched=True, grace=False
        ),
        count=2,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.LilyPondLiteral(
                    r'\change Staff = "cello 2 staff"', site="before"
                ),
                abjad.LilyPondLiteral(
                    r'\change Staff = "cello 1 staff"', site="absolute_after"
                ),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [2, 3, 5, 6], first=True, pitched=True
        ),
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0, -1]),
        staff_type="tablature",
        auto_reversion=True,
    ),
    # trinton.linear_attachment_command(
    #     attachments=itertools.cycle(
    #         [
    #             abjad.StartBeam(),
    #             abjad.StopBeam(),
    #         ]
    #     ),
    #     selector=trinton.select_leaves_by_index([0, 4])
    # ),
    voice=score["cello 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((2, 1, 1, 2, 5, 1, 1, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    voice=score["cello 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    trinton.pitch_with_selector_command(
        pitch_list=[
            "a",
            "b'",
            "a",
            "f'",
            "f'",
            "f'",
        ],
        selector=trinton.logical_ties(exclude=[2, 3, 5, 6], pitched=True, grace=False),
    ),
    trinton.duration_line(
        selector=trinton.logical_ties(
            exclude=[0, 2, 3, 5, 6], pitched=True, grace=False
        )
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["g'", "c'", "b'", "a'", "g'"],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[["g", "b", "d'", "f'"]],
        selector=trinton.select_logical_ties_by_index(
            [2, 3, 5, 6], pitched=True, grace=False
        ),
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.change_notehead_command(
        notehead="harmonic-mixed",
        selector=trinton.select_logical_ties_by_index(
            [2, 5], pitched=True, grace=False
        ),
    ),
    trinton.continuous_glissando(
        selector=trinton.logical_ties(exclude=[2, 3, 5, 6], pitched=True, grace=False),
        zero_padding=True,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("half-up-bow")],
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 7, 8, 9], grace=False, first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("half-down-bow")],
        selector=trinton.select_logical_ties_by_index(
            [1], grace=False, first=True, pitched=True
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.select_logical_ties_by_index(
            [3, 6], first=True, pitched=True, grace=False
        ),
    ),
    trinton.hooked_spanner_command(
        string="""II-V""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=19.5,
        direction=None,
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 4""",
            # r"""- \tweak bound-details.left.Y #7.5""",
            # r"""- \tweak bound-details.right.Y #11""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\downward-diagonal-draw""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=16,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-size 1""",
            # r"""- \tweak bound-details.left.Y #7.5""",
            # r"""- \tweak bound-details.right.Y #11""",
        ],
    ),
    library.change_staff_type(
        selector=trinton.select_logical_ties_by_index(
            [2, 3], first=True, pitched=True, grace=False
        ),
        staff_type="stringing gambe",
        reversion_line_count=1,
        auto_reversion=False,
    ),
    library.change_staff_type(
        selector=trinton.select_logical_ties_by_index(
            [
                5,
            ],
            first=True,
            pitched=True,
            grace=False,
        ),
        staff_type="stringing gambe",
        reversion_line_count=1,
        auto_reversion=False,
    ),
    trinton.hooked_spanner_command(
        string="""DP""",
        selector=trinton.select_logical_ties_by_index([3, 4, 7, 8], first=True),
        padding=6,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 4""",
            # r"""- \tweak bound-details.left.Y #7.5""",
            # r"""- \tweak bound-details.right.Y #11""",
        ],
    ),
    library.footnote_command(
        text_string="Schnell wechseln zwischen dem Berühren der Saiten hinter dem Steg mit Fingerdruck, wie einen Flageolet spielen, und festen Herunterdrücken der Saiten. Dadurch sollte das Instrument vibrieren und ein unberechenbares Vibrato erzeugen.",
        selector=trinton.select_logical_ties_by_index([3], first=True),
        position_pair=(-1, 1),
        site="before",
    ),
    voice=score["cello 1 voice"],
)

# gambe left hand

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    evans.RhythmHandler(
        rhythm.distorted_talea(
            start_index=15,
            prolations=[3, 2, 2, 3, 3, 3, 3, 3],
            elaboration_level=2,
            retrograde=False,
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.pleaves(),
    #     selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [
                0,
                4,
                5,
                6,
                7,
                8,
                9,
                14,
                15,
                18,
            ]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
        ],
        selector=trinton.select_leaves_by_index([17]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.LilyPondLiteral(
                    r'\change Staff = "cello 1 staff"', site="before"
                ),
                abjad.LilyPondLiteral(
                    r'\change Staff = "cello 2 staff"', site="absolute_after"
                ),
            ]
        ),
        selector=trinton.select_logical_ties_by_index(
            [5, 6, 9, 14], first=True, pitched=True
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"fff"'),
            abjad.Dynamic('"ff"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [5, 9], first=True, pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = #12", site="before"
            ),
            abjad.Dynamic('"mp"'),
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = #12", site="before"
            ),
            abjad.Dynamic('"mf"'),
            abjad.LilyPondLiteral(
                r"\once \override DynamicLineSpanner.staff-padding = #12", site="before"
            ),
            abjad.Dynamic('"mp"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 7, 7, 15, 15], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4, 6)),
    evans.RhythmHandler(
        rhythm.distorted_talea(
            start_index=37,
            prolations=[3, 7, 3, 7, 7, 7, 7],
            elaboration_level=2,
            retrograde=False,
        )
    ),
    trinton.force_rest(selector=trinton.select_tuplets_by_index([1, 6, 7, 8])),
    trinton.force_rest(
        selector=trinton.select_logical_ties_by_index([9, 11, 12], pitched=True)
    ),
    rmakers.rewrite_rest_filled,
    rmakers.trivialize,
    rmakers.extract_trivial,
    trinton.fuse_tuplet_rests_command(),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # trinton.annotate_leaves_locally(
    #     # selector=abjad.select.tuplets,
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    #     selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 5, 7, 10]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([8, 9]),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    trinton.pitch_with_selector_command(
        pitch_list=[
            ["c'"],
            ["d'"],
            ["a"],
            ["b"],
            ["a"],
            ["c'"],
            ["b"],
            ["c'"],
        ],
        selector=trinton.select_logical_ties_by_index(
            [5, 6, 9, 10, 11, 12, 13, 14], pitched=True, grace=False
        ),
    ),
    trinton.change_notehead_command(
        notehead="cluster",
        selector=trinton.select_logical_ties_by_index(
            [5, 6, 9, 10, 11, 12, 13, 14], first=True, pitched=True, grace=False
        ),
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index(
            [5, 6, 9, 10, 11, 12, 13, 14], first=True, pitched=True, grace=False
        )
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["b", "b", "g", "a", "g", "b", "a", "b"],
        selector=trinton.pleaves(grace=True),
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.attachment_command(
        attachments=[abjad.Articulation("half-down-bow")],
        selector=trinton.select_logical_ties_by_index(
            [5, 6, 9, 10, 11, 12, 13, 14], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation("marcato")],
        selector=trinton.select_logical_ties_by_index(
            [5, 6, 9, 10, 11, 12, 13, 14], first=True, pitched=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 5)),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.change_lines(
        lines=1,
        selector=trinton.select_logical_ties_by_index(
            [0, 9, 23], first=True, pitched=True
        ),
        clef="percussion",
        invisible_barlines=False,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Staff.Clef.stencil = ##f", site="before")
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 9, 23], first=True, pitched=True
        ),
    ),
    trinton.change_notehead_command(
        notehead="cross",
        selector=trinton.logical_ties(
            pitched=True,
            exclude=[5, 6, 7, 8, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22],
        ),
    ),
    trinton.hooked_spanner_command(
        string="""\markup { \column { \line { Saitenhalter } \line { antippen } } }""",
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 9, 10, 23, -1], first=True
        ),
        padding=4,
        direction=None,
        right_padding=2,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            # r"""- \tweak bound-details.left.Y #7.5""",
            # r"""- \tweak bound-details.right.Y #11""",
        ],
    ),
    voice=score["cello 2 voice"],
)

# theorbe music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 6)),
    evans.RhythmHandler(
        evans.RhythmHandler(
            trinton.handwrite_nested_tuplets(
                tuplet_ratios=[
                    (7, 1, 4, 3, 7, 2, 4),
                    (2, 1, 3),
                    (1, 2, 1),
                    (1,),
                    (-1, 2),
                    (1,),
                    (-1,),
                    (1,),
                    (1, 2, 1),
                    (1, 2),
                    (1,),
                ],
                # preprocessor=trinton.fuse_quarters_preprocessor((2, 1)),
                nested_ratios=[(2, 1)],
                triple_nested_ratios=None,
                nested_vectors=None,
                nested_period=None,
                triple_nested_vectors=None,
                triple_nested_period=None,
                extract_trivial_tuplets=True,
                nested_selector=trinton.select_logical_ties_by_index(
                    [12], pitched=True, grace=False
                ),
            ),
        ),
    ),
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_logical_ties_by_index(
            [6, 9, 13, 15, 17, 20, 22], pitched=True, last=True, grace=False
        ),
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(pitched=True, first=True, grace=False),
    #     # selector=abjad.select.leaves
    # ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 6, 7, 9, 10, 12, 13, 17, 24, 26, 28, 30, 31, 33, 34, 40]
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=4, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([8, 14, 15, 16, 37, 38]),
    ),
    voice=score["guitar 2 voice"],
    preprocessor=trinton.fuse_thirty_seconds_preprocessor(
        (16, 8, 14, 16, 16, 29, 16, 5, 14, 7, 1000)
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.intermittent_voice_with_selector(
        rhythm_handler=evans.RhythmHandler(
            trinton.handwrite_nested_tuplets(
                tuplet_ratios=[
                    (7, 1, 4, 3, 7, 2, 4),
                    (2, 1, 3),
                    (1, 2, 1),
                    (1,),
                    (1,),
                    # (1,),
                    (1,),
                ],
                # preprocessor=trinton.fuse_quarters_preprocessor((2, 1)),
                nested_ratios=[(2, 1)],
                triple_nested_ratios=None,
                nested_vectors=None,
                nested_period=None,
                triple_nested_vectors=None,
                triple_nested_period=None,
                extract_trivial_tuplets=True,
                nested_selector=trinton.select_logical_ties_by_index(
                    [12], pitched=True, grace=False
                ),
            ),
        ),
        selector=trinton.select_leaves_by_index(list(range(0, 20)), pitched=True),
        direction=abjad.DOWN,
        voice_name="theorbe left hand voice",
        preprocessor=trinton.fuse_thirty_seconds_preprocessor((16, 8, 14, 2, 8, 6)),
        temp_name="right hand",
        tag=None,
    ),
    voice=score["guitar 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.pitch_with_selector_command(
        pitch_list=pitch.return_pitch_list(
            index=9, chord_groups=[3, 3, 3, 3, 3, 2, 3, 2, 3, 2, 2]
        ),
        selector=trinton.logical_ties(pitched=True, grace=False, exclude=[-1]),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.logical_ties(pitched=True, grace=False, exclude=[-1]),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [8, 9, 10], pitched=True, grace=False
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.notehead_selector(
            chord_indices=[2, 4, 5], head_indices_lists=[[-1], [-1], [-1]]
        ),
    ),
    trinton.respell_with_flats(selector=trinton.select_leaves_by_index([0, 5])),
    trinton.force_accidentals_command(
        selector=trinton.notehead_selector(chord_indices=[3], head_indices_lists=[[1]])
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False)
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    trinton.spanner_command(
        strings=[r"""\upward-diagonal-draw""", r"\normale-draw"],
        selector=trinton.select_logical_ties_by_index(
            [0, -2], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=12,
        right_padding=4.5,
        direction=None,
        full_string=True,
        command="Three",
        tweaks=[
            r"""- \tweak font-size 1""",
            r"""- \tweak bound-details.left.Y #11""",
            r"""- \tweak bound-details.right.Y #25""",
        ],
    ),
    trinton.spanner_command(
        strings=["Nagelvorderseite", r"Fingerspitze"],
        selector=trinton.select_logical_ties_by_index(
            [0, -2], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=12,
        right_padding=3.5,
        direction=None,
        full_string=False,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #7.5""",
            r"""- \tweak bound-details.right.Y #21.5""",
        ],
    ),
    trinton.spanner_command(
        strings=["ST", r"Steg"],
        selector=trinton.select_logical_ties_by_index(
            [0, -2], first=True, pitched=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=12,
        right_padding=3.5,
        direction=None,
        full_string=False,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 4""",
            r"""- \tweak bound-details.left.Y #4.5""",
            r"""- \tweak bound-details.right.Y #18.5""",
        ],
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.LilyPondLiteral(
                    r'\change Staff = "guitar 1 staff"', site="before"
                ),
                abjad.LilyPondLiteral(
                    r'\change Staff = "guitar 2 staff"', site="absolute_after"
                ),
            ]
        ),
        selector=trinton.select_leaves_by_index([-4, -1], pitched=True, grace=False),
    ),
    voice=score["guitar 2 voice right hand"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.talea([13, -1000], 32)),
    trinton.noteheads_only(),
    trinton.transparent_noteheads(selector=trinton.pleaves()),
    trinton.invisible_rests(),
    voice=score["guitar 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\override Staff.Clef.stencil = ##f", site="before"),
            abjad.Dynamic('"p"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic('"ppp"'),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 0, -2]),
    ),
    trinton.change_lines(
        lines=1,
        clef="percussion",
        invisible_barlines=False,
        selector=trinton.select_leaves_by_index([1]),
    ),
    voice=score["guitar 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 3)),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index([6, 9, 13, 14, 15]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, 12]),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.pitch_with_selector_command(
        pitch_list=pitch.return_pitch_list(
            index=9, chord_groups=[3, 3, 3, 3, 3, 2, 3, 2, 3, 2, 2]
        ),
        selector=trinton.logical_ties(pitched=True, grace=False, exclude=[-1]),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["c'", "g"],
        selector=trinton.select_logical_ties_by_index([-2, -1], pitched=True),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([-2, -1], pitched=True),
        zero_padding=True,
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.logical_ties(pitched=True, grace=False, exclude=[-1]),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index(
            [8, 9, 10], pitched=True, grace=False
        ),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.notehead_selector(
            chord_indices=[2, 4, 5], head_indices_lists=[[-1], [-1], [-1]]
        ),
    ),
    trinton.respell_with_flats(selector=trinton.select_leaves_by_index([0, 5])),
    # trinton.force_accidentals_command(
    #     selector=trinton.notehead_selector(
    #         chord_indices=[3],
    #         head_indices_lists=[[1]]
    #     )
    # ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Voice.TupletBracket.stencil = ##f",
                    r"\override Voice.TupletNumber.stencil = ##f",
                    r"\override Voice.NoteHead.transparent = ##t",
                    r"\override Voice.Dots.stencil = ##f",
                    r"\override Voice.NoteHead.X-extent = #'(0 . 0)",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert Voice.NoteHead.transparent",
                    r"\revert Voice.Dots.stencil",
                    r"\revert Voice.NoteHead.X-extent",
                    r"\revert Voice.TupletBracket.stencil",
                    r"\revert Voice.TupletNumber.stencil",
                ],
                site="before",
            ),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True, grace=False
        ),
    ),
    library.hammer_on_stem(
        selector=trinton.logical_ties(
            first=True, pitched=True, grace=False, exclude=[-1]
        )
    ),
    # trinton.change_notehead_command(
    #     notehead="cross",
    #     selector=trinton.pleaves()
    # ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
            # abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([8, 12]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Voice.DynamicLineSpanner.staff-padding = #15",
                site="before",
            ),
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin(">o"),
            abjad.Dynamic('"ppp"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 0, -1], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(
            first=True, pitched=True, grace=False, exclude=[-1]
        ),
    ),
    library.change_staff_type(
        selector=trinton.select_logical_ties_by_index(
            [-1], first=True, pitched=True, grace=False
        ),
        staff_type="tablature",
        reversion_line_count=5,
        auto_reversion=False,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Voice.Flag.stencil = ##f",
                    r"\override Voice.Stem.direction = #UP",
                    r"\override Voice.Stem.Y-extent = ##f",
                    r"\override Voice.Stem.X-extent = ##f",
                    r"\override Voice.Stem.details.lengths = #'(24)",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert Voice.Flag.stencil",
                    r"\revert Voice.Stem.direction",
                    r"\revert Voice.Stem.Y-extent",
                    r"\revert Voice.Stem.X-extent",
                    r"\revert Voice.Stem.details.lengths",
                ],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([13, -1], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string="""XIII-XIV""",
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], first=True, pitched=True
        ),
        padding=7,
        direction=None,
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 4""",
            # r"""- \tweak bound-details.left.Y #7.5""",
            # r"""- \tweak bound-details.right.Y #11""",
        ],
    ),
    voice=score["theorbe left hand voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    evans.RhythmHandler(
        trinton.handwrite_nested_tuplets(
            tuplet_ratios=[(-1,), (1, 2, 1, 2), (1, 1), (-1,)],
            nested_ratios=[(1, 2)],
            triple_nested_ratios=None,
            nested_vectors=None,
            nested_period=None,
            triple_nested_vectors=None,
            triple_nested_period=None,
            extract_trivial_tuplets=True,
            nested_selector=trinton.select_logical_ties_by_index(
                [4, 5], pitched=True, grace=False
            ),
        ),
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.invisible_rests(selector=trinton.select_leaves_by_index([0])),
    trinton.duration_line(
        selector=trinton.logical_ties(pitched=True, grace=False),
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.hooked_spanner_command(
        string="""( Steg, mit Fingerspitze )""",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        padding=5,
        direction=None,
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            # r"""- \tweak bound-details.left.Y #7.5""",
            # r"""- \tweak bound-details.right.Y #11""",
        ],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff",
                    r"\override Staff.Rest.transparent = ##t",
                    r"\override Staff.Dots.transparent = ##t",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\stopStaff \startStaff",
                    r"\revert Staff.Rest.transparent",
                    r"\revert Staff.Dots.transparent",
                ],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.TupletBracket.direction = #UP",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\revert Staff.TupletBracket.direction", site="absolute_after"
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["guitar 1 voice"],
    preprocessor=trinton.fuse_thirty_seconds_preprocessor((6, 16, 28, 1000)),
)


trinton.make_music(
    lambda _: trinton.select_target(_, (3, 5)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([24], pitched=True, grace=False),
        invisible=True,
    ),
    # trinton.annotate_leaves_locally(
    #     # selector=trinton.logical_ties(first=True, pitched=True, grace=False)
    #     selector=trinton.logical_ties(first=True, pitched=True),
    # ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.pitch_with_selector_command(
        pitch_list=[["c'", "d'"], ["g", "e'"]],
        selector=trinton.select_logical_ties_by_index([26, 27], pitched=True),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([26, 27], pitched=True),
        zero_padding=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\override Staff.TupletBracket.direction = #DOWN",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\revert Staff.TupletBracket.direction", site="absolute_after"
            ),
        ],
        selector=trinton.select_logical_ties_by_index([25, 27], first=True),
    ),
    trinton.hooked_spanner_command(
        string="""XII-XIII""",
        selector=trinton.select_logical_ties_by_index(
            [26, 27], first=True, pitched=True
        ),
        padding=7,
        direction=None,
        right_padding=0,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 4""",
            # r"""- \tweak bound-details.left.Y #7.5""",
            # r"""- \tweak bound-details.right.Y #11""",
        ],
    ),
    voice=score["guitar 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(evans.tuplet([(-1,), (1,), (-1,), (-1, 2), (1,)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.attachment_command(
        attachments=[abjad.Tie()], selector=trinton.select_leaves_by_index([-2])
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.duration_line(selector=trinton.logical_ties(pitched=True, grace=False)),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.invisible_rests(),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([6, 7], grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.Stem.direction = #DOWN",
                    r"\override Staff.Flag.stencil = ##f",
                    r"\override Staff.TupletBracket.stencil = ##f",
                    r"\override Staff.TupletNumber.stencil = ##f",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert Flag.stencil",
                    r"\revert Staff.TupletBracket.stencil",
                    r"\revert Staff.TupletNumber.stencil",
                    r"\revert Staff.Stem.direction",
                ],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle(
            [
                abjad.LilyPondLiteral(
                    [
                        r"\stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff",
                        r"\override Staff.Rest.transparent = ##t",
                        r"\override Staff.Dots.transparent = ##t",
                    ],
                    site="before",
                ),
                abjad.LilyPondLiteral(
                    [
                        r"\stopStaff \startStaff",
                        r"\revert Staff.Rest.transparent",
                        r"\revert Staff.Dots.transparent",
                    ],
                    site="before",
                ),
            ]
        ),
        selector=trinton.select_leaves_by_index([0, 1, 6, 9]),
    ),
    trinton.hooked_spanner_command(
        string="""\markup { \column { \line { "Steg mit" } \line { Nagelvorderseite } } }""",
        selector=trinton.logical_ties(first=True, pitched=True),
        padding=4.5,
        direction=None,
        right_padding=0,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 0.5""",
            # r"""- \tweak bound-details.left.Y #7.5""",
            # r"""- \tweak bound-details.right.Y #11""",
        ],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Voice.Flag.stencil = ##f",
                    r"\override Voice.Stem.direction = #DOWN",
                    r"\override Voice.Stem.Y-extent = ##f",
                    r"\override Voice.Stem.X-extent = ##f",
                    r"\override Voice.Stem.details.lengths = #'(18)",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert Voice.Flag.stencil",
                    r"\revert Voice.Stem.direction",
                    r"\revert Voice.Stem.Y-extent",
                    r"\revert Voice.Stem.X-extent",
                    r"\revert Voice.Stem.details.lengths",
                ],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    voice=score["guitar 1 voice"],
    preprocessor=trinton.fuse_sixty_fourths_preprocessor((7, 14, 7, 14, 6)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.pitch_with_selector_command(
        pitch_list=pitch.return_pitch_list(index=20, chord_groups=[3, 1]),
        selector=trinton.pleaves(grace=False),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.select_logical_ties_by_index([2], pitched=True, grace=False),
    ),
    trinton.octavation(
        octave=-1,
        selector=trinton.notehead_selector(
            chord_indices=[2, 3, 4, 9, 10, 11],
            head_indices_lists=[[2], [2], [2], [2], [2], [2]],
        ),
    ),
    trinton.octavation(
        octave=1,
        selector=trinton.select_logical_ties_by_index(
            [1, 3], pitched=True, grace=False
        ),
    ),
    trinton.respell_with_flats(
        selector=trinton.select_logical_ties_by_index([2], pitched=True, grace=False)
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.Clef("treble"), abjad.Clef("bass")]),
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 3], first=True, pitched=True, grace=False
        ),
    ),
    library.multiple_muting(
        selector=trinton.select_logical_ties_by_index([2], pitched=True, grace=False),
        closed_fundamental=False,
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_leaves_by_index(
            [1, 2, 3, 4, 5, 6, 7, 11, 12], pitched=True, grace=False
        ),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"fff"'),
            abjad.Dynamic('"ff"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 2], first=True, pitched=True, grace=False
        ),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"mp"'),
            abjad.Dynamic('"mf"'),
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, 3], first=True, pitched=True, grace=False
        ),
        direction=abjad.UP,
    ),
    library.change_staff_type(
        selector=trinton.select_logical_ties_by_index(
            [0], first=True, pitched=True, grace=False
        ),
        staff_type="reversion",
        auto_reversion=False,
        reversion_line_count=5,
        reversion_clef="bass",
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.Stem.direction = #DOWN",
                ],
                site="before",
            ),
            abjad.LilyPondLiteral(
                [
                    r"\revert Staff.Stem.direction",
                ],
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([4, -1], pitched=True, grace=False),
    ),
    trinton.hooked_spanner_command(
        string="""Flachfinger""",
        selector=trinton.select_leaves_by_index([1, 3], grace=False, pitched=True),
        padding=6,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            # r"""- \tweak bound-details.left.Y #7.5""",
            # r"""- \tweak bound-details.right.Y #11""",
        ],
    ),
    trinton.hooked_spanner_command(
        string="""Flachfinger""",
        selector=trinton.select_leaves_by_index([8, 10], grace=False, pitched=True),
        padding=3.5,
        direction=None,
        right_padding=3,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book" """,
            r"""- \tweak font-size 2""",
            # r"""- \tweak bound-details.left.Y #7.5""",
            # r"""- \tweak bound-details.right.Y #11""",
        ],
    ),
    voice=score["guitar 2 voice"],
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
                padding=22,
                note_head_fontsize=0.5,
                stem_length=2,
                text_fontsize=8,
                dotted=False,
                fraction=None,
                tempo_change=None,
                site="after",
                hspace=0.5,
                string_only=False,
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
        # tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

for tempo, measure_number, padding in zip(
    itertools.cycle([84, 48]), list(range(2, 7)), [20, 20, 6.5, 6.5, -27.5]
):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure_number,)),
        trinton.attachment_command(
            attachments=[
                trinton.tempo_markup(
                    note_value=8,
                    tempo=tempo,
                    padding=padding,
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

for tempo, measure_number in zip(itertools.cycle([48, 84]), [1, 2, 3, 4, 5, 6]):
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure_number,)),
        trinton.attachment_command(
            attachments=[
                abjad.MetronomeMark(abjad.Duration(1, 8), tempo),
            ],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

# trinton.make_music(
#     lambda _: trinton.select_target(_, (2,)),
#     trinton.attachment_command(
#         attachments=[
#             trinton.tempo_markup(
#                 note_value=8,
#                 tempo=84,
#                 padding=padding,
#                 note_head_fontsize=0.5,
#                 stem_length=1.5,
#                 text_fontsize=4,
#                 dotted=False,
#                 fraction=None,
#                 tempo_change=None,
#                 site="after",
#                 hspace=hspace,
#                 string_only=False,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.UP,
#         tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score[voice_name],
# )

# breaking

for measure in [
    7,
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

for measure in [3]:
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (1 20 38 18)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (15 15 30 15)))",
                site="absolute_before",
            ),
            abjad.bundle(
                abjad.Markup(r"\markup { \fontsize #25 { . } }"),
                r"- \tweak padding #7",
                r"- \tweak color #white",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

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

trinton.whiteout_empty_staves(
    score=score,
    voice_names=["cello 2 voice"],
    cutaway=False,
    tag=abjad.Tag("+SCORE"),
    last_segment=False,
)

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
