#include <cstrike>
#include <sourcemod>
#include <multicolors>

#define PL_VERSION "1.0"

#pragma newdecls required
#pragma semicolon 1

public Plugin myinfo = 
{
	name = "[CS:GO] Serwery EH", 
	author = "Chumi", 
	description = "Serwery ErrorHead", 
	version = PL_VERSION, 
	url = "https://steamcommunity.com/id/chumi_official"
}
public void OnPluginStart()
{
	RegConsoleCmd("sm_serwery", Chumi_Serwer);
}
public Action Chumi_Serwer(int client, int args)
{
	Menu menupomoc = new Menu(Menu_Serwer);
	menupomoc.SetTitle("[EH] Nasze inne serwery!");
	menupomoc.AddItem("opcja1", "» Only Mirage #1");
	menupomoc.AddItem("opcja2", "» Only Mirage #2");
	menupomoc.AddItem("opcja3", "» Arena 1v1");
	menupomoc.AddItem("opcja4", "» Retake");
	menupomoc.ExitButton = true;
	menupomoc.Display(client, 0);
}

public int Menu_Serwer(Menu menupomoc, MenuAction action, int client, int itemNum)
{
	if (action == MenuAction_Select)
	{
		char info[32];
		GetMenuItem(menupomoc, itemNum, info, sizeof(info));
		
		if (strcmp(info, "opcja1") == 0) {
			CPrintToChat(client, "{purple}---------- {green}Only Mirage #1{purple} ----------");
			CPrintToChat(client, "{purple}IP: 145.239.237.122:27015");
			CPrintToChat(client, "{purple}Właściciel: {darkred}Lexxx, icW, Osa");
			CPrintToChat(client, "{purple}---------------------------------------------------");
		}
		
		else if (strcmp(info, "opcja2") == 0) {
			CPrintToChat(client, "{purple}---------- {green}Only Mirage #2{purple} ----------");
			CPrintToChat(client, "{purple}IP: 145.239.236.196:27105");
			CPrintToChat(client, "{purple}Właściciel: {darkred}Patry$");
			CPrintToChat(client, "{purple}---------------------------------------------------");
		}
		
		else if (strcmp(info, "opcja3") == 0) {
			CPrintToChat(client, "{purple}---------- {green}Arena 1v1{purple} ----------");
			CPrintToChat(client, "{purple}IP: 145.239.237.103:27050");
			CPrintToChat(client, "{purple}Właściciel: {darkred}Tomasz, Osa");
			CPrintToChat(client, "{purple}---------------------------------------------------");
		}
		
		else if (strcmp(info, "opcja4") == 0) {
			CPrintToChat(client, "{purple}---------- {green}Retake{purple} ----------");
			CPrintToChat(client, "{purple}IP: 145.239.20.88:27125");
			CPrintToChat(client, "{purple}Właściciel: {darkred}Chumi, mad dog");
			CPrintToChat(client, "{purple}---------------------------------------------------");
		}
	}
	
	else if (action == MenuAction_End) {
		CloseHandle(menupomoc);
	}
}