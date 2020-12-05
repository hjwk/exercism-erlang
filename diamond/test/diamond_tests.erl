%% Generated with 'testgen v0.2.0'
%% Revision 1 of the exercises generator was used
%% https://github.com/exercism/problem-specifications/raw/42dd0cea20498fd544b152c4e2c0a419bb7e266a/exercises/diamond/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(diamond_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_degenerate_case_with_a_single_a_row_test_'() ->
    Expected=[
        "A"
    ],
    {"Degenerate case with a single 'A' row",
     ?_assertEqual(Expected, diamond:rows("A"))}.

'2_degenerate_case_with_no_row_containing_3_distinct_groups_of_spaces_test_'() ->
    Expected=[
        " A ",
        "B B",
        " A "
    ],
    {"Degenerate case with no row containing "
     "3 distinct groups of spaces",
     ?_assertEqual(Expected, diamond:rows("B"))}.

'3_smallest_non_degenerate_case_with_odd_diamond_side_length_test_'() ->
    Expected=[
        "  A  ",
        " B B ",
        "C   C",
        " B B ",
        "  A  "
    ],
    {"Smallest non-degenerate case with odd "
     "diamond side length",
     ?_assertEqual(Expected, diamond:rows("C"))}.

'4_smallest_non_degenerate_case_with_even_diamond_side_length_test_'() ->
    Expected=[
        "   A   ",
        "  B B  ",
        " C   C ",
        "D     D",
        " C   C ",
        "  B B  ",
        "   A   "
    ],
    {"Smallest non-degenerate case with even "
     "diamond side length",
     ?_assertEqual(Expected, diamond:rows("D"))}.

'5_largest_possible_diamond_test_'() ->
    Expected=[
        "                         A                         ",
        "                        B B                        ",
        "                       C   C                       ",
        "                      D     D                      ",
        "                     E       E                     ",
        "                    F         F                    ",
        "                   G           G                   ",
        "                  H             H                  ",
        "                 I               I                 ",
        "                J                 J                ",
        "               K                   K               ",
        "              L                     L              ",
        "             M                       M             ",
        "            N                         N            ",
        "           O                           O           ",
        "          P                             P          ",
        "         Q                               Q         ",
        "        R                                 R        ",
        "       S                                   S       ",
        "      T                                     T      ",
        "     U                                       U     ",
        "    V                                         V    ",
        "   W                                           W   ",
        "  X                                             X  ",
        " Y                                               Y ",
        "Z                                                 Z",
        " Y                                               Y ",
        "  X                                             X  ",
        "   W                                           W   ",
        "    V                                         V    ",
        "     U                                       U     ",
        "      T                                     T      ",
        "       S                                   S       ",
        "        R                                 R        ",
        "         Q                               Q         ",
        "          P                             P          ",
        "           O                           O           ",
        "            N                         N            ",
        "             M                       M             ",
        "              L                     L              ",
        "               K                   K               ",
        "                J                 J                ",
        "                 I               I                 ",
        "                  H             H                  ",
        "                   G           G                   ",
        "                    F         F                    ",
        "                     E       E                     ",
        "                      D     D                      ",
        "                       C   C                       ",
        "                        B B                        ",
        "                         A                         "
    ],
    {"Largest possible diamond",
     ?_assertEqual(Expected, diamond:rows("Z"))}.
