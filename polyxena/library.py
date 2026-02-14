import abjad
import baca
import evans
import trinton
import itertools
import polyxena
from sympy import combinatorics

# score


def polyxena_score(time_signatures):
    score = trinton.make_empty_score(
        instruments=[
            abjad.Cello(),
            abjad.Cello(),
            abjad.Guitar(),
            abjad.Guitar(),
        ],
        groups=[2, 2],
        staff_types=[
            ["disappearingStaff", "Staff"],
            ["disappearingStaff", "Staff"],
        ],
        time_signatures=time_signatures,
        filler=abjad.Skip,
    )

    return score


# immutables

pyramid_1 = combinatorics.polyhedron.tetrahedron

tetrahedron_corners_list = []

for _ in range(0, 7):
    pyramid_1.rotate(_)
    corners = pyramid_1.corners
    for corner in corners:
        tetrahedron_corners_list.append(corner)

retrograded_tetrahedron_corners_list = tetrahedron_corners_list[::-1]

# dynamics

_cypher_to_dynamic = {8: '"f"', 7: '"mf"', 6: '"mp"', 4: '"p"', 3: '"pp"'}

dynamic_traversal_root = [4, 6, 3, 7, 8, 6, 3, 7, 8, 4, 3, 7, 8, 4, 6]

partitioned_traversals = abjad.select.partition_by_counts(
    dynamic_traversal_root,
    [4, 6, 3, 7],
    cyclic=True,
    overhang=True,
)

helianthated_dynamics = baca.sequence.helianthate(partitioned_traversals, n=-1, m=1)

dynamic_sequence = abjad.sequence.flatten(helianthated_dynamics)


def attach_patterned_dynamics(
    index=0,
    swells=False,
    breath=False,
    selector=trinton.logical_ties(first=True, pitched=True, grace=False),
):
    def attach_dynamics(argument):
        selections = selector(argument)

        dynamics = trinton.rotated_sequence(
            dynamic_sequence, index % len(dynamic_sequence)
        )

        index_counter = index
        for selection, dynamic in zip(selections, dynamics):
            dynamic_object = abjad.Dynamic(_cypher_to_dynamic[dynamic])
            if breath is True:
                dynamic_object = abjad.bundle(
                    dynamic_object, r"- \tweak color #(x11-color 'LightSlateBlue)"
                )

            abjad.attach(dynamic_object, selection)

            if swells is True:
                limit = len(selections) - 1
                limit = limit + index
                if index_counter != limit:
                    next_dynamic = dynamics[index_counter + 1]
                    if dynamic > next_dynamic:
                        start_hairpin = abjad.StartHairpin(">")
                        start_hairpin = abjad.bundle(
                            start_hairpin,
                            r"- \tweak color #(x11-color 'LightSlateBlue)",
                        )
                        abjad.attach(start_hairpin, selection)
                    else:
                        start_hairpin = abjad.StartHairpin("<")
                        start_hairpin = abjad.bundle(
                            start_hairpin,
                            r"- \tweak color #(x11-color 'LightSlateBlue)",
                        )
                        abjad.attach(start_hairpin, selection)

            index_counter += 1

    return attach_dynamics


# notation tools


def change_staff_type(
    selector, staff_type, reversion_line_count=5, auto_reversion=True
):
    def change(argument):
        if staff_type != "tablature" and staff_type != "stringing":
            raise Exception("Available staff types are tablature and stringing.")
        selections = selector(argument)

        for i, selection in enumerate(selections):
            if i % 2 == 1:
                if auto_reversion is True:
                    revert_literal = abjad.LilyPondLiteral(
                        [
                            r"\revert Staff.Clef.stencil",
                            r"\revert Staff.StaffSymbol.line-positions",
                            rf"\staff-line-count {reversion_line_count}",
                            r"\revert Staff.BarLine.bar-extent",
                            r"\revert Staff.Accidental.stencil",
                            r"\revert Staff.NoteHead.no-ledgers",
                        ],
                        site="absolute_after",
                    )

                    abjad.attach(revert_literal, selection)

            else:
                _staff_type_to_literal_strings = {
                    "tablature": [
                        r"\override Staff.Clef.stencil = #ly:text-interface::print",
                        r"\override Staff.Clef.text = \string-clef",
                        r"\staff-line-count 4",
                        r"\override Staff.StaffSymbol.line-positions = #'(9 7 0 -9)",
                        r"\override Staff.BarLine.bar-extent = #'(-4.5 . 4.5)",
                        # r"\override Rest.staff-position = #0",
                        r"\override Staff.Accidental.stencil = ##f",
                        r"\override Staff.NoteHead.no-ledgers = ##t",
                    ],
                    "stringing": [
                        r"\override Staff.Clef.stencil = #ly:text-interface::print",
                        r"\override Staff.Clef.text = \stringing-clef",
                        r"\staff-line-count 4",
                    ],
                }

                literal_strings = _staff_type_to_literal_strings[staff_type]
                staff_literal = abjad.LilyPondLiteral(literal_strings, site="before")
                abjad.attach(staff_literal, selection)

    return change


def graphic_bow_pressure_spanner(
    selector=trinton.logical_ties(first=True, pitched=True),
    peaks=[0, 1, 4, 2],
    peak_direction=abjad.UP,
    anchor_point_step_sizes=[1, 0.5, 1, 0.25],  # must be greater than 1
    divisions=[4, 5],
    counts=[1, 3, 1, 2],
    cyclic=True,
    left_broken_text=None,
    left_text=None,
    right_padding=None,
    right_text=None,
    padding=2,
    forget=False,
):
    if peak_direction == abjad.UP:
        peaks = [0 - _ for _ in peaks]
    cyc_peaks = evans.CyclicList(peaks, forget=forget)
    cyc_divisions = evans.CyclicList(divisions, forget=forget)
    cyc_anchor_points = evans.CyclicList(anchor_point_step_sizes, forget=forget)

    def returned_function(selections):
        ties = selector(selections)
        if counts is not None:
            groups = abjad.select.partition_by_counts(
                ties, counts, cyclic=cyclic, overhang=cyclic
            )
            for group in groups:
                final = abjad.select.leaf(group, -1)
                next_leaf = abjad.get.leaf(final, 1)
                group.append(next_leaf)
            for group in groups:
                current_divisions = cyc_divisions(r=1)[0]
                current_peaks = cyc_peaks(r=current_divisions)
                current_anchor_point_step_sizes = cyc_anchor_points(
                    r=current_divisions - 1
                )
                normalized_step_sizes = evans.Sequence(
                    current_anchor_point_step_sizes
                ).normalize_to_sum(1)
                summed_steps = abjad.math.cumulative_sums(normalized_step_sizes)
                zipped_peaks_and_positions = [
                    _ for _ in zip(summed_steps, current_peaks)
                ]
                pairs = str(
                    tuple([f"({x} . {y})" for x, y in zipped_peaks_and_positions])
                )
                current_peaks = pairs.replace(",", "")
                current_peaks = current_peaks.replace("'", "")
                constructed_string = rf"\startBowSpan #'{current_peaks}"
                start_indicator = abjad.StartTextSpan(
                    command=constructed_string,
                    left_broken_text=left_broken_text,
                    left_text=left_text,
                    right_padding=right_padding,
                    right_text=right_text,
                )
                bundle = abjad.bundle(
                    start_indicator,
                    # abjad.Tweak(rf"- \tweak padding {padding}"),
                    abjad.Tweak(r"- \tweak Y-extent ##f"),
                    abjad.Tweak(rf"- \tweak Y-offset {padding}"),
                    abjad.Tweak(r"- \tweak color #(css-color 'darkred)"),
                )
                stop_indicator = abjad.StopTextSpan(
                    command=r"\stopBowSpan",
                )
                abjad.attach(bundle, abjad.select.leaf(group, 0))
                abjad.attach(stop_indicator, abjad.select.leaf(group, -1))

    return returned_function


def color_voice(color, selector=trinton.select_leaves_by_index([0, -1])):
    def coloring(argument):
        selections = selector(argument)

        start_literal = abjad.LilyPondLiteral(
            [
                rf"\override Voice.NoteHead.color = #{color}",
                rf"\override Voice.Dots.color = #{color}",
                rf"\override Voice.Stem.color = #{color}",
                rf"\override Voice.Beam.color = #{color}",
                rf"\override Voice.Rest.color = #{color}",
                rf"\override Voice.Tie.color = #{color}",
                rf"\override Voice.TupletBracket.color = #{color}",
                rf"\override Voice.TupletNumber.color = #{color}",
            ],
            site="before",
        )

        stop_literal = abjad.LilyPondLiteral(
            [
                r"\revert Voice.NoteHead.color",
                r"\revert Voice.Dots.color",
                r"\revert Voice.Stem.color",
                r"\revert Voice.Beam.color",
                r"\revert Voice.Rest.color",
                r"\revert Voice.Tie.color",
                r"\revert Voice.TupletBracket.color",
                r"\revert Voice.TupletNumber.color",
            ],
            site="absolute_after",
        )

        abjad.attach(start_literal, selections[0])
        abjad.attach(stop_literal, selections[-1])

    return coloring


# pitch tools


# markups


def half_note_signifier(
    selector=trinton.logical_ties(pitched=True, grace=False), direction=abjad.UP
):
    def attach_markups(argument):
        selections = selector(argument)

        for selection in selections:
            note_duration = abjad.get.duration(selection)

            if note_duration > abjad.Duration(
                (15, 32)
            ) and note_duration < abjad.Duration(abjad.Duration((1, 1))):
                _numerator_to_dot_amount = {1: 0, 3: 1, 7: 2, 15: 3}

                dots = []

                numerator = note_duration.numerator

                dot_amount = _numerator_to_dot_amount[numerator]

                for _ in range(0, dot_amount):
                    dots.append(".")

                dots = "".join(dots)

                note_markup_string = (
                    rf"""\markup {{ \hspace #-2 {{ ( \note {{2}} #2 {dots} ) }} }}"""
                )

                note_markup = abjad.Markup(note_markup_string)

                abjad.attach(
                    note_markup, abjad.select.leaf(selection, 0), direction=direction
                )

    return attach_markups


all_instrument_names = [
    abjad.InstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Gambe }'
        ),
    ),
    abjad.InstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { Theorbe }'
        ),
    ),
]

all_short_instrument_names = [
    abjad.ShortInstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { gambe }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #4 \override #\'(font-name . "Bodoni72 Book Italic") { theorbe }'
        ),
    ),
]


def write_instrument_names(score):
    for voice_name, markup in zip(
        ["cello 1 voice", "guitar 1 voice"],
        all_instrument_names,
    ):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
        )


def write_short_instrument_names(score):
    for voice_name, markup in zip(
        [
            "cello 1 voice",
            "guitar 1 voice",
        ],
        all_short_instrument_names,
    ):
        trinton.attach(
            voice=score[voice_name],
            leaves=[0],
            attachment=markup,
            tag=abjad.Tag("+SCORE"),
        )
