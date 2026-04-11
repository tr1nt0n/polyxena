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

# material rhythm makers


def weighted_talea(start_index, prolations, elaboration_level=0, retrograde=False):
    def return_rhythms(time_signatures):
        durations = []

        three_counter = 0
        seven_counter = 0
        eight_counter = 0
        for time_signature in time_signatures:
            time_signature_numerator = time_signature.numerator
            time_signature_denominator = time_signature.denominator

            if time_signature_numerator == 3:
                if time_signature_denominator >= 8:
                    durations.append(
                        abjad.Duration(
                            time_signature_numerator, time_signature_denominator
                        )
                    )
                else:
                    subdivision_cycle = [[2, 1], [1, 2], [1, 1, 1]]
                    subdivision_index = three_counter % 3
                    subdivision = subdivision_cycle[subdivision_index]

                    for beat_group in subdivision:
                        if (
                            time_signature_denominator == 7
                            or time_signature_denominator == 14
                            or time_signature_denominator == 28
                        ):
                            duration_denominator = time_signature_denominator * 2
                        else:
                            duration_denominator = time_signature_denominator
                        durations.append(
                            abjad.Duration(beat_group, duration_denominator)
                        )

                    three_counter += 1

            if time_signature_numerator == 6:
                if time_signature_denominator >= 16:
                    durations.append(
                        abjad.Duration(
                            time_signature_numerator, time_signature_denominator
                        )
                    )
                else:
                    durations.append(abjad.Duration((3, time_signature_denominator)))
                    durations.append(abjad.Duration((3, time_signature_denominator)))

            if time_signature_numerator == 7:
                if time_signature_denominator >= 16:
                    durations.append(
                        abjad.Duration(
                            time_signature_numerator, time_signature_denominator
                        )
                    )
                else:
                    subdivision_cycle = [[4, 3], [2, 3, 2], [3, 4]]
                    subdivision_index = seven_counter % 3
                    subdivision = subdivision_cycle[subdivision_index]

                    for beat_group in subdivision:
                        durations.append(
                            abjad.Duration(beat_group, time_signature_denominator)
                        )

                    seven_counter += 1

            if time_signature_numerator == 8:
                if time_signature_denominator >= 16:
                    durations.append(
                        abjad.Duration(
                            time_signature_numerator, time_signature_denominator
                        )
                    )
                else:
                    subdivision_cycle = [[3, 3, 2], [3, 2, 3], [2, 3, 3]]
                    subdivision_index = seven_counter % 3
                    subdivision = subdivision_cycle[subdivision_index]

                    for beat_group in subdivision:
                        durations.append(
                            abjad.Duration(beat_group, time_signature_denominator)
                        )

                    eight_counter += 1

        if retrograde is True:
            talea_sequence = numerator_sequence[::-1]
        else:
            talea_sequence = numerator_sequence

        talea_weights = trinton.rotated_sequence(
            talea_sequence, start_index % len(numerator_sequence)
        )

        talea_counter = 0
        tuplet_ratios = []
        for duration, prolation in zip(durations, itertools.cycle(prolations)):
            if duration >= abjad.Duration((1, 1)):
                attack_amount = 5

            if duration <= abjad.Duration((3, 4)) and duration >= abjad.Duration(
                (3, 8)
            ):
                attack_amount = 3

            if duration <= abjad.Duration((1, 4)):
                attack_amount = 2

            talea_start = talea_counter % len(talea_weights)
            talea_stop = attack_amount + talea_start

            talea_section = talea_weights[talea_start:talea_stop]
            # print(f"talea section: {talea_section}")

            talea_sum = sum(talea_section)

            if talea_sum != prolation:
                # print("talea sum does not equal prolation")
                if talea_sum / 2 == prolation or talea_sum / 4 == prolation:
                    # print("talea sum is a multiple of prolation")
                    talea_section = tuple(talea_section)
                    tuplet_ratios.append(talea_section)
                else:
                    # print("talea sum is not a multiple of prolation")
                    if talea_sum > prolation:
                        # print("talea sum is larger than duration")
                        prolation_difference = talea_sum - prolation
                        target_sum = prolation * 2
                        target_sum_difference = target_sum - prolation

                        if prolation_difference < target_sum_difference:
                            target_sum = prolation

                        # print(f"target sum: {target_sum}")
                        # print(f"talea sum: {talea_sum}")

                        for _ in range(0, 100):
                            new_talea_section = []
                            for _ in talea_section:
                                if _ == 1:
                                    new_talea_section.append(_)
                                else:
                                    reduced_pulse = _ - 1
                                    new_talea_section.append(reduced_pulse)

                            # print(f"reduced talea: {new_talea_section}")

                            if sum(new_talea_section) <= target_sum:
                                # print(f"sufficiently reduced talea: {new_talea_section}")
                                break
                            else:
                                talea_section = new_talea_section

                        if sum(new_talea_section) < target_sum:
                            # print("sufficiently reduced talea is less than target sum")
                            largest_pulse = max(new_talea_section)
                            # print(f"talea section's largest pulse: {largest_pulse}")

                            final_talea_section = []

                            difference = target_sum - sum(new_talea_section)

                            largest_pulse_counter = 0
                            for _ in new_talea_section:
                                if _ == largest_pulse and largest_pulse_counter == 0:
                                    # print("found the largest pulse")
                                    new_pulse = _ + difference
                                    final_talea_section.append(new_pulse)
                                    largest_pulse_counter += 1
                                else:
                                    final_talea_section.append(_)

                            final_talea_section = tuple(final_talea_section)

                            tuplet_ratios.append(final_talea_section)

                        else:
                            talea_section = tuple(new_talea_section)
                            tuplet_ratios.append(new_talea_section)

                    else:
                        prolation_difference = talea_sum - prolation
                        target_sum = prolation * 2
                        target_sum_difference = target_sum - prolation
                        if prolation_difference < target_sum_difference:
                            target_sum = prolation

                        largest_pulse = max(talea_section)

                        new_talea_section = []

                        difference = target_sum - sum(talea_section)

                        largest_pulse_counter = 0
                        for _ in talea_section:
                            if _ == largest_pulse and largest_pulse_counter == 0:
                                new_pulse = _ + difference
                                new_talea_section.append(new_pulse)
                                largest_pulse_counter += 1
                            else:
                                new_talea_section.append(_)

                        new_talea_section = tuple(new_talea_section)

                        tuplet_ratios.append(new_talea_section)

            else:
                talea_section = tuple(talea_section)
                tuplet_ratios.append(talea_section)

            talea_counter += attack_amount

        #     print("")
        #
        # print(f"tuplet ratios: {tuplet_ratios}")
        #
        # breakpoint()

        container = abjad.Container()
        tuplets = rmakers.tuplet(durations, tuplet_ratios)
        container.extend(tuplets)

        rmakers.rewrite_dots(abjad.select.tuplets(container))
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)

        denominator_sequence = []

        if elaboration_level > 0:
            durations = [
                abjad.get.duration(tie, preprolated=True)
                for tie in abjad.select.logical_ties(container)
            ]
            durations.sort()
            sorted_durations = durations[::-1]
            sorted_durations = trinton.remove_adjacent(sorted_durations)
            relevant_durations = sorted_durations[0:elaboration_level]

            logical_ties = abjad.select.logical_ties(container, pitched=True)
            duration_match_counter = start_index
            for i, tie in enumerate(logical_ties):
                tie_duration = abjad.get.duration(tie, preprolated=True)
                # print(f"tie {i} duration: {tie_duration}")
                for i, comparative_duration in enumerate(relevant_durations):
                    # print(f"comparative duration {i}: {comparative_duration}")
                    if tie_duration == comparative_duration:
                        # print("duration match")
                        # print("")
                        tie_parent = abjad.get.parentage(
                            abjad.select.leaf(tie, 0)
                        ).parent
                        if isinstance(tie_parent, abjad.Tuplet):
                            tuplet_prolation = tie_parent.implied_prolation
                            tuplet_numerator = tuplet_prolation.denominator
                            if tuplet_numerator % 3 == 0:
                                tuplet_list = [(3, 3, 1), (2, 1, 1, 3), (4, 3)]
                            else:
                                tuplet_list = [(2, 1), (1, 1, 1), (2, 2, 1, 1)]
                        else:
                            tuplet_list = [
                                (3, 3, 1),
                                (2, 1),
                                (2, 1, 1, 3),
                                (1, 1, 1),
                                (4, 3),
                                (2, 2, 1, 1),
                            ]

                        tuplet_ratio = tuplet_list[
                            duration_match_counter % len(tuplet_list)
                        ]
                        duration_match_counter += 1
                        tuplet = rmakers.tuplet(
                            [abjad.get.duration(tie[0], preprolated=True)],
                            [tuplet_ratio],
                        )

                        rmakers.rewrite_dots(tuplet)
                        trinton.respell_tuplets(tuplet, rewrite_brackets=False)
                        if len(tie) > 1:
                            abjad.attach(abjad.Tie(), abjad.select.leaf(tuplet, -1))

                        abjad.mutate.replace(tie[0], tuplet)

        rmakers.rewrite_dots(abjad.select.tuplets(container))
        treat_tuplets = trinton.treat_tuplets()
        treat_tuplets(container)
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)
        rhythm_selections = abjad.mutate.eject_contents(container)
        return rhythm_selections

    return return_rhythms


def prolated_talea(
    index,
    denominator,
    prolations,
    elaboration_level=0,
    retrograde=False,
    parse_meter=True,
):
    def return_rhythms(time_signatures):
        if parse_meter is True:
            durations = []

            three_counter = 0
            seven_counter = 0
            eight_counter = 0
            for time_signature in time_signatures:
                time_signature_numerator = time_signature.numerator
                time_signature_denominator = time_signature.denominator

                if time_signature_numerator == 3:
                    subdivision_cycle = [[2, 1], [1, 2], [1, 1, 1]]
                    subdivision_index = three_counter % 3
                    subdivision = subdivision_cycle[subdivision_index]

                    for beat_group in subdivision:
                        if (
                            time_signature_denominator == 7
                            or time_signature_denominator == 14
                            or time_signature_denominator == 28
                        ):
                            duration_denominator = time_signature_denominator * 2
                        else:
                            duration_denominator = time_signature_denominator
                        durations.append(
                            abjad.Duration(beat_group, duration_denominator)
                        )

                    three_counter += 1

                if time_signature_numerator == 6:
                    durations.append(abjad.Duration((3, time_signature_denominator)))
                    durations.append(abjad.Duration((3, time_signature_denominator)))

                if time_signature_numerator == 7:
                    subdivision_cycle = [[4, 3], [2, 3, 2], [3, 4]]
                    subdivision_index = seven_counter % 3
                    subdivision = subdivision_cycle[subdivision_index]

                    for beat_group in subdivision:
                        durations.append(
                            abjad.Duration(beat_group, time_signature_denominator)
                        )

                    seven_counter += 1

                if time_signature_numerator == 8:
                    subdivision_cycle = [[3, 3, 2], [3, 2, 3], [2, 3, 3]]
                    subdivision_index = seven_counter % 3
                    subdivision = subdivision_cycle[subdivision_index]

                    for beat_group in subdivision:
                        durations.append(
                            abjad.Duration(beat_group, time_signature_denominator)
                        )

                    eight_counter += 1
        else:
            durations = time_signatures

        extra_counts = []

        for relevant_prolation, duration in zip(itertools.cycle(prolations), durations):
            duration_numerator = duration.numerator
            duration_denominator = duration.denominator

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

        if retrograde is True:
            talea_numerators = talea_numerators[::-1]

        rhythm_selections = rmakers.talea(
            durations,
            talea_numerators,
            denominator=denominator,
            extra_counts=extra_counts,
        )
        container.extend(rhythm_selections)
        rmakers.rewrite_dots(abjad.select.tuplets(container))
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)

        if elaboration_level > 0:
            durations = [
                abjad.get.duration(tie, preprolated=True)
                for tie in abjad.select.logical_ties(container)
            ]
            durations.sort()
            sorted_durations = durations[::-1]
            sorted_durations = trinton.remove_adjacent(sorted_durations)
            relevant_durations = sorted_durations[0:elaboration_level]

            logical_ties = abjad.select.logical_ties(container, pitched=True)
            duration_match_counter = 0
            for tie in logical_ties:
                tie_duration = abjad.get.duration(tie, preprolated=True)
                for comparative_duration in relevant_durations:
                    if tie_duration == comparative_duration:
                        tie_parent = abjad.get.parentage(
                            abjad.select.leaf(tie, 0)
                        ).parent
                        if isinstance(tie_parent, abjad.Tuplet):
                            tuplet_prolation = tie_parent.implied_prolation
                            tuplet_numerator = tuplet_prolation.denominator
                            if tuplet_numerator % 3 == 0:
                                tuplet_list = [(3, 3, 1), (2, 1, 1, 3), (4, 3)]
                            else:
                                tuplet_list = [(2, 1), (1, 1, 1), (2, 2, 1, 1)]
                        else:
                            tuplet_list = [
                                (3, 3, 1),
                                (2, 1),
                                (2, 1, 1, 3),
                                (1, 1, 1),
                                (4, 3),
                                (2, 2, 1, 1),
                            ]

                        tuplet_list = trinton.rotated_sequence(
                            tuplet_list, duration_match_counter % len(tuplet_list)
                        )
                        tuplet = rmakers.tuplet(
                            [abjad.get.duration(tie[0], preprolated=True)],
                            tuplet_list,
                        )

                        rmakers.rewrite_dots(tuplet)
                        trinton.respell_tuplets(tuplet, rewrite_brackets=False)
                        if len(tie) > 1:
                            abjad.attach(abjad.Tie(), abjad.select.leaf(tuplet, -1))

                        abjad.mutate.replace(tie[0], tuplet)
                        duration_match_counter += 1

        treat_tuplets = trinton.treat_tuplets()
        treat_tuplets(container)
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)
        rhythm_selections = abjad.mutate.eject_contents(container)
        return rhythm_selections

    return return_rhythms


def shuffled_gesture(index, instrument, stage=1):
    def return_rhythms(time_signatures):
        container = abjad.Container()

        working_containers = [
            abjad.Container([abjad.Note("b1"), abjad.Note("b''2.."), abjad.Note("b4.")])
            for _ in range(0, 3)
        ]

        durations_list = [
            [abjad.Duration((9, 32))],
            [
                abjad.Duration((5, 16)),
                abjad.Duration((5, 16)),
                abjad.Duration((5, 16)),
                abjad.Duration((5, 16)),
                abjad.Duration((5, 16)),
                abjad.Duration((3, 16)),
            ],
            [abjad.Duration((3, 4))],
        ]

        for durations, working_container in zip(durations_list, working_containers):
            abjad.mutate.split(
                working_container[:],
                durations=durations,
                cyclic=True,
            )

        eighth_divisions = []
        seventh_divisions = []
        third_divisions = []

        if instrument == "theorbe":
            eighth_pitch_list = [
                "b",
                "f'",
                "a'",
                "c''",
                "g''",
                "b''",
                "g''",
                "c''",
                "f'",
                "b",
            ]
            seventh_pitch_list = ["d'", "a'", "e''", "b''", "e''", "a'", "d'", "b"]
            third_pitch_list = ["b", "c''", "b''", "c''", "b"]

        else:
            eighth_pitch_list = [
                "g",
                "bqf",
                "d'",
                "fqs'",
                "a'",
                "cqs''",
                "e''",
                "gqs''",
                "b''",
                "gqs''",
                "e''",
                "cqs''",
                "a'",
                "fqs'",
                "d'",
                "bqf",
                "g",
            ]
            seventh_pitch_list = [
                "g",
                "b",
                "ef'",
                "g'",
                "b'",
                "ef''",
                "g''",
                "b''",
                "g''",
                "ef''",
                "b'",
                "g'",
                "ef'",
                "b",
            ]
            third_pitch_list = [
                "g",
                "eqs'",
                "d''",
                "bqs''",
                "d''",
                "eqs'",
                "g",
            ]

        pitch_lists = [eighth_pitch_list, seventh_pitch_list, third_pitch_list]

        for duration_list, pitch_list, working_container in zip(
            durations_list, pitch_lists, working_containers
        ):
            reference_duration = duration_list[0]
            duration_group = []
            pitch_counter = 0
            for leaf in abjad.select.leaves(working_container):
                if abjad.get.duration(duration_group) < reference_duration:
                    leaf.written_pitch = pitch_list[pitch_counter % len(pitch_list)]
                    if abjad.get.has_indicator(leaf, abjad.Tie) is False:
                        pitch_counter += 1
                    duration_group.append(leaf)
                else:
                    last_leaf_of_group = abjad.select.leaf(duration_group, -1)
                    abjad.detach(abjad.Tie, last_leaf_of_group)
                    if reference_duration == abjad.Duration((9, 32)):
                        eighth_divisions.append(abjad.mutate.copy(duration_group))
                    if reference_duration == abjad.Duration((5, 16)):
                        seventh_divisions.append(abjad.mutate.copy(duration_group))
                    if reference_duration == abjad.Duration((3, 4)):
                        third_divisions.append(abjad.mutate.copy(duration_group))
                    duration_group.clear()
                    pitch_counter += 1
                    leaf.written_pitch = pitch_list[pitch_counter % len(pitch_list)]
                    if abjad.get.has_indicator(leaf, abjad.Tie) is False:
                        pitch_counter += 1
                    duration_group.append(leaf)

            if reference_duration == abjad.Duration((9, 32)):
                eighth_divisions.append(abjad.mutate.copy(duration_group))
            if reference_duration == abjad.Duration((5, 16)):
                seventh_divisions.append(abjad.mutate.copy(duration_group))
            if reference_duration == abjad.Duration((3, 4)):
                third_divisions.append(abjad.mutate.copy(duration_group))

        shuffled_shards = []

        for eighth_division, seventh_division, third_division in zip(
            eighth_divisions,
            itertools.cycle(seventh_divisions[::-1]),
            itertools.cycle(third_divisions),
        ):
            shuffled_shards.append(eighth_division)
            shuffled_shards.append(seventh_division),
            shuffled_shards.append(third_division)

        partitions = []

        for _ in range(0, len(shuffled_shards)):
            partitions.append(3)
            partitions.append(2)
            partitions.append(2)

        partitioned_shards = abjad.sequence.partition_by_counts(
            sequence=shuffled_shards,
            counts=partitions,
            overhang=True,
        )

        helianthated_shards = baca.sequence.helianthate(partitioned_shards, n=-1, m=1)

        shard_sequence = [_ for _ in abjad.select.leaves(helianthated_shards)]

        shard_sequence = trinton.rotated_sequence(
            shard_sequence, index % len(shard_sequence)
        )

        shard_partitions = abjad.sequence.partition_by_counts(
            sequence=shard_sequence,
            counts=partitions,
            overhang=True,
        )

        if stage < 3:
            durations = [
                abjad.Duration((time_signature.numerator, time_signature.denominator))
                for time_signature in time_signatures
            ]

        if stage == 3:
            three_counter = 0
            seven_counter = 0
            eight_counter = 0
            durations = []
            for time_signature in time_signatures:
                time_signature_numerator = time_signature.numerator
                time_signature_denominator = time_signature.denominator

                if time_signature_numerator == 3:
                    if time_signature_denominator >= 8:
                        durations.append(
                            abjad.Duration(
                                time_signature_numerator, time_signature_denominator
                            )
                        )
                    else:
                        subdivision_cycle = [[2, 1], [1, 2], [1, 1, 1]]
                        subdivision_index = three_counter % 3
                        subdivision = subdivision_cycle[subdivision_index]

                        for beat_group in subdivision:
                            if (
                                time_signature_denominator == 7
                                or time_signature_denominator == 14
                                or time_signature_denominator == 28
                            ):
                                duration_denominator = time_signature_denominator * 2
                            else:
                                duration_denominator = time_signature_denominator
                            durations.append(
                                abjad.Duration(beat_group, duration_denominator)
                            )

                        three_counter += 1

                if time_signature_numerator == 6:
                    if time_signature_denominator >= 16:
                        durations.append(
                            abjad.Duration(
                                time_signature_numerator, time_signature_denominator
                            )
                        )
                    else:
                        durations.append(
                            abjad.Duration((3, time_signature_denominator))
                        )
                        durations.append(
                            abjad.Duration((3, time_signature_denominator))
                        )

                if time_signature_numerator == 7:
                    if time_signature_denominator >= 16:
                        durations.append(
                            abjad.Duration(
                                time_signature_numerator, time_signature_denominator
                            )
                        )
                    else:
                        subdivision_cycle = [[4, 3], [2, 3, 2], [3, 4]]
                        subdivision_index = seven_counter % 3
                        subdivision = subdivision_cycle[subdivision_index]

                        for beat_group in subdivision:
                            durations.append(
                                abjad.Duration(beat_group, time_signature_denominator)
                            )

                        seven_counter += 1

                if time_signature_numerator == 8:
                    if time_signature_denominator >= 16:
                        durations.append(
                            abjad.Duration(
                                time_signature_numerator, time_signature_denominator
                            )
                        )
                    else:
                        subdivision_cycle = [[3, 3, 2], [3, 2, 3], [2, 3, 3]]
                        subdivision_index = seven_counter % 3
                        subdivision = subdivision_cycle[subdivision_index]

                        for beat_group in subdivision:
                            durations.append(
                                abjad.Duration(beat_group, time_signature_denominator)
                            )

                        eight_counter += 1

                if (
                    time_signature_numerator != 3
                    and time_signature_numerator != 6
                    and time_signature_numerator != 7
                    and time_signature_numerator != 8
                ):
                    durations.append(time_signature)

        if stage == 2:
            shard_durations = [abjad.get.duration(shard) for shard in shard_sequence]

            shard_denominators = [_.denominator for _ in shard_durations]

            largest_denominator = max(shard_denominators)

            talea_numerators = []

            for shard in shard_sequence:
                shard_duration = abjad.get.duration(shard)
                if shard_duration.denominator == largest_denominator:
                    talea_numerators.append(shard_duration.numerator)
                else:
                    difference = largest_denominator / shard_duration.denominator
                    new_numerator = shard_duration.numerator * difference
                    new_numerator = int(new_numerator)
                    talea_numerators.append(new_numerator)

            talea = rmakers.talea(durations, talea_numerators, largest_denominator)

            container.extend(talea)

        else:
            for duration, shard_group in zip(durations, shard_partitions):
                shard_group = abjad.sequence.flatten(shard_group)

                shard_durations = [abjad.get.duration(shard) for shard in shard_group]

                shard_denominators = [_.denominator for _ in shard_durations]

                largest_denominator = max(shard_denominators)

                tuplet_ratio = []
                for shard_duration in shard_durations:
                    if shard_duration.denominator == largest_denominator:
                        tuplet_ratio.append(shard_duration.numerator)
                    else:
                        difference = largest_denominator / shard_duration.denominator
                        new_numerator = shard_duration.numerator * difference
                        new_numerator = int(new_numerator)
                        tuplet_ratio.append(new_numerator)

                tuplet_ratio = tuple(tuplet_ratio)

                tuplets = rmakers.tuplet([duration], [tuplet_ratio])
                # pitch_list = [_.written_pitch.number for _ in shard_group]
                # pitch_handler = evans.PitchHandler(pitch_list=pitch_list)
                # pitch_handler(tuplets)
                container.extend(tuplets)

        treat_tuplets = trinton.treat_tuplets()
        treat_tuplets(abjad.select.tuplets(container))
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)
        pitch_list = [
            _[0].written_pitch.number
            for _ in abjad.select.logical_ties(shard_partitions)
        ]
        pitch_list = trinton.remove_adjacent(pitch_list)
        for tie, pitch in zip(
            abjad.select.logical_ties(container), itertools.cycle(pitch_list)
        ):
            for leaf in abjad.select.leaves(tie):
                leaf.written_pitch = abjad.NumberedPitch(pitch).name

        rhythm_selections = abjad.mutate.eject_contents(container)
        return rhythm_selections

    return return_rhythms


# rhythm tools


def replace_with_tremolo_container(selector, count=2):
    def replace(argument):
        selections = selector(argument)

        for selection in selections:
            selection_duration = abjad.get.duration(selection, preprolated=True)

            content_duration_divisor = count * 2
            content_duration = selection_duration / content_duration_divisor

            content_duration_numerator = content_duration.numerator
            content_duration_denominator = content_duration.denominator

            if content_duration_numerator != 1:
                if content_duration_numerator == 3:
                    lilypond_duration = rf"{content_duration_denominator}."
                if content_duration_numerator == 5:
                    lilypond_duration = rf"{content_duration_denominator}~ c'{content_duration_denominator * 2}"
                if content_duration_numerator == 7:
                    lilypond_duration = rf"{content_duration_denominator}.."
                if content_duration_numerator == 15:
                    lilypond_duration = rf"{content_duration_denominator}..."
            else:
                lilypond_duration = content_duration_denominator

            contents = rf"c'{lilypond_duration} c'{lilypond_duration}"

            container = abjad.TremoloContainer(count=2, components=contents)

            abjad.slur(container)

            abjad.mutate.replace(selection, container)

    return replace


def continuous_beam(selector):
    def beam(argument):
        selections = selector(argument)

        beamables = []

        for selection in selections:
            if abjad.get.duration(selection) > abjad.Duration((15, 64)):
                pass
            else:
                beamables.append(selection)

        beam_groups = abjad.select.group_by_contiguity(beamables)

        for group in beam_groups:
            abjad.beam(group)

    return beam


def make_multi_gliss(
    score,
    voice_name,
    measures,
    pitch_lists,
    extra_voice="",
    preprocessor=None,
    finger_percussion_padding=None,
    finger_percussion_voice_index=0,
    notehead=None,
):
    tuplet_ratios = []

    for pitch_list in pitch_lists:
        limit = len(pitch_list) - 1
        tuplet_ratio = [1 for _ in range(0, limit)]
        tuplet_ratio = tuple(tuplet_ratio)
        tuplet_ratios.append(tuplet_ratio)

    # trinton.make_music(
    #     lambda _: trinton.select_target(_, measures),
    #     evans.RhythmHandler(evans.tuplet([tuplet_ratios[0]])),
    #     voice=score[voice_name],
    #     preprocessor=preprocessor
    # )

    intermittent_voice_names = []

    voice_counter = 1
    for tuplet_ratio in tuplet_ratios:
        intermittent_voice_name = f"{voice_name} gliss {voice_counter} {extra_voice}"
        percussion_index_comparator = finger_percussion_voice_index + 1
        if voice_counter == percussion_index_comparator:
            # voice = score[voice_name]
            direction = abjad.UP
        else:
            #     voice = score[f"{voice_name} gliss {voice_counter - 1}"]
            direction = abjad.DOWN

        trinton.make_music(
            lambda _: trinton.select_target(_, measures),
            trinton.IntermittentVoiceHandler(
                evans.RhythmHandler(evans.tuplet([tuplet_ratio])),
                direction=direction,
                voice_name=intermittent_voice_name,
                temp_name="",
                preprocessor=preprocessor,
            ),
            voice=score[voice_name],
        )

        intermittent_voice_names.append(intermittent_voice_name)

        voice_counter += 1

    for intermittent_voice_name, pitch_list in zip(
        intermittent_voice_names, pitch_lists
    ):
        trinton.make_music(
            lambda _: trinton.select_target(_, measures),
            trinton.treat_tuplets(),
            rmakers.rewrite_dots,
            trinton.respell_tuplets_command(rewrite_brackets=False),
            trinton.aftergrace_command(
                selector=trinton.select_logical_ties_by_index(
                    [-1], pitched=True, grace=False
                ),
                invisible=True,
            ),
            evans.PitchHandler(pitch_list),
            trinton.continuous_glissando(zero_padding=True, invisible_center=True),
            trinton.noteheads_only(selector=trinton.pleaves(grace=True)),
            voice=score[intermittent_voice_name],
        )

        if notehead is not None:
            trinton.make_music(
                lambda _: trinton.select_target(_, measures),
                trinton.change_notehead_command(
                    notehead=notehead,
                    selector=trinton.select_leaves_by_index(
                        [0], pitched=True, grace=False
                    ),
                ),
                voice=score[intermittent_voice_name],
            )

        if (
            intermittent_voice_name
            == intermittent_voice_names[finger_percussion_voice_index]
        ):
            if finger_percussion_padding is None:
                trinton.make_music(
                    lambda _: trinton.select_target(_, measures),
                    trinton.noteheads_only(),
                    trinton.invisible_tuplet_brackets(),
                    abjad.slur,
                    trinton.attachment_command(
                        attachments=[
                            abjad.LilyPondLiteral(
                                r"\once \override Accidental.stencil = ##f",
                                site="before",
                            )
                        ],
                        selector=trinton.pleaves(exclude=[0]),
                    ),
                    voice=score[intermittent_voice_name],
                )

            else:
                trinton.make_music(
                    lambda _: trinton.select_target(_, measures),
                    trinton.attachment_command(
                        attachments=[abjad.Articulation(">")],
                        selector=trinton.logical_ties(
                            first=True, pitched=True, grace=False
                        ),
                    ),
                    trinton.hooked_spanner_command(
                        string=r"""\markup { "( LH finger percussion on accents )" }""",
                        selector=trinton.select_leaves_by_index([0, -1], pitched=True),
                        padding=finger_percussion_padding,
                        direction=None,
                        right_padding=0,
                        full_string=True,
                        style="dashed-line-with-hook",
                        hspace=None,
                        command="One",
                        tag=None,
                        tweaks=[
                            r"""- \tweak font-name "Bodoni72 Book Italic" """,
                            r"""- \tweak font-size 2""",
                        ],
                    ),
                    continuous_beam(trinton.pleaves(grace=False)),
                    trinton.attachment_command(
                        attachments=[
                            abjad.LilyPondLiteral(
                                r"\once \override Accidental.stencil = ##f",
                                site="before",
                            )
                        ],
                        selector=trinton.pleaves(exclude=[0]),
                    ),
                    voice=score[intermittent_voice_name],
                )
        else:
            trinton.make_music(
                lambda _: trinton.select_target(_, measures),
                trinton.noteheads_only(),
                trinton.invisible_tuplet_brackets(),
                trinton.attachment_command(
                    attachments=[
                        abjad.LilyPondLiteral(
                            r"\once \override Accidental.stencil = ##f", site="before"
                        )
                    ],
                    selector=trinton.pleaves(exclude=[0]),
                ),
                voice=score[intermittent_voice_name],
            )
