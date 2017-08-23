# gigantic.monitor
Docker image that installs the game, checks for updates, and notifies another service when the game files have changed.

Uses steamcmd cli tool for downloading and updating the game via steam, with a command like the following
`./steamcmd.sh +@sSteamCmdForcePlatformType windows +login user pass +force_install_dir ./gigantic +app_update 327690`

Unfortunately the command must have a valid user account to log in as, even if it's a dummy account, this command works under OSX and linux as well as long as the force platform flag is there.

The command will run as a cron job every 10(?) minutes while at the same time incrond will handle notifying us of any file changes.
