-module(main).
-export([get_clients/0]).
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
