import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
import math
import random
from sympy import combinatorics
from polyxena import library


# rhythm development

prolation_corners = trinton.rotated_sequence(library.tetrahedron_corners_list, 0)
denominator_corners = trinton.rotated_sequence(
    library.retrograded_tetrahedron_corners_list, 1
)
elaboration_corners = trinton.rotated_sequence(library.tetrahedron_corners_list, 2)
tremolo_corners = trinton.rotated_sequence(
    library.retrograded_tetrahedron_corners_list, 3
)
accent_density_corners = trinton.rotated_sequence(library.tetrahedron_corners_list, 4)

prolations = [(1, 2), (1, 1), (3, 2), (7, 4)]
denominators = [4, 8, 16, 32]
elaborations = [
    "no elaborations",
    "an elaboration on the smallest durations",
    "an elaboration on the smallest and second smallest durations",
    "an elaboration on all but the highest durations",
]
tremoli = [
    "no tremoli",
    "tremoli on the smallest durations",
    "tremoli on the smallest and second smallest durations",
    "tremoli on every tie",
]
accent_densities = [
    "no accents",
    "accents on the smallest durations",
    "accents on the smallest and second smallest durations",
    "accents on all but the longest duration",
]

prolation_sequence = []
denominator_sequence = []
elaboration_sequence = []
tremolo_sequence = []
accent_density_sequence = []

for (
    prolation_index,
    denominator_index,
    elaboration_index,
    tremolo_index,
    accent_density_index,
) in zip(
    prolation_corners,
    denominator_corners,
    elaboration_corners,
    tremolo_corners,
    accent_density_corners,
):
    prolation_sequence.append(prolations[prolation_index])
    denominator_sequence.append(denominators[denominator_index])
    elaboration_sequence.append(elaborations[elaboration_index])
    tremolo_sequence.append(tremoli[tremolo_index])
    accent_density_sequence.append(accent_densities[accent_density_index])

# talea sequence

root = [4, 6, 7, 3, 1, 1, 2]

numerator_sequence = []

for i, index in enumerate(library.tetrahedron_corners_list):
    if i % 2 == 1:
        numerators = root[3:]
    else:
        numerators = root[:-3]

    numerator = numerators[index]
    numerator_sequence.append(numerator)


def main_talea(index, denominator, prolations, elaboration_level=0):
    def return_rhythms(time_signatures):
        if len(prolations) > 2:
            raise Exception("Length of prolations must be 1 or 2.")

        durations = []

        for i, time_signature in enumerate(time_signatures):
            time_signature_numerator = time_signature.numerator
            time_signature_denominator = time_signature.denominator
            if time_signature_numerator == 3:
                if i % 2 == 0:
                    first_denominator = time_signature_denominator
                    second_denominator = time_signature_denominator / 2
                else:
                    first_denominator = time_signature_denominator / 2
                    second_denominator = time_signature_denominator

                duration_1 = abjad.Duration((1, first_denominator))
                duration_2 = abjad.Duration((1, second_denominator))
                durations.append(duration_1)
                durations.append(duration_2)

            if time_signature_numerator == 6:
                half_duration = time_signature.duration / 2

                durations.append(half_duration)
                durations.append(half_duration)

            if time_signature_numerator == 7:
                if i % 2 == 0:
                    first_duration = abjad.Duration((3, time_signature_denominator))
                    second_duration = abjad.Duration((4, time_signature_denominator))
                else:
                    first_duration = abjad.Duration((4, time_signature_denominator))
                    second_duration = abjad.Duration((3, time_signature_denominator))

                durations.append(first_duration)
                durations.append(second_duration)

            if time_signature_numerator == 8:
                if i % 2 == 0:
                    first_duration = abjad.Duration((3, time_signature_denominator))
                    second_duration = abjad.Duration((2, time_signature_denominator))
                    third_duration = abjad.Duration((3, time_signature_denominator))
                else:
                    first_duration = abjad.Duration((3, time_signature_denominator))
                    second_duration = abjad.Duration((3, time_signature_denominator))
                    third_duration = abjad.Duration((2, time_signature_denominator))

                durations.append(first_duration)
                durations.append(second_duration)
                durations.append(third_duration)

        extra_counts = []

        for i, duration in enumerate(durations):
            duration_numerator = duration.numerator
            duration_denominator = duration.denominator
            if i % 2 == 0:
                relevant_prolation = prolations[0]
            else:
                relevant_prolation = prolations[-1]

            target_prolation = abjad.Duration(
                (relevant_prolation[0], duration_denominator * relevant_prolation[-1])
            )
            difference = target_prolation - duration
            difference = difference.numerator
            numerator_multiplier = denominator / target_prolation.denominator
            numerator_multiplier = int(numerator_multiplier)
            extra_count = difference * numerator_multiplier
            extra_counts.append(extra_count)

        container = abjad.Container()

        talea_numerators = trinton.rotated_sequence(
            numerator_sequence, index % len(numerator_sequence)
        )

        rhythm_selections = rmakers.talea(
            durations,
            talea_numerators,
            denominator=denominator,
            extra_counts=extra_counts,
        )
        container.extend(rhythm_selections)
        rmakers.rewrite_dots(abjad.select.tuplets(container))
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)

        # put elaboration section here

        treat_tuplets = trinton.treat_tuplets()
        treat_tuplets(container)
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)
        rhythm_selections = abjad.mutate.eject_contents(container)
        return rhythm_selections

    return return_rhythms
