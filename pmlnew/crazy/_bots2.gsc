addTestClients()
{
	wait 5;
	
	for(;;)
	{
		if(getDvarInt("scr_testclients") > 1)
			break;
		wait 1;
	}
	
	iNumBots = getDvarInt("scr_testclients");
	
	for(i = 0; i < iNumBots; i++)
	{
		ent[i] = addtestclient();
		Bot = ent[i];
		
		wait 0.5;

		if(isPlayer(Bot))
		{
			if(i & 1)
			{
				if(game["axis"] == "russian")
				{
					Bot notify("menuresponse", game["menu_team"], "axis");
					wait 0.5;
					Bot notify("menuresponse", game["menu_changeclass_allies"], "sniper");
					wait 0.5;
					Bot notify("menuresponse", game["menu_changeclass"] , "go");
					
					Bot waittill( "spawned_player" );
					
					wait ( 0.10 );
				}
				if(game["axis"] == "opfor")
				{
					Bot notify("menuresponse", game["menu_team"], "axis");
					wait 0.5;
					Bot notify("menuresponse", game["menu_changeclass_allies"], "specops");
					wait 0.5;
					Bot notify("menuresponse", game["menu_changeclass"] , "go");
					
					Bot waittill( "spawned_player" );
					
					wait ( 0.10 );
				}
			}
			else
			{
				if(game["allies"] == "sas")
				{
					Bot notify("menuresponse", game["menu_team"], "allies");
					wait 0.5;
					Bot notify("menuresponse", game["menu_changeclass_allies"], "specops");
					wait 0.5;
					Bot notify("menuresponse", game["menu_changeclass"] , "go");
					
					Bot waittill( "spawned_player" );
					
					wait ( 0.10 );
				}
				else if(game["allies"] == "marines")
				{
					Bot notify("menuresponse", game["menu_team"], "allies");
					wait 0.5;
					Bot notify("menuresponse", game["menu_changeclass_allies"], "assault");
					wait 0.5;
					Bot notify("menuresponse", game["menu_changeclass"] , "go");
					
					Bot waittill( "spawned_player" );
					
					wait ( 0.10 );
				}
			}
		}
	}
}

