-module(client_test).
-include_lib("eunit/include/eunit.hrl").
-import(client_boundary, [get_clients/0, gen_id/0, gen_id/1, delete/2]).
-include("client_core.hrl").

get_clients_test() ->
  ?assertNot(length(get_clients()) =:= 0).

gen_id_test() ->
  ?assertEqual(gen_id([]), 0),
  Clients = [#client{id = 0}],
  ?assertEqual(gen_id(Clients), 1).

delete_client_test() ->
  Clients = [#client{id = 0}],
  ?assertEqual(length(Clients), 1),
  NewClients = delete(Clients, 0),
  ?assertEqual(length(NewClients), 0).
