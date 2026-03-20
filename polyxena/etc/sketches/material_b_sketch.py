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
    evans.RhythmHandler(
        rhythm.weighted_talea(
            start_index=0,
            prolations=[1, 3, 6, 7, 8],
            elaboration_level=4,
            retrograde=False,
        )
    ),
    trinton.rewrite_meter_command(boundary_depth=-1),
    pitch.strange_bariolage_pitching(index=1, instrument="gambe"),
    library.articulate_bariolage(index=1),
    trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
    library.change_staff_type(
        selector=trinton.select_leaves_by_index([0]),
        staff_type="stringing gambe",
        auto_reversion=False,
    ),
    voice=score["cello 1 voice"],
    beam_meter=True,
)

# theorbe music

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
    segment_name="_material_b_sketch",
    includes=[
        "/Users/trintonprater/scores/polyxena/polyxena/build/section-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)
