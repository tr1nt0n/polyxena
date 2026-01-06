import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
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

partitioned_pitch_list = abjad.select.partition_by_counts(
    pitch_list,
    [5, 7, 4, 8, 9],
    cyclic=True,
    overhang=True,
)

final_pitch_groups = []

for group, index in zip(partitioned_pitch_list, itertools.cycle([4, 6, 3, 7, 8])):
    index = index % len(group)
    del group[index]
    final_pitch_groups.append(group)
