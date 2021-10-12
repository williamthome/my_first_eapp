-module(client_boundary).
-export([all/0, gen_id/0, gen_id/1, delete/2]).
-include("client_core.hrl").

all() ->
  [
    #client{
      id = 0,
      name = "João da Silva",
      birthdate = "1975/09/15",
      address = "Santa Catarina",
      emails = ["joao@dasilva.com"]
    },
    #client{
      id = 1,
      name = "Pedro Salete",
      birthdate = "1958/08/29",
      address = "Acre"
    }
  ].

gen_id() ->
  gen_id(all()).

gen_id([]) ->
  0;

gen_id(Clients) when is_list(Clients) ->
  [#client{id = LastId} | _tail] = lists:reverse(Clients),
  LastId + 1.

delete(Clients, Id)
  when is_list(Clients), is_integer(Id), Id >= 0 ->
    lists:filter(
      fun(#client{id = ClientId}) -> ClientId =/= Id end,
      Clients
    ).
