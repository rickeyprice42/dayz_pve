@echo off
:start
::Server name
set serverName=Grimhold
::Server files location
set serverLocation="D:\SteamLibrary\steamapps\common\DayZServer"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZ.cfg
::Logical CPU cores to use (Equal or less than available)
set serverCPU=2
::Sets title for terminal (DONT edit)
title %serverName% batch
::DayZServer location (DONT edit)
cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start "DayZ Server" /min "DayZServer_x64.exe" -config=%serverConfig% -port=%serverPort% -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck "-BEpath=D:\SteamLibrary\steamapps\common\DayZServer\battleye" "-profiles=D:\SteamLibrary\steamapps\common\DayZServer\Profiles" "-mod=@CF;@Dabs Framework;@DayZ-Expansion-Licensed;@DayZ-Expansion-Bundle;@Community-Online-Tools;@VPPAdminTools;@Money Ruble;@TTL Classname Extractor;@QuickMoveItemsByCategory;@Bullet Stacking - More Ammo;@GraveCross;@Item Info;@Tactical Flava;@Imports From Tarkov;@GZ Equipment;@CJ187-LootChest;@DayZ Editor Loader;@Grimhold"
::Time in seconds before kill server process (14400 = 4 hours)
timeout 14390
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 10
::Go back to the top and repeat the whole cycle again
goto start
