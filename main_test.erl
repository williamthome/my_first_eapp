-module(main_test).
-include_lib("eunit/include/eunit.hrl").
-import(main, [get_clients/0]).
-include("client_core.hrl").

get_clients_test() ->
  ?assertNot(length(get_clients()) =:= 0).
