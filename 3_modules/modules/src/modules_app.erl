%%%-------------------------------------------------------------------
%% @doc modules public API
%% @end
%%%-------------------------------------------------------------------

-module(modules_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    useless:hello(),
    io:format("~b~n", [useless:add(1, 2)]),
    modules_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
