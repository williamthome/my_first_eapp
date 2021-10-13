-module(utils_test).
-include_lib("eunit/include/eunit.hrl").
-import(utils, [date_from_pt_br/1]).

date_from_pt_br_test() ->
  PT_BR_date = "01/12/2021",
  Expected_date = "2021/12/01",
  Date = utils:date_from_pt_br(PT_BR_date),
  ?assertEqual(Date, Expected_date).
