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

tempi_root = [48, 63, 84, 112]

tempi_sequence = []

for _ in library.tetrahedron_corners_list:
    tempi_sequence.append(tempi_root[_])

tempi_sequence = trinton.remove_adjacent(tempi_sequence)

tempi_sequence = abjad.select.partition_by_counts(
    tempi_sequence,
    [2],
    cyclic=True,
    overhang=True,
)

tempo_transitions = [
    "every measure",
    "halfway through section",
    "incisionally at midpoint",
    "as accelerando/ritardando",
]

tempo_transition_sequence = []

for _ in trinton.rotated_sequence(library.retrograded_tetrahedron_corners_list, 3):
    tempo_transition_sequence.append(tempo_transitions[_])

for _ in range(0, 9):
    section_number = _ + 1
    print("")
    print(
        f"Section {section_number}'s tempi are {tempi_sequence[_][0]} and {tempi_sequence[_][-1]}."
    )
    print(f"The tempo changes {tempo_transition_sequence[_]}.")
    print("")

# print(tempi_sequence)
