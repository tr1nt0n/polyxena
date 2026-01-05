import abjad
import baca
import evans
import trinton
import fractions
import itertools
import random
from itertools import cycle

zone_amounts = [4, 6, 3, 7, 8]

zone_counter = 0

material_amounts = [4, 1, 3, 2, 3]

material_amount_counter = 0

materials = [_ + 1 for _ in [3, 1, 1, 0, 4, 2, 4, 0, 1, 4, 4, 0, 4, 4, 3, 1, 1]]

material_counter = 0

stages = [_ + 1 for _ in [0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 2, 2, 1, 2, 0, 1, 1]]

stage_counter = 0

for _ in range(0, 9):
    section_number = _ + 1

    zone_amount = zone_amounts[zone_counter]

    print(f"Section {section_number} has {zone_amount} material zones.")

    zone_counter = section_number % len(zone_amounts)

    for _ in range(0, zone_amount):
        material_amount = material_amounts[material_amount_counter]
        print(
            f"Section {section_number} Zone {_ + 1} has {material_amount} material(s):"
        )
        material_amount_counter += 1
        material_amount_counter = material_amount_counter % len(material_amounts)

        for _ in range(0, material_amount):
            material = materials[material_counter]
            stage = stages[stage_counter]
            print(f"Material {material} stage {stage}")
            material_counter += 1
            material_counter = material_counter % len(materials)
            stage_counter += 1
            stage_counter = stage_counter % len(stages)

    print("")
