steamworks.Subscribe( 3390111212 )
steamworks.Subscribe( 3379760234 )
steamworks.ApplyAddons()
surface.CreateFont( "fonta", {
	font = "Arial",
	size = 64,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )
surface.CreateFont( "fontb", {
	font = "Arial",
	size = 32,
	weight = 600,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )
net.Receive("hl2start", function()
hook.Add( "HUDPaint", "start", function()	
	surface.SetDrawColor( 0, 0, 0, 254 )
	surface.DrawRect( 0, 0, ScrW(), ScrH() )
	draw.DrawText( "STARTING GAMEMODE HALF LIFE 2 COOP", "fonta", ScrW() * 0.5, ScrH() * 0.25, color_white, TEXT_ALIGN_CENTER )
	draw.DrawText( "Leader of resistance squad: " .. Entity( 1 ):GetName(), "fontb", ScrW() * 0.5, ScrH() * 0.35, color_white, TEXT_ALIGN_CENTER )
	draw.DrawText( "Name of resistance squad: " .. GetHostName(), "fontb", ScrW() * 0.5, ScrH() * 0.45, color_white, TEXT_ALIGN_CENTER )



	hook.Add("HUDPaint", "STATS" , function () 
	draw.SimpleText( "Gamemode: COOP HL2", "CloseCaption_Bold", 3, 0, color_white, 0, TEXT_ALIGN_TOP )
	
--я из прошлого:сделай тут название карты уровня тип 21:56 23.12.24
--будущий я:ок понял 21:57 23.12.24


draw.SimpleText( "Level: " .. game.GetMap(), "CloseCaption_Bold", 3, ScrH() / 45, color_white)
--я сейчас (который из будущего типо):вот мой павелитель 15:53 24.12.24
--я сейчас (который из будущего будущего):а чужие переписки читать плохо!! 21:53 25.12.24

timer.Simple(4, function ()
	hook.Remove( "HUDPaint", "start" )
--print("deleted")

end)





end)	
end)
end )
