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
1> server2:start(name_server, name_server).
true
2> name_server:add(joe, "at home").
ok
3> name_server:break_me().
Server name_server request {break_me}
caused exception function_clause
** exception exit: rpc
     in function  server2:rpc/2 (server2.erl, line 8)
4> name_server:find(joe). 
{ok,"at home"}
```

It would be good to demonstrate the name server failing in this exercise, so I took the liberty of modifying the code I found in the book to better suit what we're trying to show.

You can see that even though the client got an error and the `handle` function crashed, the failure does not affect other callers and the state of the server is also not affected.