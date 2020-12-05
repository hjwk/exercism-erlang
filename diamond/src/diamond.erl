-module(diamond).

-export([rows/1]).


rows(_Letter) when _Letter =:= "A" -> ["A"]; 
rows(_Letter) ->
    Seq = lists:seq($A, asInteger(_Letter)),
    Half = lists:map()row(Letter, length(Seq)) || Letter <- Seq],
    Half.

row(_Letter, _Distance) when _Letter =:= "A" ->
    string:pad("A", 2*_Distance + 1, both);
row(_Letter, _Distance) ->
    Row = _Letter -  $A,
    NumSpaces = _Distance - Row,
    OuterSpaces = lists:duplicate(NumSpaces, " "),
    Center = lists:duplicate(2*NumSpaces+1, " "),
    OuterSpaces ++ [_Letter] ++ Center ++ [_Letter] ++ OuterSpaces.

asInteger(_Letter) ->  lists:nth(1, _Letter).