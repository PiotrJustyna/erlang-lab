# generic_server_1

First generic server. Excercise from:

**Programming Erlang: Software for a Concurrent World (Pragmatic Programmers)**

Chapter 22, The Road to the Generic Server.

The purpose of this exercise is to provide a generic server for a `name_server` module.

## build

### vs code

```
ctrl/cmd+shift+b
```

### rebar3

Alternatively, it can also be built using `rebar3` directly:

```
$ rebar3 compile
```

## run

### rebar3

```
$ rebar3 shell
```

Application starts automatically, but if stopped, can be started manually:

```
application:start("", "").
```

then:

```
name_server:add(joe, "at home").
name_server:find(joe).
```

## stop

```
application:stop("").
```

To exit rebar3 shell:

```
ctrl + \
```

## sample output

```
root@7956a4ae4f55:/workspaces/erlang-lab/2_generic_server_1# rebar3 shell
===> Verifying dependencies...
===> Analyzing applications...
===> Compiling generic_server_1
Erlang/OTP 24 [erts-12.0.2] [source] [64-bit] [smp:6:6] [ds:6:6:10] [async-threads:1] [jit]

Eshell V12.0.2  (abort with ^G)
1> ===> Booted generic_server_1
name_server:add(joe, "at home").
ok
2> name_server:find(joe).
{ok,"at home"}
```

## todo

* work on restarting the application