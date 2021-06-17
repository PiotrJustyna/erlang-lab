%%%-------------------------------------------------------------------
%% @doc guards public API
%% @end
%%%-------------------------------------------------------------------

-module(guards_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    io:format("~n"),

    io:format("both_variables_positive, positive test: ~s~n",
              [validator:both_variables_positive(1, 2)]),
    io:format("both_variables_positive, negative test: ~s~n",
              [validator:both_variables_positive(-1, 2)]),

    io:format("~n"),

    io:format("any_variable_positive, positive test: ~s~n",
              [validator:any_variable_positive(1, 2)]),
    io:format("any_variable_positive, positive test: ~s~n",
              [validator:any_variable_positive(-1, 2)]),
    io:format("any_variable_positive, negative test: ~s~n",
            [validator:any_variable_positive(-1, -2)]),

    io:format("~n"),

    io:format("are_equal, positive test: ~s~n", [validator:are_equal(1, 1)]),
    io:format("are_equal, negative test: ~s~n", [validator:are_equal(1, 2)]),

    io:format("~n"),

    io:format("compare, equal test: ~s~n", [validator:compare(1, 1)]),
    io:format("compare, X > Y test: ~s~n", [validator:compare(2, 1)]),
    io:format("compare, X < Y test: ~s~n", [validator:compare(1, 2)]),

    io:format("~n"),

    OneAnimal = validator:insert_to_animal_lookup_but_no_cats({"Tiddles", turtle}, []),
    io:format("insert_to_animal_lookup_but_no_cats, turtle test: ~p~n", [OneAnimal]),

    TwoAnimals = validator:insert_to_animal_lookup_but_no_cats({"Danny", dog}, OneAnimal),
    io:format("insert_to_animal_lookup_but_no_cats, dog test: ~p~n", [TwoAnimals]),

    StillTwoAnimals = validator:insert_to_animal_lookup_but_no_cats({"Candy", cat}, TwoAnimals),
    io:format("insert_to_animal_lookup_but_no_cats, cat test: ~p~n", [StillTwoAnimals]),

    ThreeAnimals = validator:insert_to_animal_lookup_but_no_cats({"Pedro", pony}, StillTwoAnimals),
    io:format("insert_to_animal_lookup_but_no_cats, pony test: ~p~n", [ThreeAnimals]),

    guards_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
