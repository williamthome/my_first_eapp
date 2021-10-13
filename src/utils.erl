-module(utils).
-export([date_from_pt_br/1]).

date_from_pt_br(PT_BR_Date) ->
  Splitted = string:split(PT_BR_Date, "/", all),
  Reversed = lists:reverse(Splitted),
  Joined = lists:join("/", Reversed),
  Date = lists:concat(Joined),
  Date.
