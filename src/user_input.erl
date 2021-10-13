-module(user_input).
-export([read_string/1]).

read_string(Label) when is_list(Label) ->
  string:trim(io:get_line(string:concat(Label, ": "))).
