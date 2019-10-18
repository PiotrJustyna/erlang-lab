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
1> server3:start(name_server, name_server1).
true
2> name_server1:add(joe, "at home").
ok
3> name_server1:add(helen, "at work").
ok
4> c(new_name_server).
{ok,new_name_server}
5> server3:swap_code(name_server, new_name_server).
ack
6> new_name_server:all_names().
[joe,helen]
```

This I find quite impressive. We have just performed a hot code swap not having to sacrifice the state.