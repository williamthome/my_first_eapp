-module(user_input).
-export([read_string/1, read_string_array/2, read_string_array/3]).

read_string(Label) when is_list(Label) ->
  string:trim(io:get_line(string:concat(Label, ": "))).

read_string_array(Label, KeyToEndCommand) ->
  read_string_array(Label, KeyToEndCommand, []).

read_string_array(Label, KeyToEndCommand, Values) ->
  case read_string(Label) of
    KeyToEndCommand -> Values;
    Value -> read_string_array(Label, KeyToEndCommand, [Value | Values])
  end.
