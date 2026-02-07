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
from polyxena import rhythm

# moments

moment_amount_sequence = [3, 4, 5, 6, 7, 3, 5, 6, 7, 4, 3, 6, 7, 4, 5, 3, 4, 7, 6, 5]

retrograded_moment_amount_sequence = moment_amount_sequence[::-1]

transition_types = ["microformal", "oppositional", "incised", "evolutional"]

transition_type_sequence = []

for _ in library.tetrahedron_corners_list:
    transition_type_sequence.append(transition_types[_])

retrograded_transition_type_sequence = transition_type_sequence[::-1]

for _ in range(0, 9):
    section_number = _ + 1
    gambe_moment_amount = moment_amount_sequence[_]
    theorbe_moment_amount = retrograded_moment_amount_sequence[_]

    print(f"In section {section_number}, the Gambe has {gambe_moment_amount} moments")

    for _ in range(0, gambe_moment_amount - 1):
        transition_number = _ + 1
        print(
            f"Transition {transition_number} between moments {1 + _} and {2 + _} is {transition_type_sequence[_]}"
        )

    print("")

    print(
        f"In section {section_number}, the Theorbe has {theorbe_moment_amount} moments"
    )

    for _ in range(0, theorbe_moment_amount - 1):
        transition_number = _ + 1
        print(
            f"Transition {transition_number} between moments {1 + _} and {2 + _} is {retrograded_transition_type_sequence[_]}"
        )

    print("_______________")
    print("")
