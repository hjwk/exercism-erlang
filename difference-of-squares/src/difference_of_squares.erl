-module(difference_of_squares).

-export([difference_of_squares/1, square_of_sum/1, sum_of_squares/1]).


difference_of_squares(Number) -> square_of_sum(Number) - sum_of_squares(Number).

square_of_sum(1) -> 1;
square_of_sum(Number) -> square_of_sum(Number - 1) + Number*Number*Number.

sum_of_squares(1) -> 1;
sum_of_squares(Number) -> sum_of_squares(Number - 1) + Number*Number.
