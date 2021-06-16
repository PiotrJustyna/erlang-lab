# guards

Exploring:

* guards
* if statements

to memorize their exotic syntax.

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
root@7956a4ae4f55:/workspaces/erlang-lab/4_guards/guards# rebar3 shell
===> Verifying dependencies...
===> Analyzing applications...
===> Compiling guards
Erlang/OTP 24 [erts-12.0.2] [source] [64-bit] [smp:6:6] [ds:6:6:10] [async-threads:1] [jit]

Eshell V12.0.2  (abort with ^G)
1> 
both_variables_positive, positive test: true
both_variables_positive, negative test: false

any_variable_positive, positive test: true
any_variable_positive, positive test: true
any_variable_positive, negative test: false

are_equal, positive test: true
are_equal, negative test: false

compare, equal test: both_values_equal
compare, X > Y test: first_value_greater
compare, X < Y test: second_value_greater
compare, values cannot be compared test: first_value_greater
===> Booted guards
```

## notes

As noticed in example `3_modules` the `stop/1` does nothing in the default rebar3 template... Application cannot be started many times, the `stop/1` can be executed many times with no effect and the application needs to be killed manually.