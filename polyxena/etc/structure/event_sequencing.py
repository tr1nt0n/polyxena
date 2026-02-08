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

# moment_amount_sequence = [3, 4, 5, 6, 7, 3, 5, 6, 7, 4, 3, 6, 7, 4, 5, 3, 4, 7, 6, 5]
#
# retrograded_moment_amount_sequence = moment_amount_sequence[::-1]
#
# transition_types = ["microformal", "oppositional", "incised", "evolutional"]
#
# transition_type_sequence = []
#
# for _ in library.tetrahedron_corners_list:
#     transition_type_sequence.append(transition_types[_])
#
# retrograded_transition_type_sequence = transition_type_sequence[::-1]
#
# for _ in range(0, 9):
#     section_number = _ + 1
#     gambe_moment_amount = moment_amount_sequence[_]
#     theorbe_moment_amount = retrograded_moment_amount_sequence[_]
#
#     print(f"In section {section_number}, the Gambe has {gambe_moment_amount} moments")
#
#     for _ in range(0, gambe_moment_amount - 1):
#         transition_number = _ + 1
#         print(
#             f"Transition {transition_number} between moments {1 + _} and {2 + _} is {transition_type_sequence[_]}"
#         )
#
#     print("")
#
#     print(
#         f"In section {section_number}, the Theorbe has {theorbe_moment_amount} moments"
#     )
#
#     for _ in range(0, theorbe_moment_amount - 1):
#         transition_number = _ + 1
#         print(
#             f"Transition {transition_number} between moments {1 + _} and {2 + _} is {retrograded_transition_type_sequence[_]}"
#         )
#
#     print("_______________")
#     print("")

# granular parameters

note_quantity_corners = trinton.rotated_sequence(
    library.tetrahedron_corners_list,
    5 % len(library.tetrahedron_corners_list),
)
lh_position_corners = trinton.rotated_sequence(
    library.retrograded_tetrahedron_corners_list,
    6 % len(library.tetrahedron_corners_list),
)
rh_position_corners = trinton.rotated_sequence(
    library.tetrahedron_corners_list,
    7 % len(library.tetrahedron_corners_list),
)
lh_pressure_corners = trinton.rotated_sequence(
    library.retrograded_tetrahedron_corners_list,
    8 % len(library.tetrahedron_corners_list),
)
rh_pressure_corners = trinton.rotated_sequence(
    library.tetrahedron_corners_list,
    9 % len(library.tetrahedron_corners_list),
)
bow_amount_corners = trinton.rotated_sequence(
    library.tetrahedron_corners_list,
    10 % len(library.tetrahedron_corners_list),
)
draw_direction_corners = trinton.rotated_sequence(
    library.tetrahedron_corners_list,
    11 % len(library.tetrahedron_corners_list),
)


note_quantities = [1, 2, 3, 4]
lh_positions = [
    (
        "the lower half of the fingerboard",
        "the extension strings below the finger board",
    ),
    ("the upper half of the finger board", "the lower half of the finger board"),
    ("the strings behind the bridge", "the upper half of the finger board"),
    ("the tailpiece", "the strings between the last fret and the bridge"),
]
rh_positions = [
    ("the lower half of the fingerboard", "the tasto position"),
    ("the upper half of the finger board", "the normale position"),
    ("the bridge and the strings behind the bridge", "the ponticello position"),
    ("the tailpiece", "the bridge"),
]
lh_pressures = ["harmonic", "half harmonic", "full", "percussive"]
rh_pressures = ["rest", "ppp-p", "mp-mf", "f-fff"]
bow_amounts = [
    ("less than an inch of bow", "the finger pads"),
    ("1/4 of the bow", "the fingertips"),
    ("1/2 of the bow", "the fingernails"),
    ("the entire bow", "the flat of the nails"),
]
draw_directions = [
    "downward diagonally",
    "horizontally",
    "upward diagonally",
    "vertically",
]

note_quantity_sequence = []
lh_position_sequence = []
rh_position_sequence = []
lh_pressure_sequence = []
rh_pressure_sequence = []
bow_amount_sequence = []
draw_direction_sequence = []

for (
    note_quantity_index,
    lh_position_index,
    rh_position_index,
    lh_pressure_index,
    rh_pressure_index,
    bow_amount_index,
    draw_direction_index,
) in zip(
    note_quantity_corners,
    lh_position_corners,
    rh_position_corners,
    lh_pressure_corners,
    rh_pressure_corners,
    bow_amount_corners,
    draw_direction_corners,
):
    note_quantity_sequence.append(note_quantities[note_quantity_index])
    lh_position_sequence.append(lh_positions[lh_position_index])
    rh_position_sequence.append(rh_positions[rh_position_index])
    lh_pressure_sequence.append(lh_pressures[lh_pressure_index])
    rh_pressure_sequence.append(rh_pressures[rh_pressure_index])
    bow_amount_sequence.append(bow_amounts[bow_amount_index])
    draw_direction_sequence.append(draw_directions[draw_direction_index])


def moment_parameters_per_instrument_per_section(
    instrument, section, moment_amount, start_index
):
    tuple_index = 0
    # rhythm_parameters

    prolation = trinton.rotated_sequence(
        rhythm.prolation_sequence,
        start_index % len(rhythm.prolation_sequence),
    )
    talea_denominator = trinton.rotated_sequence(
        rhythm.denominator_sequence,
        start_index % len(rhythm.denominator_sequence),
    )
    elaboration = trinton.rotated_sequence(
        rhythm.elaboration_sequence,
        start_index % len(rhythm.elaboration_sequence),
    )
    tremolo = trinton.rotated_sequence(
        rhythm.tremolo_sequence,
        start_index % len(rhythm.tremolo_sequence),
    )
    accent_density = trinton.rotated_sequence(
        rhythm.accent_density_sequence,
        start_index % len(rhythm.accent_density_sequence),
    )

    # quality parameters

    note_quantity = trinton.rotated_sequence(
        note_quantity_sequence,
        start_index % len(lh_position_sequence),
    )
    lh_position = trinton.rotated_sequence(
        lh_position_sequence,
        start_index % len(lh_position_sequence),
    )
    rh_position = trinton.rotated_sequence(
        rh_position_sequence,
        start_index % len(rh_position_sequence),
    )
    lh_pressure = trinton.rotated_sequence(
        lh_pressure_sequence,
        start_index % len(lh_pressure_sequence),
    )
    rh_pressure = trinton.rotated_sequence(
        rh_pressure_sequence,
        start_index % len(rh_pressure_sequence),
    )
    bow_amount = trinton.rotated_sequence(
        bow_amount_sequence,
        start_index % len(bow_amount_sequence),
    )
    draw_direction = trinton.rotated_sequence(
        draw_direction_sequence,
        start_index % len(draw_direction_sequence),
    )

    if instrument == "Theorbe":
        tuple_index = -1
        prolation = prolation[::-1]
        talea_denominator = talea_denominator[::-1]
        elaboration = elaboration[::-1]
        tremolo = tremolo[::-1]
        accent_density = accent_density[::-1]
        note_quantity = note_quantity[::-1]
        lh_position = lh_position[::-1]
        rh_position = rh_position[::-1]
        lh_pressure = lh_pressure[::-1]
        rh_pressure = rh_pressure[::-1]
        bow_amount = bow_amount[::-1]
        draw_direction = draw_direction[::-1]

    lh_position = [_[tuple_index] for _ in lh_position]
    rh_position = [_[tuple_index] for _ in rh_position]
    bow_amount = [_[tuple_index] for _ in bow_amount]

    index_counter = start_index
    for _ in range(0, moment_amount):
        print("")
        moment_number = _ + 1
        sub_index = _ + start_index

        print(
            f"The {instrument}'s Moment {moment_number} of Section {section} has a rhythmic prolation of {prolation[sub_index % len(prolation)]}"
        )
        print(
            f"- The talea denominator is {talea_denominator[sub_index % len(talea_denominator)]}"
        )
        print(f"- The rhythm contains {elaboration[sub_index % len(elaboration)]}")
        print(f"- The rhythm contains {tremolo[sub_index % len(tremolo)]}")
        print(
            f"- The rhythm contains {accent_density[sub_index % len(accent_density)]}"
        )

        print("")

        print(
            f"The {instrument}'s Moment {moment_number} of Section {section} uses chords of {note_quantity[sub_index % len(note_quantity)]} note(s)"
        )
        print(
            f"- The left hand is positioned at {lh_position[sub_index % len(lh_position)]}"
        )
        print(
            f"- The right hand hand is positioned at {rh_position[sub_index % len(rh_position)]}"
        )
        print(
            f"- The left hand plays with {lh_pressure[sub_index % len(lh_pressure)]} finger pressure"
        )
        print(
            f"- The right hand plays with {rh_pressure[sub_index % len(rh_pressure)]} pressure"
        )
        print(f"- The musician plays with {bow_amount[sub_index % len(bow_amount)]}")
        print(
            f"- The musician draws their right hand {draw_direction[sub_index % len(draw_direction)]}"
        )

        index_counter += 1

        print("____________________________")
        print("")

    print(f"The {instrument}'s next moment should start at index {index_counter}")


# section 1

# print("")
# print("-- Section 1 --")
# print("")
# print("Gambe:")
# print("")
#
# moment_parameters_per_instrument_per_section(
#     instrument="Gambe", section=1, moment_amount=3, start_index=0
# )
#
# print("")
# print("Theorbe:")
# print("")
#
# moment_parameters_per_instrument_per_section(
#     instrument="Theorbe", section=1, moment_amount=5, start_index=0
# )
#
# print("____________________________________________________")
#
# # section 2
#
# print("")
# print("-- Section 2 --")
# print("")
# print("Gambe:")
# print("")
#
# moment_parameters_per_instrument_per_section(
#     instrument="Gambe", section=2, moment_amount=4, start_index=3
# )
#
# print("")
# print("Theorbe:")
# print("")
#
# moment_parameters_per_instrument_per_section(
#     instrument="Theorbe", section=2, moment_amount=6, start_index=5
# )
#
# print("____________________________________________________")

# # section 3
#
# print("")
# print("-- Section 3 --")
# print("")
# print("Gambe:")
# print("")
#
# moment_parameters_per_instrument_per_section(
#     instrument="Gambe", section=3, moment_amount=5, start_index=7
# )
#
# print("")
# print("Theorbe:")
# print("")
#
# moment_parameters_per_instrument_per_section(
#     instrument="Theorbe", section=3, moment_amount=7, start_index=11
# )
#
# print("____________________________________________________")

# # section 4
#
# print("")
# print("-- Section 4 --")
# print("")
# print("Gambe:")
# print("")
#
# moment_parameters_per_instrument_per_section(
#     instrument="Gambe", section=4, moment_amount=6, start_index=12
# )
#
# print("")
# print("Theorbe:")
# print("")
#
# moment_parameters_per_instrument_per_section(
#     instrument="Theorbe", section=4, moment_amount=4, start_index=18
# )
#
# print("____________________________________________________")

# # section 5
#
# print("")
# print("-- Section 5 --")
# print("")
# print("Gambe:")
# print("")
#
# moment_parameters_per_instrument_per_section(
#     instrument="Gambe", section=5, moment_amount=7, start_index=18
# )
#
# print("")
# print("Theorbe:")
# print("")
#
# moment_parameters_per_instrument_per_section(
#     instrument="Theorbe", section=5, moment_amount=3, start_index=22
# )
#
# print("____________________________________________________")

# # section 6
#
# print("")
# print("-- Section 6 --")
# print("")
# print("Gambe:")
# print("")
#
# moment_parameters_per_instrument_per_section(
#     instrument="Gambe", section=6, moment_amount=3, start_index=25
# )
#
# print("")
# print("Theorbe:")
# print("")
#
# moment_parameters_per_instrument_per_section(
#     instrument="Theorbe", section=6, moment_amount=5, start_index=25
# )
#
# print("____________________________________________________")

# # section 7
#
# print("")
# print("-- Section 7 --")
# print("")
# print("Gambe:")
# print("")
#
# moment_parameters_per_instrument_per_section(
#     instrument="Gambe", section=7, moment_amount=5, start_index=28
# )
#
# print("")
# print("Theorbe:")
# print("")
#
# moment_parameters_per_instrument_per_section(
#     instrument="Theorbe", section=7, moment_amount=4, start_index=30
# )
#
# print("____________________________________________________")

# # section 8
#
# print("")
# print("-- Section 8 --")
# print("")
# print("Gambe:")
# print("")
#
# moment_parameters_per_instrument_per_section(
#     instrument="Gambe", section=8, moment_amount=6, start_index=33
# )
#
# print("")
# print("Theorbe:")
# print("")
#
# moment_parameters_per_instrument_per_section(
#     instrument="Theorbe", section=8, moment_amount=7, start_index=34
# )
#
# print("____________________________________________________")

# section 9

print("")
print("-- Section 9 --")
print("")
print("Gambe:")
print("")

moment_parameters_per_instrument_per_section(
    instrument="Gambe", section=9, moment_amount=7, start_index=39
)

print("")
print("Theorbe:")
print("")

moment_parameters_per_instrument_per_section(
    instrument="Theorbe", section=9, moment_amount=6, start_index=41
)

print("____________________________________________________")
