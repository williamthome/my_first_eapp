-module(client_test).
-include_lib("eunit/include/eunit.hrl").
-import(client_boundary, [get_clients/0, gen_id/0, gen_id/1]).
-include("client_core.hrl").

get_clients_test() ->
  ?assertNot(length(get_clients()) =:= 0).

gen_id_test() ->
  ?assertEqual(gen_id([]), 0),
  Clients = [#client{id = 0}],
  ?assertEqual(gen_id(Clients), 1).
