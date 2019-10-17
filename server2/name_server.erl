-module(name_server).
-export([init/0, add/2, find/1, break_me/0, handle/2]).
-import(server2, [rpc/2]).

add(Name, Place) -> rpc(name_server, {add, Name, Place}).
find(Name) -> rpc(name_server, {find, Name}).
break_me() -> rpc(name_server, {break_me}).

init() -> dict:new().
handle({add, Name, Place}, Dict) -> {ok, dict:store(Name, Place, Dict)};
handle({find, Name}, Dict) -> {dict:find(Name, Dict), Dict};
handle(break_me, Dict) -> {dict:update(unknown_key, fun (Old) -> Old end, Dict)}.