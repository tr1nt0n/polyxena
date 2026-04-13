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
        ts.final_time_signature_list[2][0:25],
        # [(1, 4)],
    ],
)

score = library.polyxena_score(section_ts)

# event annotations

# for measure, text in zip(
#     [
#         # 1,
#         # 7,
#         # 9,
#         # 17,
#         # 18,
#         # 21,
#         # 25,
#     ],
#     [
#         # "24 second gambe mute",
#         # "13 second w/ theorbe periodic bridge strumming",
#         # "theorbe bridge strumming becomes aperiodic",
#         # "theorbe transitions to bariolage",
#         # "theorbe arrives at bariolage",
#         # "gambe starts changing mute",
#         # "gambe becomes bariolage",
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

# time signature changes

trinton.change_time_signatures(
    score=score,
    global_context="Global Context",
    measure_range=(1, 6),
    replacement_signatures=[(105, 32)],
)

trinton.change_time_signatures(
    score=score,
    global_context="Global Context",
    measure_range=(2, 3),
    replacement_signatures=[(22, 8)],
)

# gambe music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 14)),
    evans.RhythmHandler(evans.talea([1000], 4)),
    evans.PitchHandler([["a", "ef", "d"]]),
    library.multiple_muting(
        selector=abjad.select.chords,
        closed_fundamental=False,
        forgo_notehead_change=True,
    ),
    trinton.change_notehead_command(
        notehead="harmonic", selector=trinton.select_leaves_by_index([0])
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False)
    ),
    trinton.noteheads_only(),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass"), abjad.Dynamic("pp")],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "IV" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=4,
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
    lambda _: trinton.select_target(_, (3, 6)),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("<"), abjad.Dynamic("mp")],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 14)),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("<"), abjad.Dynamic("f")],
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (15, 17)),
    evans.RhythmHandler(
        evans.talea([10, 9, 6, 6, 5, 5, 4, 3, 4, 3, 3, 2, 2, 2, 1, 1, -1000], 32)
    ),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(
        [
            ["a", "ef", "d"],
            ["a", "d"],
            ["eqf,", "af,"],
            ["df,", "eqf,", "af,"],
            ["bf,", "eqf"],
            ["bf,", "eqf", "fqs"],
            ["a", "ef", "d"],
            ["ef", "a", "c'"],
            ["e'", "gs'"],
            ["e'", "gs'", "a'"],
            ["a", "ef", "d"],
            ["ef", "a", "c'"],
            ["d'", "gs'", "a'"],
            ["d'", "a'"],
            ["f'", "b'"],
            ["f'", "b'", "cs''"],
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
        ]
    ),
    library.multiple_muting(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2, 4, 8, 9, 12, 13, 14], pitched=True, grace=False
        ),
        closed_fundamental=False,
        forgo_notehead_change=False,
    ),
    library.multiple_muting(
        selector=trinton.select_logical_ties_by_index(
            [3, 5, 6, 7, 10, 11, 15], pitched=True, grace=False
        ),
        closed_fundamental=True,
        forgo_notehead_change=False,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.Clef("treble"), abjad.Clef("bass")]),
        selector=trinton.select_logical_ties_by_index(
            [8, 10, 12], first=True, pitched=True, grace=False
        ),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Staff.Clef.X-extent = #'(-1 . 3)",
                ],
                site="absolute_before",
            )
        ],
        selector=trinton.select_logical_ties_by_index(
            [10], first=True, pitched=True, grace=False
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "IV" }""",
        selector=trinton.select_logical_ties_by_index([0, 2], first=True, pitched=True),
        padding=0,
        direction=None,
        right_padding=-1.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Three",
        tag=None,
        tweaks=[
            # r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #1.5""",
            r"""- \tweak bound-details.right.Y #6.5""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "VII" }""",
        selector=trinton.select_logical_ties_by_index([2, 4], first=True, pitched=True),
        padding=8.5,
        direction=None,
        right_padding=-1.5,
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
        string=r"""\markup { "V" }""",
        selector=trinton.select_logical_ties_by_index([4, 6], first=True, pitched=True),
        padding=6,
        direction=None,
        right_padding=-3.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Three",
        tag=None,
        tweaks=[
            # r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #2.5""",
            r"""- \tweak bound-details.right.Y #-3""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "VI" }""",
        selector=trinton.select_logical_ties_by_index([6, 8], first=True, pitched=True),
        padding=5,
        direction=None,
        right_padding=-1.5,
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
        string=r"""\markup { "III" }""",
        selector=trinton.select_logical_ties_by_index(
            [8, 10], first=True, pitched=True
        ),
        padding=4,
        direction=None,
        right_padding=-1.5,
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
        string=r"""\markup { "IV" }""",
        selector=trinton.select_logical_ties_by_index(
            [10, 12], first=True, pitched=True
        ),
        padding=5,
        direction=None,
        right_padding=-1.5,
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
        string=r"""\markup { "II" }""",
        selector=trinton.select_logical_ties_by_index(
            [12, 14], first=True, pitched=True
        ),
        padding=9.5,
        direction=None,
        right_padding=-1.5,
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
        string=r"""\markup { "I" }""",
        selector=trinton.select_logical_ties_by_index(
            [14, 15], first=True, pitched=True
        ),
        padding=9.5,
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
    trinton.spanner_command(
        strings=["ord.", "xp."],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=0,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=False,
        end_hook_right_padding=0,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #4""",
            r"""- \tweak bound-details.right.Y #8.5""",
        ],
    ),
    library.attach_patterned_dynamics(
        index=36,
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup { \hspace #-7 { "legatissimo sempre" } }"""),
                r"""- \tweak font-name "Bodoni72 Book Italic" """,
                r"""- \tweak font-size 2""",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["cello 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    evans.RhythmHandler(evans.talea([10, 9, 6, 6, 5, 5, 4, 3, -1000], 32)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(
        [
            ["f'", "b'", "cs''"],
            ["c'", "a", "ef"],
            ["d'", "gs'"],
            ["f'", "b'", "cs''"],
            ["d'", "gs'"],
            ["c'", "a", "ef"],
            ["d'", "gs'"],
            ["e'", "gs'", "a'"],
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
            "c'",
        ]
    ),
    library.multiple_muting(
        selector=trinton.select_logical_ties_by_index(
            [2, 4, 6, 7], pitched=True, grace=False
        ),
        closed_fundamental=False,
        forgo_notehead_change=False,
    ),
    library.multiple_muting(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 3, 5], pitched=True, grace=False
        ),
        closed_fundamental=True,
        forgo_notehead_change=False,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.Clef("bass"), abjad.Clef("treble")]),
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 5, 6], first=True, pitched=True, grace=False
        ),
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "I" }""",
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        padding=8,
        direction=None,
        right_padding=-5,
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
        string=r"""\markup { "IV" }""",
        selector=trinton.select_logical_ties_by_index([1, 2], first=True, pitched=True),
        padding=6,
        direction=None,
        right_padding=-5,
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
        string=r"""\markup { "II" }""",
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, pitched=True),
        padding=0,
        direction=None,
        right_padding=-1.5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Three",
        tag=None,
        tweaks=[
            # r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #0.5""",
            r"""- \tweak bound-details.right.Y #8""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "I" }""",
        selector=trinton.select_logical_ties_by_index([3, 4], first=True, pitched=True),
        padding=9.5,
        direction=None,
        right_padding=-1.5,
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
        string=r"""\markup { "II" }""",
        selector=trinton.select_logical_ties_by_index([4, 5], first=True, pitched=True),
        padding=0,
        direction=None,
        right_padding=-5,
        full_string=True,
        style="dashed-line-with-hook",
        hspace=None,
        command="Three",
        tag=None,
        tweaks=[
            # r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #7""",
            r"""- \tweak bound-details.right.Y #-2""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "IV" }""",
        selector=trinton.select_logical_ties_by_index([5, 6], first=True, pitched=True),
        padding=5.5,
        direction=None,
        right_padding=-1.5,
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
        string=r"""\markup { "II" }""",
        selector=trinton.select_logical_ties_by_index([6, 7], first=True, pitched=True),
        padding=4,
        direction=None,
        right_padding=-1.5,
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
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "III" }""",
        selector=trinton.select_leaves_by_index([-2, -1], pitched=True),
        padding=4,
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
    trinton.hooked_spanner_command(
        string=r"""\markup { "( xp. )" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=11,
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
        ],
    ),
    library.attach_patterned_dynamics(
        index=52,
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    voice=score["cello 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
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
    lambda _: trinton.select_target(_, (19,)),
    evans.RhythmHandler(
        rhythm.weighted_talea(
            start_index=6, prolations=[9, 6], elaboration_level=0, retrograde=False
        )
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    pitch.strange_bariolage_pitching(index=1, instrument="gambe"),
    trinton.continuous_glissando(selector=trinton.pleaves(), zero_padding=True),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index(
            [0, 1, 4, -1], pitched=True, grace=False
        ),
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="stringing gambe",
        auto_reversion=False,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 3, 4, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Articulation("talon-to-punta"),
            abjad.Articulation("punta-to-talon"),
        ],
        selector=trinton.select_logical_ties_by_index([0, 3], first=True, pitched=True),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "( xp. )" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
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
        ],
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["cello 1 voice"],
    # beam_meter=True
)

trinton.make_music(
    lambda _: trinton.select_target(_, (19,)),
    evans.RhythmHandler(evans.talea([4, 3], 8)),
    evans.PitchHandler(
        pitch_list=pitch.make_bariolage_chords(
            instrument="gambe", string_ranges=[(1, 6), (2, 5)], index=0, seed=37
        )
    ),
    trinton.attachment_command(
        attachments=[abjad.Clef("bass")], selector=trinton.select_leaves_by_index([0])
    ),
    voice=score["cello 2 voice"],
)

# theorbe music

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1, 1, 1, 1)])),
    evans.PitchHandler(["d,", "b''"]),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="stringing theorbe",
        auto_reversion=False,
    ),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    trinton.attachment_command(
        attachments=[
            abjad.Dynamic("ppp"),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["guitar 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 10)),
    evans.RhythmHandler(
        rhythm.shuffled_gesture(index=36, instrument="theorbe", stage=3)
    ),
    rhythm.continuous_beam(selector=abjad.select.leaves),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    evans.PitchHandler(["d,", "b''"]),
    # trinton.annotate_leaves_locally(selector=abjad.select.leaves),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=2),
            abjad.BeamCount(left=1, right=3),
            abjad.BeamCount(left=1, right=1),
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
        ],
        selector=trinton.select_leaves_by_index([4, 5, 7, 11, 18, 19]),
    ),
    trinton.manual_beam_positions(positions=(12.5, 12.5), selector=abjad.select.leaves),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Stem.direction = #UP", site="before"
            )
        ],
        selector=trinton.pleaves(grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                rf"""\once \override TupletBracket.stencil =
                     #(lambda (grob)
                        (let* ((pos (ly:grob-property grob 'positions))
                               (dir (ly:grob-property grob 'direction))
                               (new-pos (if (= dir 1)
                                            (max (car pos)(cdr pos))
                                            (min (car pos)(cdr pos)))))
                          (ly:grob-set-property! grob 'positions (cons new-pos new-pos))
                          (ly:tuplet-bracket::print grob)))
                \once \override TupletBracket.direction = #UP""",
            )
        ],
        selector=abjad.select.tuplets,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(r"\once \override TupletBracket.padding = #-1")
        ],
        selector=trinton.select_tuplets_by_index([-1]),
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("<"), abjad.Dynamic("mf")],
        selector=trinton.select_leaves_by_index([0, 10]),
    ),
    voice=score["guitar 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2, 10)),
    trinton.continuous_glissando(
        selector=trinton.pleaves(), zero_padding=True, invisible_center=True
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "ob. w/ plectrum" }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
        direction=None,
        right_padding=0,
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
)

trinton.make_music(
    lambda _: trinton.select_target(_, (7, 10)),
    library.attach_patterned_dynamics(
        index=36,
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin(">"),
            abjad.StartHairpin("<"),
            abjad.StartHairpin(">"),
            abjad.StartHairpin("<"),
            abjad.StartHairpin(">"),
            abjad.StartHairpin("<"),
        ],
        selector=trinton.select_leaves_by_index([0, 2, 3, 4, 6, 7]),
    ),
    voice=score["guitar 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(
        rhythm.shuffled_gesture(index=52, instrument="theorbe", stage=3)
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["d,"],
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
    ),
    # rhythm.continuous_beam(selector=abjad.select.leaves),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="stringing theorbe",
        auto_reversion=False,
    ),
    voice=score["guitar 1 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((3, 2, 3)),
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 19)),
    evans.RhythmHandler(
        rhythm.shuffled_gesture(index=56, instrument="theorbe", stage=2)
    ),
    trinton.rewrite_meter_command(boundary_depth=-2),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["d'"], selector=trinton.pleaves(grace=True)
    ),
    voice=score["guitar 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 19)),
    trinton.continuous_glissando(invisible_center=True, zero_padding=True),
    library.half_note_signifier(
        selector=trinton.pleaves(grace=False), direction=abjad.UP, padding=3
    ),
    trinton.transparent_noteheads(selector=trinton.pleaves(grace=False)),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "( ob. )" }""",
        selector=trinton.select_logical_ties_by_index([0, 5], first=True, pitched=True),
        padding=8.5,
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
    trinton.spanner_command(
        strings=["", "msp.", "p."],
        selector=trinton.select_logical_ties_by_index(
            [5, 10, 10, 12, 12, 18], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=0,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    trinton.spanner_command(
        strings=["", "xp.", "p.", "xp."],
        selector=trinton.select_logical_ties_by_index(
            [18, 22, 22, 26, 26, 28, 28, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=8.5,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=0,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    library.attach_patterned_dynamics(
        index=46,
        selector=trinton.patterned_tie_index_selector(
            [
                0,
                2,
                4,
                7,
                10,
                12,
            ],
            15,
            first=True,
            pitched=True,
        ),
    ),
    # trinton.annotate_leaves_locally(selector=trinton.pleaves()),
    trinton.linear_attachment_command(
        attachments=[
            abjad.StartHairpin("<"),
            abjad.StartHairpin("<"),
            abjad.StartHairpin("<"),
            abjad.StartHairpin("<"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">"),
            abjad.StartHairpin(">"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin("<"),
            abjad.StartHairpin("<"),
            abjad.StartHairpin(">"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 4, 10, 12, 15, 17, 19, 22, 25, 27, 30, 32], first=True, pitched=True
        ),
    ),
    voice=score["guitar 1 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    evans.RhythmHandler(
        evans.tuplet(
            [
                (-1,),
                (4, 1),
                (1,),
            ]
        )
    ),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.attachment_command(
        attachments=[abjad.Tie()],
        selector=trinton.select_leaves_by_index([1], pitched=True),
    ),
    evans.PitchHandler(
        pitch.make_bariolage_chords(
            instrument="theorbe",
            string_ranges=[(4, 8), (1, 8)],
            index=0,
            seed=37,
        ),
    ),
    trinton.force_accidentals_command(
        selector=trinton.notehead_selector(
            chord_indices=[1],
            head_indices_lists=[[3]],
        )
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0], pitched=True),
        staff_type="reversion",
        auto_reversion=False,
        reversion_line_count=5,
        reversion_clef="bass",
    ),
    voice=score["guitar 2 voice"],
    preprocessor=trinton.fuse_quarters_preprocessor((3, 2, 3)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (12, 19)),
    evans.RhythmHandler(evans.talea([12, 14, 36, 28, 11, 33, 21, 1000], 32)),
    trinton.rewrite_meter_command(boundary_depth=-2),
    evans.PitchHandler(
        pitch.make_bariolage_chords(
            instrument="theorbe",
            string_ranges=[
                (2, 5),
                (1, 8),
                (1, 3),
                (1, 5),
                (4, 8),
                (1, 8),
                (7, 8),
                (4, 7),
            ],
            index=2,
            seed=37,
        ),
    ),
    trinton.force_accidentals_command(
        selector=trinton.notehead_selector(
            chord_indices=[15],
            head_indices_lists=[[3]],
        )
    ),
    # library.change_staff_type(
    #     selector=trinton.select_leaves_by_index([0], pitched=True),
    #     staff_type="reversion",
    #     auto_reversion=False,
    #     reversion_line_count=5,
    #     reversion_clef="bass",
    # ),
    voice=score["guitar 2 voice"],
    beam_meter=True,
)

# globals

trinton.make_music(
    lambda _: trinton.select_target(_, (1,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text " 24\" " \startMeasureSpanner', site="absolute_before"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r'\tweak text " 13\" " \startMeasureSpanner', site="absolute_before"
            ),
            abjad.LilyPondLiteral(r"\stopMeasureSpanner", site="absolute_after"),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["Global Context"],
)

# fermate

# trinton.fermata_measures(
#     score=score,
#     measures=[3],
#     fermata="very-short-fermata",
#     voice_names=["cello 1 voice", "cello 2 voice", "guitar 1 voice", "guitar 2 voice"],
#     font_size=14,
#     clef_whitespace=True,
#     blank=True,
#     last_measure=False,
#     # padding=4,
#     # extra_offset=2.5,
#     tag=abjad.Tag("+SCORE"),
# )

# tempi

trinton.make_music(
    lambda _: trinton.select_target(_, (3, 6)),
    trinton.spanner_command(
        strings=[
            trinton.tempo_markup(
                note_value=8,
                tempo=63,
                padding=0,
                note_head_fontsize=0.5,
                stem_length=2,
                text_fontsize=8,
                dotted=False,
                fraction=None,
                tempo_change=None,
                site="after",
                hspace=4.5,
                string_only=True,
            ),
            trinton.tempo_markup(
                note_value=8,
                tempo=112,
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
        selector=trinton.select_leaves_by_index([0, -1]),
        style="solid-line-with-arrow",
        padding=13,
        tweaks=None,
        right_padding=1.5,
        direction=None,
        full_string=True,
        command="Three",
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 12)),
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
                tempo_change="rit.",
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
        padding=13.5,
        tweaks=None,
        right_padding=4.5,
        direction=None,
        full_string=True,
        command="Three",
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
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
                hspace=-3.5,
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
    lambda _: trinton.select_target(_, (1, 2)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override TimeSignature.stencil = #(trinton-blank-time-signature)",
                ],
                site="before",
            ),
        ],
        selector=abjad.select.leaves,
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/10)",
                ],
                site="before",
            ),
            # abjad.LilyPondLiteral(
            #     [
            #         r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/30)",
            #     ],
            #     site="absolute_after",
            # ),
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\set Score.proportionalNotationDuration = #(ly:make-moment 1/70)",
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
    lambda _: trinton.select_target(_, (19,)),
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

for measure in [
    1,
    6,
    14,
]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noPageBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [10, 17, 19]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\pageBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [2, 3, 4, 5, 7, 8, 9, 11, 12, 13, 15, 16]:
    trinton.make_music(
        lambda _: trinton.select_target(_, (measure,)),
        trinton.attachment_command(
            attachments=[abjad.LilyPondLiteral(r"\noBreak", site="absolute_after")],
            selector=trinton.select_leaves_by_index([0]),
            tag=abjad.Tag("+SCORE"),
        ),
        voice=score["Global Context"],
    )

for measure in [1, 6, 10, 14]:
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (1.5 10)))",
                site="absolute_before",
            ),
            abjad.LilyPondLiteral(
                r"\override BarNumber.Y-offset = 4",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (2,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (1.5 26)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 20)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 22 20)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (4 28 20)))",
                site="absolute_before",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        tag=abjad.Tag("+SCORE"),
    ),
    voice=score["Global Context"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (18,)),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (0 15 35 18)))",
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
    segment_path="/Users/trintonprater/scores/polyxena/polyxena/sections/03",
    build_path="/Users/trintonprater/scores/polyxena/polyxena/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/polyxena/polyxena/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
