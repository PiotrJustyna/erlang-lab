%%%-------------------------------------------------------------------
%% @doc generic_server_1 public API
%% @end
%%%-------------------------------------------------------------------

-module(generic_server_1).

-behaviour(application).

-export([start/2, stop/1, rpc/2]).

start(_StartType, _StartArgs) ->
    register(name_server,
             spawn(fun() -> loop(name_server, name_server, name_server:init()) end)),
    generic_server_1_sup:start_link().

stop(_State) ->
    unregister(name_server),
    ok.

rpc(Name, Request) ->
    Name ! {self(), Request},
    receive
        {Name, Response} ->
            Response
    end.

%% internal functions

loop(Name, Mod, State) ->
    receive
        {From, Request} ->
            {Response, State1} = Mod:handle(Request, State),
            From ! {Name, Response},
            loop(Name, Mod, State1)
    end.
