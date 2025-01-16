RunConsoleCommand( "hostname", "Отряд повстанцев №" .. math.random(1,30) )

util.AddNetworkString("hl2start")
--[[
ply:StripWeapon("weapon_smg1")
ply:StripWeapon("weapon_shotgun")
ply:StripWeapon("weapon_pistol")
ply:StripWeapon("weapon_ar2")
ply:StripWeapon("weapon_bugbait")
ply:StripWeapon("weapon_frag")
ply:StripWeapon("weapon_physcannon")
ply:StripWeapon("weapon_crossbow")
ply:StripWeapon("weapon_357")
ply:StripWeapon("weapon_rpg")
ply:StripWeapon("weapon_stunstick")
--]]

local function nohl2wep()
	for _, ply in ipairs( player.GetAll() ) do
ply:StripWeapon("weapon_crowbar")
ply:StripWeapon("weapon_smg1")
ply:StripWeapon("weapon_shotgun")
ply:StripWeapon("weapon_pistol")
ply:StripWeapon("weapon_ar2")
ply:StripWeapon("weapon_bugbait")
ply:StripWeapon("weapon_frag")
ply:StripWeapon("weapon_physcannon")
ply:StripWeapon("weapon_crossbow")
ply:StripWeapon("weapon_357")
ply:StripWeapon("weapon_rpg")
ply:StripWeapon("weapon_stunstick")
end
end

--[[
local loadout = {
"weapon_hands",
"weapon_slb_usp",
"weapon_slb_smg",
"weapon_slb_spas12"
}
kit1
        ply:Give( "weapon_hands" )
        ply:Give( "weapon_slb_spas12" )
        ply:Give( "weapon_slb_usp" )
        ply:Give( "medkit" )
        ply:Give( "bandage" )
        ply:Give( "morphine" )
        kit2
        ply:Give( "weapon_hands" )
        ply:Give( "weapon_slb_smg" )
        ply:Give( "weapon_slb_usp" )
        ply:Give( "medkit" )
        ply:Give( "bandage" )
        ply:Give( "adrenaline" )
        --]]




concommand.Add( "starthl2", function( ply )  
    local function DisallowSpawnMenu( )
        if not LocalPlayer():IsAdmin() then
        return false
        end
        end
        
        hook.Add( "SpawnMenuOpen", "DisallowSpawnMenu", DisallowSpawnMenu)

        hook.Add("PlayerNoClip", "DisableNoclip", function(ply)
            return false 
        end)
    
    hook.Add( "PlayerNoClip", "FeelFreeToTurnItOff", function( ply, desiredState )
        if ( ply:IsAdmin() ) then
            return true 
        end
    end )
    
    
    for _, ply in ipairs( player.GetAll() ) do

nohl2wep()        --ply:ConCommand("nohl2wep")
game.CleanUpMap()
ply:Spawn()
ply:SetModel("models/player/Group03/male_04.mdl")
    end

hook.Add("PlayerSpawn", "maybethis", function( ply )
    ply:SetModel("models/player/Group03/male_04.mdl")
    nohl2wep()      --ply:ConCommand("nohl2wep")
    local kit = math.random(1,2)
    if kit == 1 then
ply:StripWeapons()
--ply:ConCommand("nohl2wep") ----да знаю,признаю,было,идея реализовывать это командой так себе,ноооооооо тебя ебет вообще,подождика а хули ты тут делаешь ваще ахуел там ну ка быстро отсюда съебался иначе в очко бам бам бам
nohl2wep()
ply:Give( "weapon_hands" )
    ply:Give( "weapon_slb_spas12" )
    ply:Give( "weapon_slb_usp" )
    ply:Give( "medkit" )
    ply:Give( "bandage" )
    ply:Give( "morphine" )
--print("kit1")
else
ply:StripWeapons()
nohl2wep()  --ply:ConCommand("nohl2wep")
   ply:Give( "weapon_hands" )
    ply:Give( "weapon_slb_smg" )
    ply:Give( "weapon_slb_usp" )
    ply:Give( "medkit" )
    ply:Give( "bandage" )
    ply:Give( "adrenaline" ) 
--print("kit2")
ply:SetModel("models/player/Group03/male_04.mdl")
local mapName = game.GetMap()
if string.StartsWith(mapName, "d1_") then
ply:StripWeapon("weapon_slb_smg")
ply:StripWeapon( "weapon_slb_spas12" )
    end
timer.Simple(0.1, function()
    ply:SetModel("models/player/Group03/male_04.mdl")
        for _, ply in ipairs( player.GetAll() ) do
    nohl2wep()
            -- ply:ConCommand("nohl2wep")
        ply:SetModel("models/player/Group03/male_04.mdl")

hook.Add("PlayerSpawn", "checkdamodel", function ()
    if ply:GetModel() ~= "models/player/Group03/male_04.mdl" then
        ply:SetModel("models/player/Group03/male_04.mdl") 
    else
        ply:SetModel("models/player/Group03/male_04.mdl")
        nohl2wep()  
end
end)



    end

end)

end




net.Start("hl2start")
net.Send( ply )
--[[for _, ply in ipairs( player.GetAll() ) do
ply:SetMaxSpeed(0)
timer.Simple(4, function()
for _, ply in ipairs( player.GetAll() ) do
    ply:SetMoveType( MOVETYPE_WALK )
end

хули не работает(( --]]

hook.Add( "WeaponEquip", "WeaponEquipExample", function( weapon, ply )
	timer.Simple( 0, function()
		nohl2wep()
	end )
end)
 
end) end)




