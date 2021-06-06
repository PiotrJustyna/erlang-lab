# generic_server_1

First generic server. Excercise from:

**Programming Erlang: Software for a Concurrent World (Pragmatic Programmers)**

Chapter 22, The Road to the Generic Server.

## build

```
erlc src/generic_server_1.erl src/name_server.erl
```

## run

```
erl
```

then:

```
generic_server_1:start(name_server, name_server).
name_server:add(joe, "at home").
name_server:find(joe).
```

## todo

* make it work with rebar3
* flesh out documentation