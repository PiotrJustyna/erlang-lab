%%%-------------------------------------------------------------------
%% @doc Name server.
%% @end
%%%-------------------------------------------------------------------

-module(name_server).

-export([init/0, add/2, find/1, handle/2]).

-import(generic_server_1, [rpc/2]).

add(Name, Place) ->
    rpc(name_server, {add, Name, Place}).

find(Name) ->
    rpc(name_server, {find, Name}).

init() ->
    dict:new().

handle({add, Name, Place}, Dictionary) ->
    {ok, dict:store(Name, Place, Dictionary)};
handle({find, Name}, Dictionary) ->
    {dict:find(Name, Dictionary), Dictionary}.
