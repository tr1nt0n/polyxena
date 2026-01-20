import abjad
from abjadext import rmakers
import baca
import evans
import trinton
import itertools
import random
from polyxena import library
from polyxena import pitch


def rhythm_a(stage, index, later_material=False):
    def rhythm(time_signatures):
        pitch_groups = trinton.rotated_sequence(
            pitch.final_pitch_groups, index % len(pitch.final_pitch_groups)
        )
        container = abjad.Container()
        if stage == 1:
            talea_counts = []
            for group in pitch_groups:
                if later_material is True:
                    talea_counts.append(len(group))
                else:
                    talea_counts.append(1)
                    rest_amount = len(group)
                    rest_amount = rest_amount - 1
                    rest_amount = rest_amount * -1
                    talea_counts.append(rest_amount)

            rhythms = rmakers.talea(time_signatures, talea_counts, 16)
            container.extend(rhythms)

        if stage == 2:
            talea_counts = []
            for i, group in enumerate(pitch_groups):
                if later_material is True:
                    if i % 2 == 0:
                        run_length = len(group)
                        run_length = run_length - 1
                        for _ in range(0, run_length):
                            talea_counts.append(1)
                    else:
                        long_note = len(group)
                        long_note = long_note + 1
                        talea_counts.append(long_note)
                else:
                    if i % 2 == 1:
                        rest_amount = len(group)
                        rest_amount = rest_amount * -1
                        talea_counts.append(rest_amount)
                    else:
                        run_length = len(group)
                        for _ in range(0, run_length):
                            talea_counts.append(1)

            rhythms = rmakers.talea(time_signatures, talea_counts, 16)
            container.extend(rhythms)

        rmakers.rewrite_dots(abjad.select.tuplets(container))
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)
        treat_tuplets = trinton.treat_tuplets()
        treat_tuplets(container)

        if stage == 1:
            pitch_list = [_[0] for _ in pitch_groups]
        if stage == 2:
            pitch_list = []

            for i, group in enumerate(pitch_groups):
                if i % 2 == 1:
                    pass
                else:
                    for click_pitch in group:
                        pitch_list.append(click_pitch)
        if stage == 3:
            pitch_list = abjad.sequence.flatten(pitch_groups)
        pitch_handler = evans.PitchHandler(pitch_list=pitch_list)
        pitch_handler(container)
        rhythm_selections = abjad.mutate.eject_contents(container)
        return rhythm_selections

    return rhythm


def rhythm_b(index=0, stage=1):
    def rhythm(time_signatures):
        container = abjad.Container()
        if stage == 1:
            talea_numerators = abjad.sequence.flatten(pitch.final_pitch_groups)
            new_numerators = []
            for i, numerator in enumerate(talea_numerators):
                if i % 2 == 1:
                    numerator = numerator * -1
                new_numerators.append(numerator)

            talea_numerators = trinton.rotated_sequence(
                new_numerators, index % len(talea_numerators)
            )

            rhythms = rmakers.talea(time_signatures, talea_numerators, 16)
            container.extend(rhythms)

        if stage == 2:
            rhythms = rmakers.talea(time_signatures, [1], 4)
            container.extend(rhythms)

        if stage == 3:
            rhythms = rmakers.note(time_signatures)
            container.extend(rhythms)

        rmakers.rewrite_dots(abjad.select.tuplets(container))
        trinton.respell_tuplets(abjad.select.tuplets(container), rewrite_brackets=False)
        treat_tuplets = trinton.treat_tuplets()
        treat_tuplets(container)
        rhythm_selections = abjad.mutate.eject_contents(container)

        return rhythm_selections

    return rhythm


def rhythm_e(index, stage=1):
    def rhythm(time_signatures):
        container = abjad.Container()
        if stage == 1:
            # duration_numerators = abjad.sequence.flatten(pitch.final_pitch_groups)

            duration_groups = trinton.rotated_sequence(
                pitch.final_pitch_groups, index % len(pitch.final_pitch_groups)
            )

            preprocessing_groups = []

            for group in duration_groups:
                numerator = len(group)
                preprocessing_groups.append(numerator)

            preprocessing_groups = tuple(preprocessing_groups)

            preprocessor = trinton.fuse_sixteenths_preprocessor(
                groups=preprocessing_groups
            )

            if isinstance(time_signatures[0], abjad.TimeSignature):
                new_divisions = [
                    time_signature.duration for time_signature in time_signatures
                ]
            else:
                new_divisions = time_signatures

            tuplet_divisions = preprocessor(new_divisions)

        if stage == 2:
            preprocessor = trinton.fuse_quarters_preprocessor(groups=(1,))

            if isinstance(time_signatures[0], abjad.TimeSignature):
                new_divisions = [
                    time_signature.duration for time_signature in time_signatures
                ]
            else:
                new_divisions = time_signatures

            tuplet_divisions = preprocessor(new_divisions)

        if stage == 3:
            tuplet_divisions = time_signatures

        tuplet_ratio_base = abjad.sequence.flatten(pitch.final_pitch_groups)

        tuplet_ratio_numerators = []

        for _ in tuplet_ratio_base:
            if _ == 0 or _ % 5 == 0 or _ == 9 or _ == 11:
                pass
            else:
                tuplet_ratio_numerators.append(_)

        tuplet_partitions = abjad.select.partition_by_counts(
            tuplet_ratio_numerators,
            [4, 6, 3, 7, 8],
            cyclic=True,
            overhang=True,
        )

        tuplet_ratios = [tuple(partition) for partition in tuplet_partitions]

        tuplet_ratios = trinton.rotated_sequence(
            tuplet_ratios, index % len(tuplet_ratios)
        )

        if stage > 1:
            final_tuplet_ratios = tuplet_ratios

        else:
            final_tuplet_ratios = []
            for i, ratio in enumerate(tuplet_ratios):
                if i % 2 == 1:
                    new_ratio = (-1,)
                    final_tuplet_ratios.append(new_ratio)
                else:
                    final_tuplet_ratios.append(ratio)

        rhythms = rmakers.tuplet(tuplet_divisions, final_tuplet_ratios)
        container.extend(rhythms)

        for tuplet in abjad.select.tuplets(container):
            if isinstance(abjad.select.leaf(tuplet, 0), abjad.Note):
                abjad.beam(tuplet)
                abjad.slur(tuplet)

                abjad.attach(
                    abjad.LilyPondLiteral(r"\my-hack-slash", site="before"),
                    abjad.select.leaf(tuplet, 0),
                )

        start_literal = abjad.LilyPondLiteral(
            [
                r"\override Voice.NoteHead.transparent = ##t",
                r"\override Voice.NoteHead.X-extent = #'(0 . 0)",
                r"\override Voice.NoteHead.no-ledgers = ##t",
                r"\override Voice.Beam.beam-thickness = #0.5",
                r"\override Voice.Beam.length-fraction = #0.85",
                r"\override Voice.TupletBracket.stencil = ##f",
                r"\override Voice.TupletNumber.stencil = ##f",
                r"\override Voice.Rest.transparent = ##t",
                r"\override Voice.Dots.stencil = ##f",
                r"\override Voice.Accidental.stencil = ##f",
                r"\set fontSize = #-3",
            ],
            site="before",
        )

        stop_literal = abjad.LilyPondLiteral(
            [
                r"\revert Voice.NoteHead.transparent",
                r"\revert Voice.NoteHead.X-extent",
                r"\revert Voice.NoteHead.no-ledgers",
                r"\revert Voice.Beam.beam-thickness",
                r"\revert Voice.Beam.length-fraction",
                r"\revert Voice.TupletBracket.stencil",
                r"\revert Voice.TupletNumber.stencil",
                r"\revert Voice.Rest.transparent",
                r"\revert Voice.Dots.stencil",
                r"\revert Voice.Accidental.stencil",
                r"\set fontSize = #-1.3",
            ],
            site="absolute_after",
        )

        abjad.attach(start_literal, container[0])
        rmakers.rewrite_dots(abjad.select.tuplets(container))
        rmakers.rewrite_rest_filled(abjad.select.tuplets(container))
        rhythm_selections = abjad.mutate.eject_contents(container)

        return rhythm_selections

    return rhythm
