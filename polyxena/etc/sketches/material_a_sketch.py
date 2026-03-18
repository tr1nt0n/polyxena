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

score = library.polyxena_score(ts.final_time_signature_list[2])

# gambe music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    evans.RhythmHandler(rhythm.shuffled_gesture(index=10, stage=2, instrument="gambe")),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # evans.PitchHandler(["g", "b''"]),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="tablature",
        auto_reversion=False,
    ),
    trinton.continuous_glissando(selector=trinton.pleaves(), zero_padding=True),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup \fontsize #7 { Unprolated shards }"""),
                r"- \tweak padding #13",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    # trinton.annotate_leaves_locally(
    #     selector=trinton.logical_ties(first=True, pitched=True)
    # ),
    trinton.spanner_command(
        strings=["\open-hand", "\closed-hand", "\open-hand", "\closed-hand"],
        selector=trinton.select_logical_ties_by_index(
            [0, 1, 1, 5], first=True, pitched=True
        ),
        style="solid-line-with-arrow",
        padding=9.5,
        tweaks=None,
        right_padding=None,
        direction=None,
        full_string=True,
        command="One",
        end_hook=False,
        end_hook_style="dashed-line-with-hook",
        end_hook_right_padding=1.5,
        tag=None,
    ),
    voice=score["cello 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 20)),
    evans.RhythmHandler(rhythm.shuffled_gesture(index=16, stage=1, instrument="gambe")),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.continuous_glissando(selector=trinton.pleaves(), zero_padding=True),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #7 { Shards prolated to measure groups }"""
                ),
                r"- \tweak padding #13",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["cello 2 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_preprocessor(
        (
            1,
            1,
            2,
            2,
            1,
            3,
            1,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (21, 38)),
    evans.RhythmHandler(rhythm.shuffled_gesture(index=22, stage=3, instrument="gambe")),
    # trinton.rewrite_meter_command(boundary_depth=-1),
    evans.RewriteMeterCommand(boundary_depth=-1),
    trinton.continuous_glissando(selector=trinton.pleaves(), zero_padding=True),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #7 { Shards prolated to beat groups }"""
                ),
                r"- \tweak padding #13",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["cello 2 voice"],
    beam_meter=True,
)

# theorbe music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    evans.RhythmHandler(
        rhythm.shuffled_gesture(index=0, stage=2, instrument="theorbe")
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    # evans.PitchHandler(["d,", "f,", "a,", "c", "e", "g", "b", "d'", "f'", "a'", "c''", "e''", "g''", "b''"]),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="stringing theorbe",
        auto_reversion=False,
    ),
    trinton.continuous_glissando(selector=trinton.pleaves(), zero_padding=True),
    voice=score["guitar 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 20)),
    evans.RhythmHandler(
        rhythm.shuffled_gesture(index=6, stage=1, instrument="theorbe")
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.continuous_glissando(selector=trinton.pleaves(), zero_padding=True),
    voice=score["guitar 2 voice"],
    beam_meter=True,
    preprocessor=trinton.fuse_preprocessor(
        (
            1,
            1,
            2,
            2,
            1,
            3,
            1,
        )
    ),
)

trinton.make_music(
    lambda _: trinton.select_target(_, (21, 38)),
    evans.RhythmHandler(
        rhythm.shuffled_gesture(index=12, stage=3, instrument="theorbe")
    ),
    # trinton.rewrite_meter_command(boundary_depth=-1),
    evans.RewriteMeterCommand(boundary_depth=-1),
    trinton.continuous_glissando(selector=trinton.pleaves(), zero_padding=True),
    voice=score["guitar 2 voice"],
    beam_meter=True,
)

# instrument names

library.write_instrument_names(score=score)

library.write_short_instrument_names(score=score)

# beautification

trinton.remove_redundant_time_signatures(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/polyxena/polyxena/etc/sketches",
    build_path="/Users/trintonprater/scores/polyxena/polyxena/build",
    segment_name="_material_a_sketch",
    includes=[
        "/Users/trintonprater/scores/polyxena/polyxena/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
