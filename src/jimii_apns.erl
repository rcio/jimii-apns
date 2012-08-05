%%%-------------------------------------------------------------------
%%% File    : jimii_apns.erl
%%% Author  : Wang fei <fei.wang@jimii.cn>
%%% Description : 
%%%
%%% Created : Wang fei <fei.wang@jimii.cn>
%%%-------------------------------------------------------------------
-module(jimii_apns).
-author('fei.wang@jimii.cn').

-export([start/0,stop/0]).

ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.

start() ->
    ensure_started(crypto),
    application:start(jimii_apns).

stop() ->
    application:stop(jimii_apns).
