-module(series).

-export([slices/2]).

slices(_SliceLength, _Series) when _SliceLength =< 0 -> erlang:error(badarg);
slices(_SliceLength, _Series) when _SliceLength > length(_Series) -> erlang:error(badarg);
slices(_SliceLength, _Series) -> 
    [string:slice(_Series,X,_SliceLength) || X <- lists:seq(0, length(_Series) - _SliceLength)].
