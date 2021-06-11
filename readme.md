# readme

Erlang lab. I use this repository to experiment with Erlang. All projects in the repository support Visual Studio Code remote containers, meaning that the code can be pulled and ran on any machine supporting docker. No configuration required.

## applications

| name | rebar3 support | vs code build support\* | description |
| --- | --- | --- | --- |
| [hello_world](./1_hello_world/) | :white_check_mark: | :white_check_mark: | Just a hello world application. Doesn't even print out the "hello world!". It just serves as a template for rebar3 + supervisor + application behavior usage. |
| [generic_server_1](./2_generic_server_1/) | :white_check_mark: | :white_check_mark: | First generic server from [Programming Erlang 2nd edition](https://pragprog.com/titles/jaerlang2/programming-erlang-2nd-edition/). |

\*vs code build support - support for the popular `[cmd/ctrl]+shift+b` shortcut. Applications which support this have an entry in the `erlang-lab/.vscode/tasks.json` file

## reading

* [Building Your First Erlang App Using Rebar3](https://medium.com/erlang-central/building-your-first-erlang-app-using-rebar3-25f40b109aad)
* [rebar3 shell](https://ferd.ca/rebar3-shell.html), and the [whole blog](https://ferd.ca/)
* [erlang in anger](https://www.erlang-in-anger.com/)
* [Property-Based Testing with PropEr, Erlang, and Elixir](https://pragprog.com/titles/fhproper/property-based-testing-with-proper-erlang-and-elixir/)