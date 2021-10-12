-module(main).
-export([get_clients/0, gen_id/0, gen_id/1]).
-include("client_core.hrl").

get_clients() ->
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
  gen_id(get_clients()).

gen_id([]) ->
  0;

gen_id(Clients) when is_list(Clients) ->
  [#client{id = LastId} | _tail] = lists:reverse(Clients),
  LastId + 1.