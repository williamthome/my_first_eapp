-module(client_repo_SUITE).
-include_lib("common_test/include/ct.hrl").
-include_lib("eunit/include/eunit.hrl").
-export([all/0]).
-export([get_all_test/1, gen_id_test/1, delete_test/1]).
-include("client_core.hrl").

all() -> [get_all_test, gen_id_test, delete_test].

get_all_test(_Config) ->
  ?assertNotEqual(length(client_repo:all()), 0).

gen_id_test(_Config) ->
  ?assertEqual(client_repo:gen_id([]), 0), % if empty list id must be zero
  Id = 0,
  ExpectedId = Id + 1,
  Clients = [#client{id = Id}],
  ?assertEqual(client_repo:gen_id(Clients), ExpectedId).

delete_test(_Config) ->
  Id = 0,
  Clients = [#client{id = Id}],
  NewClients = client_repo:delete(Clients, Id),
  ?assertEqual(length(NewClients), 0).
