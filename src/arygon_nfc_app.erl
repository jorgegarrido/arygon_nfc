%%
%% Copyright (C) 2014
%% Authors: Patricia Nuñez cpattynue@gmail.com<>
%%          Jorge Garrido <zgbjgg@gmail.com>
%% All rights reserved.
%%
%% This Source Code Form is subject to the terms of the Mozilla Public
%% License, v. 2.0. If a copy of the MPL was not distributed with this
%% file, You can obtain one at http://mozilla.org/MPL/2.0/.
%%
%%
-module(arygon_nfc_app).

-behaviour(application).

-include("arygon_nfc.hrl").

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    arygon_nfc_sup:start_link().

stop(_State) ->
    [] = os:cmd(?TURN_OFF_NFC_LED),
    ok.
