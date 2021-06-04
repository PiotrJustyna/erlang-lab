# hello_world

Just a hello world console application.

## build

```
$ rebar3 compile
```

## run

```
$ rebar3 shell
```

Application starts automatically, but if stopped, can be started manually:

```
application:start(hello_world).
```

### output

```
root@6fb283d0fa53:/workspaces/erlang-lab/hello_world# rebar3 shell
===> Verifying dependencies...
===> Analyzing applications...
===> Compiling hello_world
Erlang/OTP 24 [erts-12.0.2] [source] [64-bit] [smp:6:6] [ds:6:6:10] [async-threads:1] [jit]

Eshell V12.0.2  (abort with ^G)
1> ===> Booted hello_world
application:stop(hello_world).
=INFO REPORT==== 4-Jun-2021::19:19:53.674376 ===
    application: hello_world
    exited: stopped
    type: temporary

ok
```

## stop

```
application:stop(hello_world).
```

To exit rebar3 shell:

```
ctrl + \
```
