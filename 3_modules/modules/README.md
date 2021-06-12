# modules

Fun with modules.

## build

```
$ rebar3 compile
```

or

```
[ctrl/cmd]+shift+b
```

## run

This is actually the preferred way to use the application. Just execute:

```
rebar3 shell
```

from the terminal while in the `modules` directory.

## stop

Simply terminate rebar3 shell:

```
ctrl + \
```

## output

```
root@d9afc5fa06af:/workspaces/erlang-lab/3_modules/modules# rebar3 shell
===> Verifying dependencies...
===> Analyzing applications...
===> Compiling modules
Erlang/OTP 24 [erts-12.0.2] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [jit]

Eshell V12.0.2  (abort with ^G)
1> Hello, world!
3
===> Booted modules
```

## notes

Just noticed that the `stop/1` does nothing in the default rebar3 template... Application cannot be started many times, the `stop/1` can be executed many times with no effect and the application needs to be killed manually.