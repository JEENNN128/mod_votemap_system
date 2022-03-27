init( ModVersion )
{
	level.hud_Y = 0;
	level.hud_Y_offset = 15;
	thread players();
}
players()
{
	while(1)
	{
		level waittill( "connected", player );
		player.killstreak = 0;
		player thread headshots();
		player thread killstreak();
		player thread kills();
		player thread deaths();
		
	}
	
}

headshots()
{
	self endon( "disconnect" );
	level endon ("vote started");
	self.hudhs = newClientHudElem(self);
	self.hudhs.x = 115;
	self.hudhs.y = 20;
	self.hudhs.horzAlign = "left";
	self.hudhs.alignx = "left";
	self.hudhs.fontscale = 1.4;
	self.hudhs.hidewheninmenu = true;
	self.hudhs.label = &"^5Headshots^0:^7 &&1";
	self.hudhs fadeOverTime(.5);
	self.hudhs.glowalpha = 1;
	self.hudhs.glowColor = (0.3, 0.3, 2.0);
	
	while(1)
	{
		self.hudhs setValue(self.headshots);
		wait .5;
	}
}

killstreak()
{
	self endon( "disconnect" );
	level endon ("vote started");
	self.hudkillstreak = newClientHudElem(self);
	self.hudkillstreak.x = 115;
	self.hudkillstreak.y = 40; 
	self.hudkillstreak.alignx = "left";
	self.hudkillstreak.horzAlign = "left";
	self.hudkillstreak.fontscale = 1.4;
	self.hudkillstreak.label = &"^5Killstreak^0:^7 &&1";
	self.hudkillstreak fadeOverTime(.5);
	self.hudkillstreak.hidewheninmenu = true;
	self.hudkillstreak.glowalpha = 1;
	self.hudkillstreak.glowColor = (0.3, 0.3, 2.0);
	
	while(1)
	{
		self.hudkillstreak setValue(self.killstreak);
		wait .5;
	}
}

kills()
{
	self endon("disconnect");
	level endon ("vote started");	
	self.hudkills = newClientHudElem(self);
	self.hudkills.alignx = "left";
	self.hudkills.horzAlign = "left";
	self.hudkills.x = 115;
	self.hudkills.y = 60; 
	self.hudkills.fontscale = 1.4;
	self.hudkills.label = &"^5Kills^0:^7 &&1";
	self.hudkills fadeOverTime(.5);
	self.hudkills.hidewheninmenu = true;
	self.hudkills.glowalpha = 1;
	self.hudkills.glowcolor = (0.3, 0.3, 2.0);
	
	while(1)
	{
		self.hudkills setValue(self.kills);
		wait .5;
	}
}

deaths()
{
	self endon("disconnect");
	level endon ("vote started");
	self.huddeaths = newClientHudElem(self);
	self.huddeaths.alignx = "left";
	self.huddeaths.horzAlign = "left";
	self.huddeaths.x = 115;
	self.huddeaths.y = 80; 
	self.huddeaths.fontscale = 1.4;
	self.huddeaths.label = &"^5Deaths^0:^7 &&1";
	self.huddeaths fadeOverTime(.5);
	self.huddeaths.hidewheninmenu = true;
	self.huddeaths.glowalpha = 1;
	self.huddeaths.glowcolor = (0.3, 0.3, 2.0);
	
	while(1)
	{
		self.huddeaths setValue(self.deaths);
		wait .5;
	}
}
