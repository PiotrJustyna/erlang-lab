# guards

Exploring guards to memorize their exotic syntax.

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

from the terminal while in the `guards` directory.

## stop

Simply terminate rebar3 shell:

```
ctrl + \
```

## output

```
todo
```

## notes

As noticed in example `3_modules` the `stop/1` does nothing in the default rebar3 template... Application cannot be started many times, the `stop/1` can be executed many times with no effect and the application needs to be killed manually.