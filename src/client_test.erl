-module(client_test).
-include_lib("eunit/include/eunit.hrl").
-import(client_boundary, [all/0, gen_id/0, gen_id/1, delete/2]).
-include("client_core.hrl").

all_test() ->
  ?assertNot(length(all()) =:= 0).

gen_id_test() ->
  ?assertEqual(gen_id([]), 0), % if empty list id must be zero
  Id = 0,
  ExpectedId = Id + 1,
  Clients = [#client{id = Id}],
  ?assertEqual(gen_id(Clients), ExpectedId).

delete_client_test() ->
  Id = 0,
  Clients = [#client{id = Id}],
  NewClients = delete(Clients, Id),
  ?assertEqual(length(NewClients), 0).
