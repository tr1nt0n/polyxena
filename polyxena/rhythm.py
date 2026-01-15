import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
import random
from polyxena import library
from polyxena import pitch


def rhythm_a(stage, index, later_material=False):
    def rhythm(time_signatures):
        pitch_groups = trinton.rotated_sequence(
            pitch.final_pitch_groups, index % len(pitch.final_pitch_groups)
        )
        container = abjad.Container()
        if stage == 1:
            talea_counts = []
            for group in pitch_groups:
                if later_material is True:
                    talea_counts.append(len(group))
                else:
                    talea_counts.append(1)
                    rest_amount = len(group)
                    rest_amount = rest_amount - 1
                    rest_amount = rest_amount * -1
                    talea_counts.append(rest_amount)

            rhythms = rmakers.talea(time_signatures, talea_counts, 16)
            container.extend(rhythms)

        if stage == 2:
            talea_counts = []
            for i, group in enumerate(pitch_groups):
                if later_material is True:
                    if i % 2 == 0:
                        run_length = len(group)
                        run_length = run_length - 1
                        for _ in range(0, run_length):
                            talea_counts.append(1)
                    else:
                        long_note = len(group)
                        long_note = long_note + 1
                        talea_counts.append(long_note)
                else:
                    if i % 2 == 1:
                        rest_amount = len(group)
                        rest_amount = rest_amount * -1
                        talea_counts.append(rest_amount)
                    else:
                        run_length = len(group)
                        for _ in range(0, run_length):
                            talea_counts.append(1)

            rhythms = rmakers.talea(time_signatures, talea_counts, 16)
            container.extend(rhythms)

        rmakers.rewrite_dots(abjad.select.tuplets(container))
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)
        treat_tuplets = trinton.treat_tuplets()
        treat_tuplets(container)

        if stage == 1:
            pitch_list = [_[0] for _ in pitch_groups]
        if stage == 2:
            pitch_list = []

            for i, group in enumerate(pitch_groups):
                if i % 2 == 1:
                    pass
                else:
                    for click_pitch in group:
                        pitch_list.append(click_pitch)
        if stage == 3:
            pitch_list = abjad.sequence.flatten(pitch_groups)
        pitch_handler = evans.PitchHandler(pitch_list=pitch_list)
        pitch_handler(container)
        rhythm_selections = abjad.mutate.eject_contents(container)
        return rhythm_selections

    return rhythm


def rhythm_b(index=0):
    def rhythm(time_signatures):
        talea_numerators = abjad.sequence.flatten(pitch.final_pitch_groups)
        new_numerators = []
        for i, numerator in enumerate(talea_numerators):
            if i % 2 == 1:
                numerator = numerator * -1
            new_numerators.append(numerator)

        talea_numerators = trinton.rotated_sequence(
            new_numerators, index % len(talea_numerators)
        )

        container = abjad.Container()
        rhythms = rmakers.talea(time_signatures, talea_numerators, 16)
        container.extend(rhythms)

        rmakers.rewrite_dots(abjad.select.tuplets(container))
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)
        treat_tuplets = trinton.treat_tuplets()
        treat_tuplets(container)
        rhythm_selections = abjad.mutate.eject_contents(container)

        return rhythm_selections

    return rhythm
