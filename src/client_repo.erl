-module(client_repo).
-export([all/0, gen_id/0, gen_id/1, delete/2, insert/1]).
-include("client_core.hrl").
-import(user_input, [read_string/1]).
-import(utils, [date_from_pt_br/1]).

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
  #client{id = LastId} = lists:last(Clients),
  LastId + 1.

insert(Clients) when is_list(Clients) ->
  Name = user_input:read_string("Nome"),
  Birthdate = date_from_pt_br(user_input:read_string("Data de nascimento")),
  Address = user_input:read_string("Endereço"),
  Emails = [user_input:read_string("e-Mail")],
  Client = #client{
    id = gen_id(Clients),
    name = Name,
    birthdate = Birthdate,
    address = Address,
    emails = Emails
  },
  [Client | Clients].

delete(Clients, Id)
  when is_list(Clients), is_integer(Id), Id >= 0 ->
    lists:filter(
      fun(#client{id = ClientId}) -> ClientId =/= Id end,
      Clients
    ).
