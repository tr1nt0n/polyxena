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

# music

trinton.make_music(
    lambda _: trinton.select_target(_, (1, 10)),
    evans.RhythmHandler(rhythm.shuffled_gesture(index=0, stage=2)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="rasgueado",
        auto_reversion=False,
    ),
    trinton.continuous_glissando(selector=trinton.pleaves(), zero_padding=True),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(r"""\markup \fontsize #7 { Unprolated shards }"""),
                r"- \tweak padding #7",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
    voice=score["guitar 2 voice"],
    beam_meter=True,
)

trinton.make_music(
    lambda _: trinton.select_target(_, (11, 20)),
    evans.RhythmHandler(rhythm.shuffled_gesture(index=6, stage=1)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.continuous_glissando(selector=trinton.pleaves(), zero_padding=True),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #7 { Shards prolated to measure groups }"""
                ),
                r"- \tweak padding #7",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
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
    evans.RhythmHandler(rhythm.shuffled_gesture(index=12, stage=3)),
    trinton.rewrite_meter_command(boundary_depth=-1),
    trinton.continuous_glissando(selector=trinton.pleaves(), zero_padding=True),
    trinton.attachment_command(
        attachments=[
            abjad.bundle(
                abjad.Markup(
                    r"""\markup \fontsize #7 { Shards prolated to beat groups }"""
                ),
                r"- \tweak padding #7",
            ),
        ],
        selector=trinton.select_leaves_by_index([0]),
        direction=abjad.UP,
    ),
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
