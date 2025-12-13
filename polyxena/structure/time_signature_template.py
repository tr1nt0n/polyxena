import abjad
import baca
import evans
import trinton
import fractions
import itertools
import random
import math
from itertools import cycle


def determine_time_signature_cycle_for_section(
    section_number, cycle_index, section_length
):
    time_signature_sequence = [
        [(3, 4), (7, 4), (8, 4)],
        [(7, 4), (8, 4), (3, 4)],
        [(8, 4), (3, 4), (7, 4)],
    ]

    time_signature_sequence = trinton.rotated_sequence(
        time_signature_sequence, cycle_index % 3
    )

    time_signature_sequence = abjad.sequence.flatten(time_signature_sequence)

    section_sixteenths = abjad.Duration((section_length, 16))

    section_time_signatures = []

    if section_sixteenths < abjad.Duration(time_signature_sequence[0]):
        quarter_notes = section_length / 4
        quarter_notes_only = math.floor(quarter_notes)

        subtractor = quarter_notes_only * 4

        sixteenth_notes = section_length - subtractor

        section_time_signatures.append(abjad.TimeSignature((quarter_notes_only, 4)))
        section_time_signatures.append(abjad.TimeSignature((sixteenth_notes, 16)))

        new_cycle_index = cycle_index

    else:
        new_cycle_index = cycle_index
        for _, time_signature in zip(
            range(0, section_length), itertools.cycle(time_signature_sequence)
        ):
            if _ % 3 == 0 and _ != 0:
                new_cycle_index += 1
            if section_sixteenths < abjad.Duration((time_signature)):
                section_time_signatures.append(abjad.TimeSignature(section_sixteenths))
                break

            else:
                section_time_signatures.append(abjad.TimeSignature(time_signature))
                section_sixteenths -= abjad.Duration(time_signature)

    print("")
    print(f"Section {section_number} has the following time signatures:")
    for i, ts in enumerate(section_time_signatures):
        print(f"{i + 1}. {ts.numerator}/{ts.denominator}")
    print("")
    print(f"The resultant cycle index is {new_cycle_index}")
    print("")
    print("")


determine_time_signature_cycle_for_section(
    section_number=1, cycle_index=0, section_length=81
)

determine_time_signature_cycle_for_section(
    section_number=2, cycle_index=1, section_length=27
)

determine_time_signature_cycle_for_section(
    section_number=3, cycle_index=1, section_length=513
)

determine_time_signature_cycle_for_section(
    section_number=4, cycle_index=8, section_length=513
)

determine_time_signature_cycle_for_section(
    section_number=5, cycle_index=15, section_length=27
)

determine_time_signature_cycle_for_section(
    section_number=6, cycle_index=15, section_length=378
)

determine_time_signature_cycle_for_section(
    section_number=7, cycle_index=20, section_length=108
)

determine_time_signature_cycle_for_section(
    section_number=8, cycle_index=21, section_length=486
)

determine_time_signature_cycle_for_section(
    section_number=9, cycle_index=27, section_length=27
)
