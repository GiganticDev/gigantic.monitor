#!/bin/bash

./steamcmd.sh +@sSteamCmdForcePlatformType windows +login ${STEAM_USER} ${STEAM_PASS} +force_install_dir ./gigantic-game +app_update 327690 validate +quit

