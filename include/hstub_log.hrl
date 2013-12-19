%%% Author : Geoff Cant <nem@erlang.geek.nz>
%%% Description : Logging macros
%%% Created : 13 Jan 2006 by Geoff Cant <nem@erlang.geek.nz>

-ifndef(logging_macros).
-define(logging_macros, true).

-define(INFO(Format, Args),
        error_logger:info_msg("(~p ~p:~p) " ++ Format ++ "~n",
                              [self(), ?MODULE, ?LINE | Args])).
-define(WARN(Format, Args),
        error_logger:warning_msg("(~p ~p:~p) " ++ Format ++ "~n",
                                 [self(), ?MODULE, ?LINE | Args])).
-define(ERR(Format, Args),
        error_logger:error_msg("(~p ~p:~p) " ++ Format ++ "~n",
                               [self(), ?MODULE, ?LINE | Args])).

-define(LOG(Type, Fun, Req), hstub_request_log:log(Type, fun() ->
                                                                 Fun
                                                         end, Req)).

-endif. %logging
