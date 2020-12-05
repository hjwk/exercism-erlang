-module(darts).

-export([score/2]).


score(_X, _Y) -> 
    Dist = _X*_X + _Y*_Y,
    if
        Dist =< 1 ->
            10;
        Dist =< 25 ->
             5;
        Dist =< 100 ->
            1;
        true ->
            0
    end.
