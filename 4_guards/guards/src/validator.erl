-module(validator).

-export([both_variables_positive/2, any_variable_positive/2, are_equal/2, compare/2,
         insert_to_animal_lookup_but_no_cats/2]).

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

% If statement with single condition.
are_equal(X, Y) ->
    if X =:= Y ->
           true;
       true ->
           false
    end.

% If statement with multiple conditions.
compare(X, Y) ->
    if X =:= Y ->
           both_values_equal;
       X > Y ->
           first_value_greater;
       X < Y ->
           second_value_greater;
       true ->
           values_cannot_be_compared
    end.

% Case of statement with relatively complex pattern matching.
insert_to_animal_lookup_but_no_cats(X, []) ->
    [X];
insert_to_animal_lookup_but_no_cats({Name, Animal}, Set) ->
    case Animal =:= cat of
        true ->
            % No cats allowed.
            Set;
        false ->
            [{Name, Animal} | Set]
    end.
