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

numerator_sequence = [3, 6, 7, 8]

denominator_sequence = [32, 16, 8, 4]

retrograde_corners = library.corners_list[::-1]

time_signatures = []

for num_index, denom_index in zip(library.corners_list, retrograde_corners):
    numerator = numerator_sequence[num_index]
    denominator = denominator_sequence[denom_index]

    time_signature = (numerator, denominator)
    time_signatures.append(time_signature)

final_time_signature_list = []


def write_section_time_signatures(section_amount, measure_amount_per_section):

    time_signature_change_frequency_root = [0, 7, 3, 1]

    time_signature_change_frequency = []

    for _ in trinton.rotated_sequence(library.corners_list, 0):
        time_signature_change_frequency.append(time_signature_change_frequency_root[_])

    time_signature_super_counter = 0
    time_signature_sub_counter = 0
    for _ in range(0, section_amount):
        # label section and determine length in measure amounts
        section_number = _ + 1
        measure_amount = measure_amount_per_section[_]
        print("")
        print(f"Section {section_number} has {measure_amount} measure(s).")

        # negotiate time signatures
        time_signature_change = time_signature_change_frequency[_]
        if time_signature_change == 0:
            print("The time signature does not change.")
        else:
            print(
                f"The time signature changes every {time_signature_change} measure(s)."
            )

        rotated_time_signatures = trinton.rotated_sequence(
            time_signatures, time_signature_super_counter
        )
        section_time_signatures = []
        for _ in range(0, measure_amount):
            if time_signature_change == 0:
                pass
            else:
                if _ % time_signature_change == 0 and _ != 0:
                    time_signature_sub_counter += 1

            time_signature = rotated_time_signatures[
                time_signature_sub_counter % len(time_signatures)
            ]

            section_time_signatures.append(time_signature)

        if time_signature_change == 0:
            time_signature_super_counter += 1
        else:
            time_signature_progress = measure_amount / time_signature_change
            time_signature_progress = math.ceil(time_signature_progress)
            time_signature_progress = int(time_signature_progress)
            time_signature_super_counter += time_signature_progress

        print("The section's time signature sequence is:")
        for _ in section_time_signatures:
            print(_)

        final_time_signature_list.append(section_time_signatures)


write_section_time_signatures(
    section_amount=9, measure_amount_per_section=[6, 2, 38, 38, 2, 28, 8, 36, 2]
)
