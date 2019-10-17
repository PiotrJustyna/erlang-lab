# readme

## building the code

Compile `erl` files using the `build.sh` script (it calls `erlc` compiler internally):

```
./build.sh
```

## running the code

Run erlang shell:

```
erl
```

## usage

In erlang shell, use the following sequence of commands:

```erlang
Erlang/OTP 19 [erts-8.3] [source-d5c06c6] [64-bit] [smp:12:12] [async-threads:10] [kernel-poll:false]

Eshell V8.3  (abort with ^G)
1> server1:start(name_server, name_server).
true
2> name_server:add(joe, "at home").
ok
3> name_server:find(joe).
{ok,"at home"}
```