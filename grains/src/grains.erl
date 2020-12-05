-module(grains).

-export([square/1, total/0]).

square(1) -> 1;
square(_Square) when _Square > 0, _Square < 65 ->  2 bsl (_Square-2);
square(_) -> {error, "square must be between 1 and 64"}.

total() -> lists:foldl(fun(X, Sum) -> Sum + square(X) end, 0, lists:seq(1, 64)).
