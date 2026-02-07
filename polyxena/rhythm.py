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
