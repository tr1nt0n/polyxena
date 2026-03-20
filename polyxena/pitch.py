import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
import numpy
import random
from polyxena import library

decachord = [4, 6, 3, 7, 8, 5, 3, 6, 2, 1]

pitch_list = [4, 6, 3, 7, 8, 5, 3, 6, 2, 1]

for i, transposition in enumerate(decachord):
    base = [4, 6, 3, 7, 8, 5, 3, 6, 2, 1]
    if i % 2 == 0:
        for pitch in base:
            new_pitch = pitch + transposition
            new_pitch = new_pitch % 12
            pitch_list.append(new_pitch)
            # print(f"{pitch} T{transposition}: {new_pitch}")
    else:
        for pitch in base:
            new_pitch = transposition - pitch
            new_pitch = new_pitch % 12
            # print(f"{pitch} I{transposition}: {new_pitch}")

            pitch_list.append(new_pitch)

# partitioned_pitch_list = abjad.select.partition_by_counts(
#     pitch_list,
#     [5, 7, 4, 8, 9],
#     cyclic=True,
#     overhang=True,
# )
#
# final_pitch_groups = []
#
# for group, index in zip(partitioned_pitch_list, itertools.cycle([4, 6, 3, 7, 8])):
#     index = index % len(group)
#     del group[index]
#     final_pitch_groups.append(group)


def return_pitch_list(index, chord_groups=None):
    rotated_pitch_list = trinton.rotated_sequence(pitch_list, index % len(pitch_list))

    if chord_groups is None:
        return rotated_pitch_list
    else:
        chord_partitions = abjad.select.partition_by_counts(
            rotated_pitch_list,
            chord_groups,
            cyclic=True,
            overhang=True,
        )
        return chord_partitions


def strange_bariolage_pitching(
    index, instrument, seed=7, selector=trinton.logical_ties(pitched=True, grace=False)
):
    def pitching(argument):
        selections = selector(argument)
        starting_pitches = return_pitch_list(index=index)

        string_amounts = [_ % 7 for _ in starting_pitches]

        string_ranges = []

        for amount in string_amounts:
            if amount == 0 or amount == 1:
                pass
            else:
                if amount + amount > 7:
                    string_range = []

                    for _ in range(0, amount):
                        string_range.append(amount - _)
                else:
                    string_range = []

                    for _ in range(0, amount):
                        string_range.append(amount + _)

                string_ranges.append(string_range)

        string_figurations = []
        random.seed(seed)
        for string_range in string_ranges:
            order_array = numpy.random.permutation(len(string_range))
            order_list = order_array.tolist()

            new_range = []

            for _ in order_list:
                new_range.append(string_range[_])

            reversed_range = new_range[::-1]

            reversed_range = reversed_range[1:]

            for _ in reversed_range:
                new_range.append(_)

            string_figurations.append(new_range)

        _string_number_to_pitch = {
            1: "b'",
            2: "g'",
            3: "e'",
            4: "c'",
            5: "a",
            6: "f",
            7: "d",
        }

        partitioned_selections = abjad.select.partition_by_counts(
            selections,
            [len(string_figuration) for string_figuration in string_figurations],
            cyclic=True,
            overhang=True,
        )

        for string_figuration, selection_partition in zip(
            string_figurations, partitioned_selections
        ):
            pitch_list = [_string_number_to_pitch[_] for _ in string_figuration]
            pitch_handler = evans.PitchHandler(pitch_list)
            pitch_handler(selection_partition)

    return pitching
