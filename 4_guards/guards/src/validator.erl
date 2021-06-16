-module(validator).

-export([both_variables_positive/2, any_variable_positive/2]).

%% The key here is the comma in the guard - it acts as 'andalso'.
both_variables_positive(X, Y) when X >= 0, Y >= 0 ->
    true;
both_variables_positive(_, _) ->
    false.

%% The key here is the semicolon in the guard - it acts as 'orelse'.
any_variable_positive(X, Y) when X >= 0; Y >= 0 ->
    true;
any_variable_positive(_, _) ->
    false.

are_equal(X, Y) ->
    if X=:=Y -> true;
    true -> false
end.