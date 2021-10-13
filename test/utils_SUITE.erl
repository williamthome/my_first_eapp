-module(utils_SUITE).
-include_lib("common_test/include/ct.hrl").
-include_lib("eunit/include/eunit.hrl").
-export([all/0]).
-export([date_from_pt_br_test/1]).

all() -> [date_from_pt_br_test].

date_from_pt_br_test(_Config) ->
  PT_BR_date = "01/12/2021",
  Expected_date = "2021/12/01",
  Date = utils:date_from_pt_br(PT_BR_date),
  ?assertEqual(Date, Expected_date).
