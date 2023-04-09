/*
    * Zero CW/TG - A modern gamemode for SA-MP 0.3.7-R2
    * Copyright (C) 2018 - 2023
    * Author: ne0de
*/

#include <a_samp>

// import required defines and libraries
#include "src/defines.inc"

// import enums and globals variables
#include "src/enums/player_enum.pwn"
#include "src/enums/language_enum.pwn"
#include "src/globals.pwn"

// import index file to load configuration
#include "src/index.pwn"
#include "src/utils/colors.pwn"

// import all controllers
#include "src/controllers/database.pwn"
#include "src/controllers/player.pwn"
#include "src/dialogs/player_dialog.pwn"

public OnGameModeInit()
{
    new configStatus = LoadConfiguration("settings.yml");
    if (configStatus == FAILURE)
    {
        printf("Error on loading configuration file.");
        SendRconCommand("exit");
        return FAILURE;
    }
    configStatus = LoadConfigurationValues();
    if (configStatus == FAILURE)
    {
        printf("Error on loading configuration values.");
        SendRconCommand("exit");
        return FAILURE;
    }
    SendRconCommandf("hostname %s - %s", HOSTNAME, (LAGSHOT == 0 ? ("Lagshot") : ("Skinshot")));
    SendRconCommandf("gamemodetext %s", DESCRIPTION);
    SendRconCommandf("weburl %s", WEBSITE);
    SendRconCommandf("mapname %s", NAME);
    AddServerRule("build", VERSION);
    ConnectDatabase();
    return SUCCESS;
}

public OnGameModeExit()
{
    printf("Gamemode has been unloaded.");
    return SUCCESS;
}
