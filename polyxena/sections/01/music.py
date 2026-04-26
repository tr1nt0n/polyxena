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
        string=r"""\markup { "scr." }""",
        selector=trinton.select_leaves_by_index([0, 3], pitched=True),
        padding=8.5,
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
        padding=8.5,
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
        string=r"""\markup { "t." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=6,
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
    library.articulate_bariolage(index=0),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["b'"], selector=trinton.select_leaves_by_index([-1], pitched=True)
    ),
    trinton.detach_command(
        detachments=[abjad.StopSlur],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.StopSlur()],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Glissando(zero_padding=True)],
        selector=trinton.select_leaves_by_index([-1], pitched=True, grace=False),
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="stringing gambe",
        auto_reversion=False,
    ),
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
    trinton.attachment_command(
        attachments=[abjad.Articulation("punta-to-talon")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
        direction=abjad.UP,
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "xp." }""",
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        padding=8.5,
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

rhythm.make_multi_gliss(
    score=score,
    voice_name="cello 2 voice",
    measures=(2,),
    pitch_lists=[
        ["f'", "a'", "d'", "f'"],
        ["cf'", "d'", "b", "d'", "b", "d'", "b", "d'", "b"],
        ["af", "e", "g", "e", "g", "e", "g", "e"],
        ["ef", "c", "e", "c", "e"],
    ],
    preprocessor=None,
    finger_percussion_padding=14,
    extra_voice="sub 1",
    notehead="half-harmonic",
)

rhythm.make_multi_gliss(
    score=score,
    voice_name="cello 2 voice",
    measures=(3,),
    pitch_lists=[
        ["cf'", "d'", "b", "d'", "b", "d'", "b", "d'", "b"],
        ["af", "e", "g", "e", "g", "e", "g", "e"],
        ["ef", "c", "e", "c", "e"],
        ["a,", "c", "a,", "c"],
    ],
    preprocessor=trinton.fuse_quarters_preprocessor((1, 2)),
    finger_percussion_voice_index=3,
    extra_voice="sub 2",
    finger_percussion_padding=12,
    notehead="half-harmonic",
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    # trinton.annotate_leaves_locally(selector=trinton.logical_ties(first=True, pitched=True)),
    trinton.spanner_command(
        strings=["norm.", "fl.", "1/2 scr.", "norm.", "2/3 scr.", "norm."],
        selector=trinton.select_logical_ties_by_index(
            [0, 5, 5, 8, 8, 11, 11, 14, 14, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=17,
        right_padding=0,
        direction=None,
        full_string=False,
        command="Three",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    trinton.linear_attachment_command(
        attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--"), abjad.StopHairpin()],
        selector=trinton.select_leaves_by_index([0, 0, -1], pitched=True),
    ),
    voice=score["cello 2 voice gliss 1 sub 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.spanner_command(
        strings=["xp.", "mst.", "p.", "ob."],
        selector=trinton.select_logical_ties_by_index(
            [0, 3, 3, 5, 5, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=14.5,
        right_padding=0,
        direction=None,
        full_string=False,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    voice=score["cello 2 voice gliss 3 sub 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([0, 3, 4, -1], pitched=True),
        direction=abjad.DOWN,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #3", site="before"
            ),
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.padding = #2", site="before"
            ),
        ],
        selector=trinton.select_tuplets_by_index([0, 1]),
    ),
    trinton.force_accidentals_command(selector=trinton.select_leaves_by_index([0])),
    voice=score["cello 2 voice gliss 4 sub 2"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.talea([1], 8)),
    evans.PitchHandler([["c'", "a", "f", "d"]]),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="stringing gambe",
        auto_reversion=False,
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("p"),
            abjad.StartHairpin("|>o"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
            abjad.StartHairpin("--"),
            abjad.StopHairpin(),
        ],
        selector=trinton.select_leaves_by_index([0, 0, 1, 1, 2, 2, -1]),
    ),
    trinton.spanner_command(
        strings=["ob.", "dp."],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=12,
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
        strings=["norm.", "scr."],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, -1], pitched=True, first=True
        ),
        style="solid-line-with-arrow",
        padding=14.5,
        right_padding=0,
        direction=None,
        full_string=False,
        end_hook=True,
        end_hook_right_padding=0,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
        ],
    ),
    library.pressure_trills(
        padding=0.5,
        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
        head="harmonic-open",
    ),
    voice=score["cello 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(
        rhythm.weighted_talea(
            start_index=0, prolations=[7, 3, 1], elaboration_level=0, retrograde=False
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.pitch_with_selector_command(
        pitch_list=[
            ["c'", "a", "f", "d"],
            ["g'", "e'", "c'", "a"],
            ["e'", "c'", "a", "f"],
        ],
        selector=trinton.select_logical_ties_by_index(
            [1, 2, 3], pitched=True, grace=False
        ),
    ),
    trinton.pitch_with_selector_command(
        pitch_list=[["a", "d"], ["bf,", "c"], ["c", "a,"], ["c,", "d,"]],
        selector=trinton.select_logical_ties_by_index(
            [4, 5, 6, 7], pitched=True, grace=False
        ),
    ),
    trinton.duration_line(
        selector=trinton.select_logical_ties_by_index([0], pitched=True, grace=False),
    ),
    library.multiple_muting(
        selector=trinton.select_logical_ties_by_index(
            [4, 5, 6], pitched=True, grace=False
        ),
        closed_fundamental=False,
    ),
    library.multiple_muting(
        selector=trinton.select_logical_ties_by_index([7], pitched=True, grace=False),
        closed_fundamental=True,
    ),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.change_lines(
        lines=1,
        clef="percussion",
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
        invisible_barlines=False,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\revert Staff.Clef.stencil",
                    r"\override Staff.Clef.stencil = ##f",
                    r"\revert Staff.StaffSymbol.line-positions",
                    r"\revert Staff.BarLine.bar-extent",
                    r"\revert Staff.Accidental.stencil",
                    r"\revert Staff.NoteHead.no-ledgers",
                ],
                site="before",
            )
        ],
        selector=trinton.select_leaves_by_index([0], pitched=True, grace=False),
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([1], pitched=True, grace=False),
        staff_type="stringing gambe",
        auto_reversion=False,
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([4], pitched=True, grace=False),
        staff_type="reversion",
        auto_reversion=False,
        reversion_clef="bass",
        reversion_line_count=5,
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([1, 2, 6, 8], grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override TupletBracket.direction = #DOWN", site="before"
            )
        ],
        selector=abjad.select.tuplets,
    ),
    library.pressure_trills(
        head="cross",
        trill_pitch=None,
        padding=None,
        bound_details=(1.5, 1.5),
        right_padding=-0.5,
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
    ),
    library.pressure_trills(
        head="harmonic-open",
        trill_pitch=None,
        padding=None,
        bound_details=(6.5, 6.5),
        right_padding=0.5,
        selector=trinton.select_leaves_by_index([1, 4], pitched=True, grace=False),
    ),
    library.pressure_trills(
        head="harmonic",
        trill_pitch=["a", "ef"],
        padding=None,
        # bound_details=(6, 6),
        right_padding=-5,
        multimuting=True,
        selector=trinton.select_leaves_by_index([4, 5], pitched=True, grace=False),
    ),
    trinton.detach_command(
        detachments=[abjad.Tie],
        selector=trinton.select_leaves_by_index([4], pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override Slur.stencil = #flare-tie", site="before"
            )
        ],
        selector=trinton.select_leaves_by_index([4], pitched=True, grace=False),
    ),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartSlur(), abjad.StopSlur()]),
        selector=trinton.select_leaves_by_index([4, 5], pitched=True, grace=False),
    ),
    library.pressure_trills(
        head="harmonic",
        trill_pitch=["c", "af,"],
        padding=None,
        # bound_details=(6, 6),
        right_padding=0.5,
        multimuting=True,
        selector=trinton.select_leaves_by_index([6, 7], pitched=True, grace=False),
    ),
    library.pressure_trills(
        head="harmonic",
        trill_pitch=["a,", "ef,"],
        padding=None,
        # bound_details=(6, 6),
        right_padding=0.5,
        multimuting=True,
        closed_fundamental=False,
        selector=trinton.select_leaves_by_index([7, 8], pitched=True, grace=False),
    ),
    library.pressure_trills(
        head="harmonic",
        trill_pitch=["d,", "a,,"],
        padding=None,
        # bound_details=(6, 6),
        right_padding=0.5,
        multimuting=True,
        closed_fundamental=True,
        selector=trinton.select_leaves_by_index([8, 8], pitched=True, grace=False),
    ),
    trinton.spanner_command(
        strings=["tailpiece", ""],
        selector=trinton.select_logical_ties_by_index(
            [0, 1], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        # padding=16.5,
        right_padding=0,
        direction=None,
        full_string=False,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #-2""",
            r"""- \tweak bound-details.right.Y #6""",
        ],
    ),
    trinton.spanner_command(
        strings=["dp.", ""],
        selector=trinton.select_logical_ties_by_index(
            [1, 4], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        # padding=16.5,
        right_padding=0,
        direction=None,
        full_string=False,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #6""",
            r"""- \tweak bound-details.right.Y #0""",
        ],
    ),
    trinton.spanner_command(
        strings=["msp.", "t."],
        selector=trinton.select_logical_ties_by_index(
            [4, -1], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        # padding=16.5,
        right_padding=0,
        direction=None,
        full_string=False,
        command="One",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #0""",
            r"""- \tweak bound-details.right.Y #2.5""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"scr.",
        selector=trinton.select_logical_ties_by_index(
            [1, 6], pitched=True, first=True, grace=False
        ),
        # padding=0,
        direction=None,
        right_padding=-0.75,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Two",
        tag=None,
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #8.5""",
            r"""- \tweak bound-details.right.Y #4""",
        ],
    ),
    trinton.spanner_command(
        strings=["", ""],
        selector=trinton.select_logical_ties_by_index(
            [6, 7], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        # padding=16.5,
        right_padding=0,
        direction=None,
        full_string=False,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #3.75""",
            r"""- \tweak bound-details.right.Y #3""",
        ],
    ),
    trinton.spanner_command(
        strings=["norm.", "1/2 scr."],
        selector=trinton.select_logical_ties_by_index(
            [7, 8], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        # padding=16.5,
        right_padding=0,
        direction=None,
        full_string=False,
        command="Two",
        tweaks=[
            r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #3""",
            r"""- \tweak bound-details.right.Y #4.5""",
        ],
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic('"ff"'),
            abjad.StartHairpin(">"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 0, 1, 2, 3], first=True, pitched=True, grace=False
        ),
    ),
    voice=score["cello 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 7)),
    trinton.hooked_spanner_command(
        string=r"IV",
        selector=trinton.select_leaves_by_index([4, 5], pitched=True, grace=False),
        # padding=0,
        direction=None,
        right_padding=2,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Three",
        tag=None,
        tweaks=[
            # r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #2.5""",
            r"""- \tweak bound-details.right.Y #3""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"V",
        selector=trinton.select_leaves_by_index([6, 7], pitched=True, grace=False),
        padding=12,
        direction=None,
        right_padding=-1,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Three",
        tag=None,
        tweaks=[
            # r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            # r"""- \tweak bound-details.left.Y #2.5""",
            # r"""- \tweak bound-details.right.Y #3""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"VI",
        selector=trinton.select_leaves_by_index([7, 8], pitched=True, grace=False),
        # padding=12,
        direction=None,
        right_padding=-1,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Three",
        tag=None,
        tweaks=[
            # r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            r"""- \tweak bound-details.left.Y #5""",
            r"""- \tweak bound-details.right.Y #6.5""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"VII",
        selector=trinton.select_leaves_by_index([8, 9], grace=False),
        padding=14,
        # direction=None,
        right_padding=12,
        full_string=False,
        style="dashed-line-with-hook",
        hspace=None,
        command="Three",
        tag=None,
        tweaks=[
            # r"""- \tweak font-name "Bodoni72 Book Italic" """,
            r"""- \tweak font-size 2""",
            # r"""- \tweak bound-details.left.Y #5""",
            # r"""- \tweak bound-details.right.Y #6.5""",
        ],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.StopTrillSpan(),
            abjad.LilyPondLiteral(
                r"#(define afterGraceFraction (cons 15 16))", site="before"
            ),
        ],
        selector=trinton.select_leaves_by_index([-1]),
    ),
    voice=score["cello 2 voice"],
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
        strings=[
            library.fingering_markup(fingering="p - c"),
            library.fingering_markup(fingering="i - a"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=10.5,
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
        strings=["p.", "xp."],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=14.5,
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
        padding=17,
        direction=None,
        right_padding=33,
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

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.tuplet([(-1,), (1, 1, 1, 1, 1, 1, 1), (-1,)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler([["f,", "d,"]]),
    rhythm.continuous_beam(selector=abjad.select.leaves),
    trinton.attachment_command(
        attachments=[
            abjad.BeamCount(left=5, right=1),
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
    ),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True, grace=False),
    ),
    trinton.attachment_command(
        attachments=[abjad.Dynamic("fff")],
        selector=trinton.select_leaves_by_index([0], pitched=True),
    ),
    voice=score["guitar 1 voice"],
    preprocessor=trinton.fuse_sixteenths_preprocessor((6, 1, 5)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (3,)),
    evans.RhythmHandler(evans.talea([-6, 1, -100], 16)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    rhythm.continuous_beam(selector=abjad.select.leaves),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        slash=True,
    ),
    evans.PitchHandler([["a", "c"], ["b", "d"]]),
    trinton.invisible_accidentals_command(selector=trinton.pleaves()),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\once \override NoteHead.no-ledgers = ##t", site="before"
            ),
        ],
        selector=trinton.pleaves(),
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0], pitched=True),
        staff_type="twisting",
        auto_reversion=False,
        reversion_line_count=5,
        reversion_clef=None,
        force_clef=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.pleaves(),
        zero_padding=True,
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                r"\set glissandoMap = #'((0 . 1) (1 . 0))",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\unset glissandoMap",
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0], -1),
    ),
    library.stringing_noteheads(
        notehead_list=[["XIV", "XIII"], ["XIII", "XIV"]],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    # trinton.spanner_command(
    #     strings=[r"\half-harmonic", r"\full-pressure"],
    #     selector=trinton.select_logical_ties_by_index(
    #         [0, -1], pitched=True, first=True
    #     ),
    #     style="solid-line-with-arrow",
    #     padding=10.5,
    #     right_padding=0,
    #     direction=None,
    #     full_string=True,
    #     command="One",
    #     tweaks=[
    #         r"""- \tweak font-size 10""",
    #     ],
    # ),
    voice=score["guitar 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(evans.tuplet([(1, 1, 1, 1, 1, 1, 1)])),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler([["a,", "f,", "d,"]]),
    trinton.tremolo_command(),
    trinton.attachment_command(
        attachments=[abjad.Articulation(">")],
        selector=trinton.logical_ties(first=True, pitched=True),
    ),
    abjad.slur,
    trinton.linear_attachment_command(
        attachments=[
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("|>o"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("--"),
            abjad.StartHairpin(">o"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            abjad.Dynamic("pp"),
            abjad.StartHairpin("<"),
            abjad.Dynamic("p"),
        ],
        selector=trinton.select_leaves_by_index(
            [0, 0, 1, 1, 2, 2, 3, 4, 4, 5, 5, 6], pitched=True
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
        strings=["p.", "xt."],
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
        string=r"""\markup { "( rasg. )" }""",
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
    voice=score["guitar 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    evans.RhythmHandler(
        rhythm.prolated_talea(
            index=0,
            denominator=32,
            prolations=[(7, 4), (3, 2)],
            elaboration_level=0,
            retrograde=False,
            parse_meter=False,
        )
    ),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            rhythm.prolated_talea(
                index=0,
                denominator=32,
                prolations=[(3, 2), (7, 8)],
                elaboration_level=0,
                retrograde=True,
                parse_meter=False,
            )
        ),
        direction=abjad.DOWN,
        voice_name="XIV voice",
        temp_name="XIII",
        preprocessor=trinton.fuse_eighths_preprocessor((1, 2)),
    ),
    voice=score["guitar 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((2, 1)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            rhythm.prolated_talea(
                index=36,
                denominator=32,
                prolations=[(3, 1)],
                elaboration_level=0,
                retrograde=True,
                parse_meter=False,
            )
        ),
        direction=abjad.UP,
        voice_name="XII voice",
        temp_name="",
    ),
    voice=score["guitar 2 voice"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.rewrite_meter_command(boundary_depth=-2),
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
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=2, right=1),
            abjad.BeamCount(left=1, right=3),
        ],
        selector=trinton.select_leaves_by_index([1, 2]),
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
        selector=trinton.select_logical_ties_by_index([1, 2], first=True, pitched=True),
        padding=11,
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
        selector=trinton.select_logical_ties_by_index([0, 1], first=True, pitched=True),
        padding=11,
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
        selector=trinton.select_leaves_by_index([4, 5], pitched=True),
        padding=11,
        direction=None,
        right_padding=8,
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
        selector=trinton.select_logical_ties_by_index([2, 3], first=True, pitched=True),
        padding=11,
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
    voice=score["XII voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False)
    ),
    evans.PitchHandler(["c'", "e"]),
    trinton.pitch_with_selector_command(
        pitch_list=["a", "b"], selector=trinton.select_logical_ties_by_index([0, -1])
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
    trinton.transparent_noteheads(
        selector=trinton.select_logical_ties_by_index(
            [-3, -2, -1], first=True, pitched=True, grace=False
        )
    ),
    voice=score["guitar 2 voice XIII"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (4,)),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False)
    ),
    evans.PitchHandler(["e", "c'"]),
    trinton.pitch_with_selector_command(
        pitch_list=["d"], selector=trinton.select_logical_ties_by_index([0, -1])
    ),
    trinton.noteheads_only(),
    trinton.invisible_tuplet_brackets(),
    library.stringing_noteheads(
        notehead_list=itertools.cycle(["XIV"]),
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
    trinton.transparent_noteheads(
        selector=trinton.select_logical_ties_by_index(
            [-2, -1], first=True, pitched=True, grace=False
        )
    ),
    voice=score["XIV voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5, 6)),
    evans.RhythmHandler(evans.talea([11, 13, 12], 32)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    evans.PitchHandler(
        [["b''", "g''", "e''", "c''", "a'"], ["e", "g"], ["a,", "f,", "d,"]]
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
                r"\set glissandoMap = #'((1 . 2) (0 . 1))",
                site="before",
            ),
            abjad.LilyPondLiteral(
                r"\unset glissandoMap",
                site="absolute_after",
            ),
        ],
        selector=trinton.select_leaves_by_index([0, 2, -1]),
    ),
    trinton.spanner_command(
        strings=[
            library.fingering_markup(fingering="p - c"),
            library.fingering_markup(fingering="i - m"),
            library.fingering_markup(fingering="p - c"),
        ],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, 2], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=11,
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
        strings=["xp.", "xt."],
        selector=trinton.select_logical_ties_by_index(
            [0, -1], pitched=True, first=True, grace=False
        ),
        style="solid-line-with-arrow",
        padding=15,
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
        padding=17.5,
        direction=None,
        right_padding=43,
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
    trinton.linear_attachment_command(
        attachments=[abjad.StartHairpin("o<"), abjad.Dynamic("p")],
        selector=trinton.select_leaves_by_index([0, -1], pitched=True, grace=False),
    ),
    voice=score["guitar 1 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (5,)),
    evans.RhythmHandler(rhythm.shuffled_gesture(index=6, stage=2, instrument="gambe")),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.linear_attachment_command(
        attachments=itertools.cycle([abjad.StartBeam(), abjad.StopBeam()]),
        selector=trinton.select_leaves_by_index([0, -1]),
    ),
    trinton.linear_attachment_command(
        attachments=[
            abjad.BeamCount(left=3, right=1),
            abjad.BeamCount(left=1, right=2),
        ],
        selector=trinton.select_leaves_by_index([3, 4]),
    ),
    trinton.aftergrace_command(
        selector=trinton.select_logical_ties_by_index([-1], pitched=True, grace=False),
        invisible=True,
    ),
    trinton.pitch_with_selector_command(
        pitch_list=["g"], selector=trinton.pleaves(grace=True)
    ),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="tablature",
        auto_reversion=False,
    ),
    trinton.attachment_command(
        attachments=[
            abjad.LilyPondLiteral(
                [
                    r"\once \override Staff.Clef.extra-offset = #'(2.5 . 0)",
                    r"\unset glissandoMap",
                ],
                site="absolute_before",
            )
        ],
        selector=trinton.select_leaves_by_index([0]),
    ),
    trinton.change_notehead_command(
        notehead="harmonic",
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2], first=True, pitched=True
        ),
    ),
    trinton.attachment_command(
        attachments=[abjad.LilyPondLiteral(r"\big-half-harmonic", site="before")],
        selector=trinton.select_logical_ties_by_index([3, 4], first=True, pitched=True),
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 2], pitched=True, grace=False
        ),
        zero_padding=True,
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index(
            [2, 3], pitched=True, grace=False
        ),
        zero_padding=True,
        tweaks=[
            abjad.Tweak(r"- \tweak thickness #1.5"),
            abjad.Tweak(r"- \tweak bound-details.right.arrow ##t"),
        ],
    ),
    trinton.continuous_glissando(
        selector=trinton.select_logical_ties_by_index([3, 4, 5], pitched=True),
        zero_padding=True,
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { "( touching all strings affected by RH )" }""",
        selector=trinton.select_logical_ties_by_index(
            [0, -1], first=True, pitched=True
        ),
        padding=10,
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
    voice=score["guitar 2 voice"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    evans.RhythmHandler(
        rhythm.prolated_talea(
            index=7,
            denominator=32,
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
    ),
    voice=score["guitar 2 voice"],
    preprocessor=trinton.fuse_eighths_preprocessor((1, 2)),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    trinton.IntermittentVoiceHandler(
        evans.RhythmHandler(
            rhythm.prolated_talea(
                index=36,
                denominator=32,
                prolations=[(3, 1)],
                elaboration_level=0,
                retrograde=True,
                parse_meter=False,
            )
        ),
        direction=abjad.UP,
        voice_name="XII voice sub 1",
        temp_name="",
    ),
    voice=score["guitar 2 voice"],
)


trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    # trinton.rewrite_meter_command(boundary_depth=-2),
    rmakers.rewrite_dots,
    trinton.respell_tuplets_command(rewrite_brackets=False),
    evans.PitchHandler(["c"]),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(abjad.Tie(), r"- \tweak transparent ##t"),
        ],
        selector=trinton.logical_ties(
            exclude=[-2, -1], last=True, pitched=True, grace=False
        ),
    ),
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
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    trinton.hooked_spanner_command(
        string=r"""\markup { \override #'(font-name . "ekmelos") { \char ##xe7fa } }""",
        selector=trinton.select_leaves_by_index([0, 1], pitched=True),
        padding=15,
        direction="down",
        right_padding=-1.5,
        full_string=True,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-size 4""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { \override #'(font-name . "ekmelos") { \char ##xe614 } }""",
        selector=trinton.select_leaves_by_index([1, 2], pitched=True),
        padding=14.5,
        direction="down",
        right_padding=-1.5,
        full_string=True,
        style="dashed-line-with-up-hook",
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
        padding=15,
        direction="down",
        right_padding=-1.5,
        full_string=True,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-size 4""",
        ],
    ),
    trinton.hooked_spanner_command(
        string=r"""\markup { \override #'(font-name . "ekmelos") { \char ##xe614 } }""",
        selector=trinton.select_leaves_by_index([3, 4], pitched=True),
        padding=14.5,
        direction="down",
        right_padding=-1.5,
        full_string=True,
        style="dashed-line-with-up-hook",
        hspace=None,
        command="One",
        tag=None,
        tweaks=[
            r"""- \tweak font-size 8""",
        ],
    ),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup { \override #'(font-name . "ekmelos") { \char ##xe7fa } }""",
                ),
                r"- \tweak font-size 4",
            )
        ],
        selector=trinton.select_leaves_by_index([-1], pitched=True),
        direction=abjad.DOWN,
    ),
    voice=score["XIV voice sub 1"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="twisting",
        auto_reversion=False,
        reversion_line_count=5,
        reversion_clef=None,
        force_clef=True,
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
    voice=score["guitar 2 voice XIII sub 1"],
)

trinton.make_music(
    lambda _: trinton.select_target(_, (6,)),
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
    lambda _: trinton.select_target(_, (7,)),
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

# final barline

# trinton.make_music(
#     lambda _: trinton.select_target(_, (7,)),
#     trinton.attachment_command(
#         attachments=[
#             abjad.BarLine("||", site="after"),
#         ],
#         selector=trinton.select_leaves_by_index([-1]),
#     ),
#     voice=score["Global Context"],
# )

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
    padding=-3,
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
#     lambda _: trinton.select_target(_, (3, 4)),
#     trinton.spanner_command(
#         strings=[
#             trinton.tempo_markup(
#                 note_value=8,
#                 tempo=112,
#                 padding=0,
#                 note_head_fontsize=0.5,
#                 stem_length=2,
#                 text_fontsize=8,
#                 dotted=False,
#                 fraction=None,
#                 tempo_change="accel.",
#                 site="after",
#                 hspace=0,
#                 string_only=True,
#             ),
#             trinton.tempo_markup(
#                 note_value=8,
#                 tempo=112,
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
#         selector=trinton.select_leaves_by_index([0, -1]),
#         style="solid-line-with-arrow",
#         padding=13,
#         tweaks=None,
#         right_padding=2,
#         direction=None,
#         full_string=True,
#         command="Three",
#     ),
#     voice=score["Global Context"],
# )

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

# after signature change tempo

# trinton.make_music(
#     lambda _: trinton.select_target(_, (6,)),
#     trinton.attachment_command(
#         attachments=[
#             trinton.tempo_markup(
#                 note_value=8,
#                 tempo=48,
#                 padding=9,
#                 note_head_fontsize=0.5,
#                 stem_length=2,
#                 text_fontsize=8,
#                 dotted=False,
#                 fraction=None,
#                 tempo_change=None,
#                 site="after",
#                 hspace=-3.5,
#                 string_only=False,
#             ),
#         ],
#         selector=trinton.select_leaves_by_index([0]),
#         direction=abjad.UP,
#         # tag=abjad.Tag("+SCORE"),
#     ),
#     voice=score["Global Context"],
# )

# barlines

trinton.make_music(
    lambda _: trinton.select_target(_, (7,)),
    trinton.attachment_command(
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (1 30 33 26.5)))",
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
                r"\once \override Score.NonMusicalPaperColumn.line-break-system-details = #'((alignment-distances . (8 38 28)))",
                site="absolute_before",
            ),
            abjad.bundle(
                abjad.Markup(r"\markup { S }"),
                r"- \tweak transparent ##t",
                r"- \tweak padding #23",
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
    segment_path="/Users/trintonprater/scores/polyxena/polyxena/sections/01",
    build_path="/Users/trintonprater/scores/polyxena/polyxena/build",
    segment_name="01",
    includes=[
        "/Users/trintonprater/scores/polyxena/polyxena/build/polyxena-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
