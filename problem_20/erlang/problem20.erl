-module(problem20).
-export([get_answer/0, get_answer2/0]).

product() ->
    %% borrowed from the lists man page
    lists:foldl(fun(X, Prod) -> X * Prod end, 1, lists:seq(1,100)).

get_answer() ->
    lists:foldl(fun(X, Sum) -> erlang:list_to_integer([X]) + Sum end,
                0,
                erlang:integer_to_list(product())).

get_answer2() ->
    lists:sum(lists:map(fun(X) -> erlang:list_to_integer([X]) end,
                        erlang:integer_to_list(product()))).
