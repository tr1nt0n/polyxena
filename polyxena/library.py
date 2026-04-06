import abjad
import baca
import evans
import trinton
import itertools
import numpy
import polyxena
import random
import statistics
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


def multiple_muting(selector=abjad.select.chords, closed_fundamental=False):
    def change_noteheads(argument):
        selections = selector(argument)

        for chord in abjad.select.chords(selections):
            for leaf in abjad.select.leaves(chord):
                leaf_duration = abjad.get.duration(leaf, preprolated=True)
                if leaf_duration > abjad.Duration(
                    (7, 16)
                ) and leaf_duration > abjad.Duration((7, 32)):
                    head_shape = "harmonic-mixed"
                else:
                    head_shape = "harmonic"

                if closed_fundamental is False:
                    for head in leaf.note_heads:
                        abjad.tweak(head, rf"\tweak style #'{head_shape}")
                else:
                    noteheads = leaf.note_heads
                    notehead_pitches = [head.named_pitch.number for head in noteheads]
                    notehead_pitches.sort()
                    lowest_pitch = notehead_pitches[0]

                    for head in noteheads:
                        if head.named_pitch.number != lowest_pitch:
                            abjad.tweak(head, rf"\tweak style #'{head_shape}")

                noteheads = leaf.note_heads
                notehead_pitches = [head.named_pitch.number for head in noteheads]
                notehead_pitches.sort()
                highest_pitch = notehead_pitches[-1]

                for notehead in noteheads:
                    if notehead.named_pitch.number != highest_pitch:
                        abjad.tweak(notehead, r"\tweak Accidental.font-size #-2.5")
                        abjad.tweak(
                            notehead,
                            r"\tweak Accidental.color #(x11-color 'LightSlateBlue)",
                        )
                        # abjad.tweak(notehead, r"\tweak Accidental.parenthesized ##t")
                        abjad.tweak(
                            notehead, r"\tweak color #(x11-color 'LightSlateBlue)"
                        )
                        abjad.tweak(notehead, r"\tweak font-size #-2.5")

    return change_noteheads


def pressure_trills(
    head=None,
    trill_pitch=None,
    padding=7,
    right_padding=None,
    bound_details=None,
    multimuting=False,
    closed_fundamental=False,
    selector=trinton.select_leaves_by_index([0, -1], pitched=True),
):
    def trills(argument):
        selections = selector(argument)

        it = iter(selections)
        tups = [*zip(it, it)]

        if trill_pitch is None:
            _head_to_character = {
                "harmonic-open": "\char ##xe614 | \char ##xe0d8",
                "cross": "\char ##xe614 | \char ##xe0a9",
            }

            start_trill = abjad.bundle(
                abjad.StartTrillSpan(),
                rf"""- \tweak bound-details.left.text \markup {{  \fontsize #5 \override #'(font-name . "ekmelos") {{ {_head_to_character[head]} }} }}""",
                rf"- \tweak padding {padding}",
            )

        else:
            trill_pitch_string = "#(lambda (grob) (grob-interpret-markup grob"
            if head == "cross":
                trill_pitch_string += (
                    r""" #{ \markup \musicglyph #"noteheads.s2cross" #}))"""
                )
            if head == "harmonic":
                trill_pitch_string += (
                    r""" #{ \markup \musicglyph #"noteheads.s0harmonic" #}))"""
                )

            if len(trill_pitch) > 1:
                start_span_pitch = None
                chord_string = r"<"
                for pitch in trill_pitch:
                    # chord_string += " \parenthesize "
                    chord_string += pitch
                    chord_string += " "
                chord_string += ">16"
                chord = abjad.Chord(chord_string)
                aftergrace_container = abjad.AfterGraceContainer([chord])
                alteration_literal = abjad.LilyPondLiteral(
                    [
                        r"\once \override Stem.stencil = ##f",
                        r"\once \override Flag.stencil = ##f",
                        r"\once \override Dots.stencil = ##f",
                        r"#(define afterGraceFraction (cons 1 16))",
                    ],
                    site="before",
                )

                reset_literal = abjad.LilyPondLiteral(
                    r"#(define afterGraceFraction (cons 15 16))", site="absolute_after"
                )

                abjad.attach(
                    alteration_literal, abjad.select.leaf(aftergrace_container, 0)
                )
                # abjad.attach(reset_literal, abjad.select.leaf(aftergrace_container, -1))

                grace_leaves = abjad.select.leaves(aftergrace_container)

                for leaf in grace_leaves:
                    for leaf_head in leaf.note_heads:
                        leaf_head.is_parenthesized = True
                        if head is not None and multimuting is False:
                            abjad.tweak(leaf_head, rf"\tweak style #'{head}")

                if multimuting is True:
                    multiple_muting_command = multiple_muting(
                        selector=abjad.select.chords,
                        closed_fundamental=closed_fundamental,
                    )
                    multiple_muting_command(aftergrace_container)

                for tup in tups:
                    abjad.attach(aftergrace_container, tup[0])

            else:
                start_span_pitch = abjad.NamedPitch(trill_pitch[0])

            start_trill = abjad.bundle(
                abjad.StartTrillSpan(pitch=start_span_pitch),
                rf"- \tweak TrillPitchHead.stencil {trill_pitch_string}",
                r"- \tweak TrillPitchHead.whiteout-style #'outline",
                r"- \tweak TrillPitchHead.whiteout 1",
                r"- \tweak TrillPitchHead.layer 5",
                r"- \tweak TrillPitchHead.no-ledgers ##t",
                r"- \tweak TrillPitchAccidental.stencil ##f",
            )

        if right_padding is not None:
            start_trill = abjad.bundle(
                start_trill, rf"- \tweak bound-details.right.padding #{right_padding}"
            )

        if bound_details is not None:
            start_trill = abjad.bundle(
                start_trill,
                r"- \tweak Y-extent ##f",
                rf"""- \tweak bound-details.left.Y #{bound_details[0]}""",
                rf"""- \tweak bound-details.right.Y #{bound_details[-1]}""",
            )

        stop_trill = abjad.StopTrillSpan()

        for tup in tups:
            abjad.attach(start_trill, tup[0])

            abjad.attach(stop_trill, tup[-1])

    return trills


def stringing_noteheads(
    notehead_list, selector=trinton.logical_ties(first=True, pitched=True)
):
    def noteheads(argument):
        selections = selector(argument)
        ties = abjad.select.logical_ties(selections)

        for selection, notehead in zip(ties, notehead_list):
            if isinstance(abjad.select.leaf(selection, 0), abjad.Chord):
                for leaf in abjad.select.leaves(selection):
                    noteheads = leaf.note_heads

                    for head, string_number in zip(noteheads, notehead):
                        for tweak in [
                            abjad.Tweak(
                                r"\tweak NoteHead.stencil #ly:text-interface::print"
                            ),
                            abjad.Tweak(
                                rf"\tweak NoteHead.text \markup {{ \fontsize #-1 {{ {string_number} }} }}"
                            ),
                        ]:
                            abjad.tweak(head, tweak)

            else:
                for leaf in abjad.select.leaves(selection):
                    for tweak in [
                        abjad.Tweak(
                            r"\tweak NoteHead.stencil #ly:text-interface::print"
                        ),
                        abjad.Tweak(
                            rf"\tweak NoteHead.text \markup {{ \fontsize #-1 {{ {notehead} }} }}"
                        ),
                    ]:
                        abjad.tweak(leaf.note_head, tweak)

            for leaf in abjad.select.leaves(selection):
                abjad.attach(
                    abjad.LilyPondLiteral(
                        r"""\once \override NoteHead.stem-attachment = #(lambda (grob)
                            (let* ((thickness (ly:staff-symbol-line-thickness grob))
                                  (stem (ly:grob-object grob 'stem))
                                  (dir (ly:grob-property stem 'direction UP)))
                              (if (= dir UP)
                                  (cons
                                      0
                                      0.9
                                  )
                                  (if (= dir DOWN)
                                      (cons
                                          0
                                          -0.9
                                      )
                                  )
                              )
                            )
                        )""",
                        site="before",
                    ),
                    leaf,
                )

    return noteheads


def fingering_markup(fingering):
    return rf"""\markup {{ \override #'(whiteout-style . "outline") \override #'(whiteout . 1) \override #'(layer . 27) {{ \whiteout \circle {{ " {fingering} " }} }} }}"""


def articulate_bariolage(
    index, seed=7, selector=trinton.logical_ties(pitched=True, grace=False)
):
    def slur(argument):
        selections = selector(argument)
        starting_pitches = polyxena.pitch.return_pitch_list(index=index)

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
        for string_range in string_ranges:
            numpy.random.seed(seed)
            order_array = numpy.random.permutation(len(string_range))
            order_list = order_array.tolist()

            new_range = []

            for _ in order_array:
                new_range.append(string_range[_])

            reversed_range = new_range[::-1]

            reversed_range = reversed_range[1:]

            for _ in reversed_range:
                new_range.append(_)

            string_figurations.append(new_range)

        partitioned_selections = abjad.select.partition_by_counts(
            selections,
            [len(string_figuration) for string_figuration in string_figurations],
            cyclic=True,
            overhang=True,
        )

        for selection_partition in partitioned_selections:
            abjad.slur(selection_partition)

            glissando_command = trinton.continuous_glissando(
                selector=trinton.selectors.logical_ties(),
                no_ties=False,
                tweaks=None,
                zero_padding=True,
                invisible_center=False,
                slur=False,
            )
            glissando_command(selection_partition)

    return slur


def hammer_on_stem(selector):
    def attach(argument):
        selections = selector(argument)

        for selection in selections:
            selection_duration = abjad.get.duration(selection, preprolated=True)
            duration_denominator = selection_duration.denominator
            stem_tremolo = abjad.bundle(
                abjad.StemTremolo(duration_denominator * 2),
                r"- \tweak stencil #ly:text-interface::print",
                r"- \tweak text \markup { \hspace #-1 H }",
                r"- \tweak X-extent #'(0 . 0)",
                r"- \tweak Y-extent #'(0 . 0)",
            )

            abjad.attach(stem_tremolo, selection)

    return attach


def footnote_command(
    text_string="",
    selector=trinton.select_leaves_by_index([0]),
    position_pair=(-2, 1),
    site="before",
):
    def footnote(argument):
        selections = selector(argument)

        if isinstance(text_string, list):
            text = [f"\line {{ {_} }} " for _ in text_string]
            text = "".join(text)
            footnote = rf"""\footnote #'({position_pair[0]} . {position_pair[-1]}) \markup \fontsize #1 {{ \override #'(font-name . "Bodoni72 Book Italic") {{ \column {{ {text} }} }} }}"""
        else:
            footnote = rf"""\footnote #'({position_pair[0]} . {position_pair[-1]}) \markup \fontsize #1 {{ \override #'(font-name . "Bodoni72 Book Italic") {{ \column {{ " {text_string} " }} }} }}"""

        for selection in selections:
            footnote = abjad.LilyPondLiteral(footnote, site=site)
            abjad.attach(footnote, selection)

    return footnote


def change_staff_type(
    selector,
    staff_type,
    auto_reversion=True,
    reversion_line_count=5,
    reversion_clef=None,
    force_clef=True,
):
    def change(argument):
        if (
            staff_type != "tablature"
            and staff_type != "stringing gambe"
            and staff_type != "stringing theorbe"
            and staff_type != "rasgueado"
            and staff_type != "reversion"
            and staff_type != "twisting"
        ):
            raise Exception(
                "Available staff types are tablature, stringing gambe, tringing theorbe, rasgueado, twisting and reversion"
            )
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
                if staff_type != "reversion":
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
                        "stringing gambe": [
                            r"\override Staff.Clef.stencil = #ly:text-interface::print",
                            r"\override Staff.Clef.text = \seven-string-clef",
                            r"\staff-line-count 7",
                            r"\override Staff.Accidental.stencil = ##f",
                            r"\override Staff.NoteHead.no-ledgers = ##t",
                        ],
                        "stringing theorbe": [
                            r"\override Staff.Clef.stencil = #ly:text-interface::print",
                            r"\override Staff.Clef.text = \fourteen-string-clef",
                            r"\staff-line-count 14",
                            r"\override Staff.Accidental.stencil = ##f",
                            r"\override Staff.NoteHead.no-ledgers = ##t",
                        ],
                        "rasgueado": [
                            r"\override Staff.Clef.stencil = #ly:text-interface::print",
                            r"\override Staff.Clef.text = \rasgueado-clef",
                            r"\override Staff.StaffSymbol.line-positions = #'(9 0 -9)",
                            r"\staff-line-count 3",
                            r"\override Staff.Accidental.stencil = ##f",
                            r"\override Staff.NoteHead.no-ledgers = ##t",
                        ],
                        "twisting": [
                            r"\override Staff.Clef.stencil = #ly:text-interface::print",
                            r"\override Staff.Clef.text = \twisting-clef",
                            r"\staff-line-count 4",
                            r"\override Staff.StaffSymbol.line-positions = #'(5 0 -5)",
                            r"\override Staff.BarLine.bar-extent = #'(-2.5 . 2.5)",
                            # r"\override Rest.staff-position = #0",
                            r"\override Staff.Accidental.stencil = ##f",
                            r"\override Staff.NoteHead.no-ledgers = ##t",
                        ],
                    }

                    if staff_type != "tablature":
                        clef = abjad.Clef("percussion")
                    else:
                        clef = abjad.Clef("treble")

                    literal_strings = _staff_type_to_literal_strings[staff_type]
                    staff_literal = abjad.LilyPondLiteral(
                        literal_strings, site="before"
                    )
                    abjad.attach(staff_literal, selection)
                    abjad.attach(clef, selection)
                    abjad.attach(
                        abjad.LilyPondLiteral(
                            r"\set Staff.forceClef = ##t", site="before"
                        ),
                        selection,
                    )
                    abjad.attach(
                        abjad.LilyPondLiteral(
                            r"\set Staff.forceClef = ##f", site="absolute_after"
                        ),
                        selection,
                    )
                if staff_type == "reversion":
                    revert_literal = abjad.LilyPondLiteral(
                        [
                            r"\revert Staff.Clef.stencil",
                            r"\revert Staff.StaffSymbol.line-positions",
                            rf"\staff-line-count {reversion_line_count}",
                            r"\revert Staff.BarLine.bar-extent",
                            r"\revert Staff.Accidental.stencil",
                            r"\revert Staff.NoteHead.no-ledgers",
                        ],
                        site="before",
                    )
                    abjad.attach(revert_literal, selection)
                    abjad.attach(abjad.Clef(reversion_clef), selection)
                    if force_clef is True:
                        abjad.attach(
                            abjad.LilyPondLiteral(
                                r"\set Staff.forceClef = ##t", site="before"
                            ),
                            selection,
                        )
                        abjad.attach(
                            abjad.LilyPondLiteral(
                                r"\set Staff.forceClef = ##f", site="absolute_after"
                            ),
                            selection,
                        )

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
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Viola da Gamba }'
        ),
    ),
    abjad.InstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { Theorbo }'
        ),
    ),
]

all_short_instrument_names = [
    abjad.ShortInstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { viol. }'
        ),
    ),
    abjad.ShortInstrumentName(
        context="GrandStaff",
        markup=abjad.Markup(
            '\markup \\fontsize #2 \override #\'(font-name . "Bodoni72 Book Italic") { thb. }'
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
