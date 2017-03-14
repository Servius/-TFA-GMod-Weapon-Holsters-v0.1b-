local holsteredgunssconvar = CreateConVar( "cl_holsteredgunss", "1", { FCVAR_ARCHIVE, }, "Enable/Disable the rendering of the weapons on any player" )
 
local NEXT_WEAPONS_UPDATE=CurTime();
 
local weaponsinfoss={}
weaponsinfoss["weapon_physcannon"]={}
weaponsinfoss["weapon_physcannon"].Model=""
weaponsinfoss["weapon_physcannon"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["weapon_physcannon"].BoneOffset={Vector(6,15,0),Angle(90,180,0)}
weaponsinfoss["weapon_physcannon"].Priority="weapon_physgun"
 
weaponsinfoss["weapon_physgun"]={}
weaponsinfoss["weapon_physgun"].Model=""
weaponsinfoss["weapon_physgun"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["weapon_physgun"].DrawFunction=function(ent) end
weaponsinfoss["weapon_physgun"].BoneOffset={Vector(6,15,0),Angle(90,180,0)}
weaponsinfoss["weapon_physgun"].Skin=1;  
 
 
weaponsinfoss["weapon_physgun"].DrawFunction=function(ent)
    local attachment=ent:GetAttachment( 1)
    local StartPos = attachment.Pos + attachment.Ang:Forward()*4
    render.SetMaterial(physgunmat)
    render.DrawSprite(attachment.Pos,20,20,Color(255,255,255,255));
    render.SetMaterial(physgunmat1)
    render.DrawSprite(StartPos,20,20,Color(255,255,255,255));   
end

weaponsinfoss["weapon_pistol"]={}
weaponsinfoss["weapon_pistol"].Model="models/weapons/W_pistol.mdl"
weaponsinfoss["weapon_pistol"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["weapon_pistol"].BoneOffset={Vector(0,-8,0),Angle(0,90,0)}
 
weaponsinfoss["weapon_357"]={}
weaponsinfoss["weapon_357"].Model="models/weapons/W_357.mdl"
weaponsinfoss["weapon_357"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["weapon_357"].BoneOffset={Vector(-5,8,0),Angle(0,270,0)}
weaponsinfoss["weapon_357"].Priority="gmod_tool"
 
weaponsinfoss["weapon_frag"]={}
weaponsinfoss["weapon_frag"].Model="models/Items/grenadeAmmo.mdl"
weaponsinfoss["weapon_frag"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["weapon_frag"].BoneOffset={Vector(3,-5,6),Angle(-95,0,0)}
 
weaponsinfoss["weapon_slam"]={}
weaponsinfoss["weapon_slam"].Model="models/weapons/w_slam.mdl"
weaponsinfoss["weapon_slam"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["weapon_slam"].BoneOffset={Vector(-9,0,-7),Angle(270,90,-25)}
 
weaponsinfoss["weapon_crowbar"]={}
weaponsinfoss["weapon_crowbar"].Model="models/weapons/w_crowbar.mdl"
weaponsinfoss["weapon_crowbar"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["weapon_crowbar"].BoneOffset={Vector(3,0,0),Angle(0,0,45)}
 
weaponsinfoss["weapon_stunstick"]={}
weaponsinfoss["weapon_stunstick"].Model="models/weapons/W_stunbaton.mdl"
weaponsinfoss["weapon_stunstick"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["weapon_stunstick"].BoneOffset={Vector(3,0,0),Angle(0,0,-45)}
 
weaponsinfoss["weapon_shotgun"]={}
weaponsinfoss["weapon_shotgun"].Model="models/weapons/W_shotgun.mdl"
weaponsinfoss["weapon_shotgun"].Bone="ValveBiped.Bip01_R_Clavicle"
weaponsinfoss["weapon_shotgun"].BoneOffset={Vector(10,5,2),Angle(0,90,0)}
 
weaponsinfoss["weapon_rpg"]={}
weaponsinfoss["weapon_rpg"].Model="models/weapons/w_rocket_launcher.mdl"
weaponsinfoss["weapon_rpg"].Bone="ValveBiped.Bip01_L_Clavicle"
weaponsinfoss["weapon_rpg"].BoneOffset={Vector(-16,5,0),Angle(90,90,90)}
 
weaponsinfoss["weapon_smg1"]={}
weaponsinfoss["weapon_smg1"].Model="models/weapons/w_smg1.mdl"
weaponsinfoss["weapon_smg1"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["weapon_smg1"].BoneOffset={Vector(5,0,-5),Angle(0,0,230)}
 
weaponsinfoss["weapon_ar2"]={}
weaponsinfoss["weapon_ar2"].Model="models/weapons/W_irifle.mdl"
weaponsinfoss["weapon_ar2"].Bone="ValveBiped.Bip01_R_Clavicle"
weaponsinfoss["weapon_ar2"].BoneOffset={Vector(-5,0,7),Angle(0,270,0)}
 
weaponsinfoss["weapon_crossbow"]={}
weaponsinfoss["weapon_crossbow"].Model="models/weapons/W_crossbow.mdl"
weaponsinfoss["weapon_crossbow"].Bone="ValveBiped.Bip01_L_Clavicle"
weaponsinfoss["weapon_crossbow"].BoneOffset={Vector(0,5,-5),Angle(180,90,0)}

 -- Med Kit
 
weaponsinfoss["med_kit"]={}
weaponsinfoss["med_kit"].Model="models/Items/HealthKit.mdl"
weaponsinfoss["med_kit"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["med_kit"].BoneOffset={Vector(1,8.5,0),Angle(90,180,0)}
 
 -- Stun Stick
 
weaponsinfoss["stunstick"]={}
weaponsinfoss["stunstick"].Model="models/weapons/w_stunbaton.mdl"
weaponsinfoss["stunstick"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["stunstick"].BoneOffset={Vector(-7,-11,6.5),Angle(0,0,0)}
 
--	TFA NMRIH (TN)
--	TN Primaries
weaponsinfoss["tfa_nmrih_m16_ch"]={}
weaponsinfoss["tfa_nmrih_m16_ch"].Model="models/weapons/tfa_nmrih/w_fa_m16a4_carryhandle.mdl"
weaponsinfoss["tfa_nmrih_m16_ch"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_m16_ch"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_nmrih_m16_rt"]={}
weaponsinfoss["tfa_nmrih_m16_rt"].Model="models/weapons/tfa_nmrih/w_fa_m16a4.mdl"
weaponsinfoss["tfa_nmrih_m16_rt"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_m16_rt"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_nmrih_cz"]={}
weaponsinfoss["tfa_nmrih_cz"].Model="models/weapons/tfa_nmrih/w_fa_cz858.mdl"
weaponsinfoss["tfa_nmrih_cz"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_cz"].BoneOffset={Vector(3.5,-2,-4),Angle(30,0,0)}

weaponsinfoss["tfa_nmrih_sv10"]={}
weaponsinfoss["tfa_nmrih_sv10"].Model="models/weapons/tfa_nmrih/w_fa_sv10.mdl"
weaponsinfoss["tfa_nmrih_sv10"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_sv10"].BoneOffset={Vector(2.8,0,-6),Angle(30,0,0)}

weaponsinfoss["tfa_nmrih_500a"]={}
weaponsinfoss["tfa_nmrih_500a"].Model="models/weapons/tfa_nmrih/w_fa_500a.mdl"
weaponsinfoss["tfa_nmrih_500a"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_500a"].BoneOffset={Vector(3,-6,-6),Angle(30,0,0)}

weaponsinfoss["tfa_nmrih_870"]={}
weaponsinfoss["tfa_nmrih_870"].Model="models/weapons/tfa_nmrih/w_fa_870.mdl"
weaponsinfoss["tfa_nmrih_870"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_870"].BoneOffset={Vector(3.5,-5,-5),Angle(30,0,0)}

weaponsinfoss["tfa_nmrih_1892"]={}
weaponsinfoss["tfa_nmrih_1892"].Model="models/weapons/tfa_nmrih/w_fa_win1892.mdl"
weaponsinfoss["tfa_nmrih_1892"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_1892"].BoneOffset={Vector(3,-8,-5),Angle(30,0,0)}

weaponsinfoss["tfa_nmrih_superx3"]={}
weaponsinfoss["tfa_nmrih_superx3"].Model="models/weapons/tfa_nmrih/w_fa_superx3.mdl"
weaponsinfoss["tfa_nmrih_superx3"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_superx3"].BoneOffset={Vector(3.5,-8,-5),Angle(30,0,0)}

weaponsinfoss["tfa_nmrih_fal"]={}
weaponsinfoss["tfa_nmrih_fal"].Model="models/weapons/tfa_nmrih/w_fa_fnfal.mdl"
weaponsinfoss["tfa_nmrih_fal"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_fal"].BoneOffset={Vector(3.5,-7,-5),Angle(30,0,0)}

weaponsinfoss["tfa_nmrih_jae700"]={}
weaponsinfoss["tfa_nmrih_jae700"].Model="models/weapons/tfa_nmrih/w_fa_jae700.mdl"
weaponsinfoss["tfa_nmrih_jae700"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_jae700"].BoneOffset={Vector(2.8,-7,-6),Angle(30,0,0)}

weaponsinfoss["tfa_nmrih_rug1022"]={}
weaponsinfoss["tfa_nmrih_rug1022"].Model="models/weapons/tfa_nmrih/w_fa_ruger1022.mdl"
weaponsinfoss["tfa_nmrih_rug1022"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_rug1022"].BoneOffset={Vector(3.5,-3.8,-5.8),Angle(30,0,0)}

weaponsinfoss["tfa_nmrih_rug1022_25"]={}
weaponsinfoss["tfa_nmrih_rug1022_25"].Model="models/weapons/tfa_nmrih/w_fa_ruger1022_25mag.mdl"
weaponsinfoss["tfa_nmrih_rug1022_25"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_rug1022_25"].BoneOffset={Vector(3.5,-3.8,-5.8),Angle(30,0,0)}

weaponsinfoss["tfa_nmrih_sako"]={}
weaponsinfoss["tfa_nmrih_sako"].Model="models/weapons/tfa_nmrih/w_fa_sako85.mdl"
weaponsinfoss["tfa_nmrih_sako"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_sako"].BoneOffset={Vector(3,-3.8,-6),Angle(30,0,0)}

weaponsinfoss["tfa_nmrih_sako_is"]={}
weaponsinfoss["tfa_nmrih_sako_is"].Model="models/weapons/tfa_nmrih/w_fa_sako85_ironsights.mdl"
weaponsinfoss["tfa_nmrih_sako_is"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_sako_is"].BoneOffset={Vector(3,-3.8,-6),Angle(30,0,0)}

weaponsinfoss["tfa_nmrih_sks"]={}
weaponsinfoss["tfa_nmrih_sks"].Model="models/weapons/tfa_nmrih/w_fa_sks.mdl"
weaponsinfoss["tfa_nmrih_sks"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_sks"].BoneOffset={Vector(3,-5,-6),Angle(30,0,0)}

weaponsinfoss["tfa_nmrih_sks_nb"]={}
weaponsinfoss["tfa_nmrih_sks_nb"].Model="models/weapons/tfa_nmrih/w_fa_sks_nobayo.mdl"
weaponsinfoss["tfa_nmrih_sks_nb"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_sks_nb"].BoneOffset={Vector(3,-5,-6),Angle(30,0,0)}

--	TN Secondaries
weaponsinfoss["tfa_nmrih_mp5"]={}
weaponsinfoss["tfa_nmrih_mp5"].Model="models/weapons/tfa_nmrih/w_fa_mp5.mdl"
weaponsinfoss["tfa_nmrih_mp5"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_mp5"].BoneOffset={Vector(3.8,1,3),Angle(-10,0,200)}

weaponsinfoss["tfa_nmrih_mac10"]={}
weaponsinfoss["tfa_nmrih_mac10"].Model="models/weapons/tfa_nmrih/w_fa_mac10.mdl"
weaponsinfoss["tfa_nmrih_mac10"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["tfa_nmrih_mac10"].BoneOffset={Vector(4,0,4),Angle(-10,0,260)}

weaponsinfoss["tfa_nmrih_m92fs"]={}
weaponsinfoss["tfa_nmrih_m92fs"].Model="models/weapons/tfa_nmrih/w_fa_m92fs.mdl"
weaponsinfoss["tfa_nmrih_m92fs"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_nmrih_m92fs"].BoneOffset={Vector(-2,-8.2,-1),Angle(5,270,0)}

weaponsinfoss["tfa_nmrih_1911"]={}
weaponsinfoss["tfa_nmrih_1911"].Model="models/weapons/tfa_nmrih/w_fa_1911.mdl"
weaponsinfoss["tfa_nmrih_1911"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_nmrih_1911"].BoneOffset={Vector(-2,-7.5,1),Angle(5,270,0)}

weaponsinfoss["tfa_nmrih_g17"]={}
weaponsinfoss["tfa_nmrih_g17"].Model="models/weapons/tfa_nmrih/w_fa_glock17.mdl"
weaponsinfoss["tfa_nmrih_g17"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_nmrih_g17"].BoneOffset={Vector(-2,-7.5,-0.5),Angle(5,270,0)}

weaponsinfoss["tfa_nmrih_sw686"]={}
weaponsinfoss["tfa_nmrih_sw686"].Model="models/weapons/tfa_nmrih/w_fa_sw686.mdl"
weaponsinfoss["tfa_nmrih_sw686"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_nmrih_sw686"].BoneOffset={Vector(-9,-7,-0.5),Angle(5,270,0)}

weaponsinfoss["tfa_nmrih_mkiii"]={}
weaponsinfoss["tfa_nmrih_mkiii"].Model="models/weapons/tfa_nmrih/w_fa_mkiii.mdl"
weaponsinfoss["tfa_nmrih_mkiii"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_nmrih_mkiii"].BoneOffset={Vector(0,-7.5,1),Angle(5,270,0)}

--	TN Special
weaponsinfoss["tfa_nmrih_flaregun"]={}
weaponsinfoss["tfa_nmrih_flaregun"].Model="models/weapons/tfa_nmrih/w_fa_flaregun.mdl"
weaponsinfoss["tfa_nmrih_flaregun"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_nmrih_flaregun"].BoneOffset={Vector(0,8,-1.5),Angle(5,270,0)}

weaponsinfoss["tfa_nmrih_bow"]={}
weaponsinfoss["tfa_nmrih_bow"].Model="models/weapons/tfa_nmrih/w_bow_deerhunter.mdl"
weaponsinfoss["tfa_nmrih_bow"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_bow"].BoneOffset={Vector(3.5,-3,-5.8),Angle(0,180,-60)}

weaponsinfoss["tfa_nmrih_fext"]={}
weaponsinfoss["tfa_nmrih_fext"].Model="models/weapons/tfa_nmrih/w_tool_extinguisher.mdl"
weaponsinfoss["tfa_nmrih_fext"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_nmrih_fext"].BoneOffset={Vector(4,-2.5,-5.8),Angle(0,180,90)}

weaponsinfoss["tfa_nmrih_tnt"]={}
weaponsinfoss["tfa_nmrih_tnt"].Model="models/weapons/tfa_nmrih/w_exp_tnt.mdl"
weaponsinfoss["tfa_nmrih_tnt"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_nmrih_tnt"].BoneOffset={Vector(0,5.5,-6.5),Angle(0,275,0)}

weaponsinfoss["tfa_nmrih_molotov"]={}
weaponsinfoss["tfa_nmrih_molotov"].Model="models/weapons/tfa_nmrih/w_exp_molotov.mdl"
weaponsinfoss["tfa_nmrih_molotov"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_nmrih_molotov"].BoneOffset={Vector(4.5,2.2,-7.5),Angle(-90,90,0)}

weaponsinfoss["tfa_nmrih_frag"]={}
weaponsinfoss["tfa_nmrih_frag"].Model="models/weapons/tfa_nmrih/w_grenade.mdl"
weaponsinfoss["tfa_nmrih_frag"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_nmrih_frag"].BoneOffset={Vector(3,4,6),Angle(-95,0,0)}

weaponsinfoss["tfa_nmrih_maglite"]={}
weaponsinfoss["tfa_nmrih_maglite"].Model="models/weapons/tfa_nmrih/w_item_maglite.mdl"
weaponsinfoss["tfa_nmrih_maglite"].Bone="ValveBiped.Bip01_L_Thigh"
weaponsinfoss["tfa_nmrih_maglite"].BoneOffset={Vector(0,12,3.8),Angle(-95,0,0)}

weaponsinfoss["tfa_nmrih_welder"]={}
weaponsinfoss["tfa_nmrih_welder"].Model="models/weapons/tfa_nmrih/w_tool_welder.mdl"
weaponsinfoss["tfa_nmrih_welder"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["tfa_nmrih_welder"].BoneOffset={Vector(4,0,4),Angle(-10,0,260)}

--	TN Melee
weaponsinfoss["tfa_nmrih_asaw"]={}
weaponsinfoss["tfa_nmrih_asaw"].Model="models/weapons/tfa_nmrih/w_me_abrasivesaw.mdl"
weaponsinfoss["tfa_nmrih_asaw"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["tfa_nmrih_asaw"].BoneOffset={Vector(4,-2,13),Angle(-10,0,260)}

weaponsinfoss["tfa_nmrih_chainsaw"]={}
weaponsinfoss["tfa_nmrih_chainsaw"].Model="models/weapons/tfa_nmrih/w_me_chainsaw.mdl"
weaponsinfoss["tfa_nmrih_chainsaw"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["tfa_nmrih_chainsaw"].BoneOffset={Vector(4,-1,15),Angle(-10,0,260)}

weaponsinfoss["tfa_nmrih_bat"]={}
weaponsinfoss["tfa_nmrih_bat"].Model="models/weapons/tfa_nmrih/w_me_bat_metal.mdl"
weaponsinfoss["tfa_nmrih_bat"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["tfa_nmrih_bat"].BoneOffset={Vector(1.5,9,5),Angle(0,10,90)}

weaponsinfoss["tfa_nmrih_crowbar"]={}
weaponsinfoss["tfa_nmrih_crowbar"].Model="models/weapons/tfa_nmrih/w_me_crowbar.mdl"
weaponsinfoss["tfa_nmrih_crowbar"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["tfa_nmrih_crowbar"].BoneOffset={Vector(3.5,2,4),Angle(-50,10,90)}

weaponsinfoss["tfa_nmrih_fubar"]={}
weaponsinfoss["tfa_nmrih_fubar"].Model="models/weapons/tfa_nmrih/w_me_fubar.mdl"
weaponsinfoss["tfa_nmrih_fubar"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["tfa_nmrih_fubar"].BoneOffset={Vector(3.2,0,8),Angle(-30,5,-90)}

weaponsinfoss["tfa_nmrih_fireaxe"]={}
weaponsinfoss["tfa_nmrih_fireaxe"].Model="models/weapons/tfa_nmrih/w_me_axe_fire.mdl"
weaponsinfoss["tfa_nmrih_fireaxe"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["tfa_nmrih_fireaxe"].BoneOffset={Vector(3.8,2,4),Angle(-20,10,-90)}

weaponsinfoss["tfa_nmrih_lpipe"]={}
weaponsinfoss["tfa_nmrih_lpipe"].Model="models/weapons/tfa_nmrih/w_me_pipe_lead.mdl"
weaponsinfoss["tfa_nmrih_lpipe"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["tfa_nmrih_lpipe"].BoneOffset={Vector(3.8,3,4),Angle(-20,10,-90)}

weaponsinfoss["tfa_nmrih_pickaxe"]={}
weaponsinfoss["tfa_nmrih_pickaxe"].Model="models/weapons/tfa_nmrih/w_me_pickaxe.mdl"
weaponsinfoss["tfa_nmrih_pickaxe"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["tfa_nmrih_pickaxe"].BoneOffset={Vector(4.8,-2,7),Angle(-20,10,-90)}

weaponsinfoss["tfa_nmrih_sledge"]={}
weaponsinfoss["tfa_nmrih_sledge"].Model="models/weapons/tfa_nmrih/w_me_sledge.mdl"
weaponsinfoss["tfa_nmrih_sledge"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["tfa_nmrih_sledge"].BoneOffset={Vector(4.8,0,4),Angle(-20,10,-90)}

weaponsinfoss["tfa_nmrih_spade"]={}
weaponsinfoss["tfa_nmrih_spade"].Model="models/weapons/tfa_nmrih/w_me_spade.mdl"
weaponsinfoss["tfa_nmrih_spade"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["tfa_nmrih_spade"].BoneOffset={Vector(4.5,2,4),Angle(180,-10,-90)}

weaponsinfoss["tfa_nmrih_etool"]={}
weaponsinfoss["tfa_nmrih_etool"].Model="models/weapons/tfa_nmrih/w_me_etool.mdl"
weaponsinfoss["tfa_nmrih_etool"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["tfa_nmrih_etool"].BoneOffset={Vector(4,1,2),Angle(90,0,-98)}

weaponsinfoss["tfa_nmrih_cleaver"]={}
weaponsinfoss["tfa_nmrih_cleaver"].Model="models/weapons/tfa_nmrih/w_me_cleaver.mdl"
weaponsinfoss["tfa_nmrih_cleaver"].Bone="ValveBiped.Bip01_R_Thigh"
weaponsinfoss["tfa_nmrih_cleaver"].BoneOffset={Vector(3,4,-5),Angle(95,2,-90)}

weaponsinfoss["tfa_nmrih_hatchet"]={}
weaponsinfoss["tfa_nmrih_hatchet"].Model="models/weapons/tfa_nmrih/w_me_hatchet.mdl"
weaponsinfoss["tfa_nmrih_hatchet"].Bone="ValveBiped.Bip01_R_Thigh"
weaponsinfoss["tfa_nmrih_hatchet"].BoneOffset={Vector(0,10,-4),Angle(95,2,-90)}

weaponsinfoss["tfa_nmrih_kknife"]={}
weaponsinfoss["tfa_nmrih_kknife"].Model="models/weapons/tfa_nmrih/w_me_kitknife.mdl"
weaponsinfoss["tfa_nmrih_kknife"].Bone="ValveBiped.Bip01_R_Thigh"
weaponsinfoss["tfa_nmrih_kknife"].BoneOffset={Vector(0,7,-3.6),Angle(95,1,-90)}

weaponsinfoss["tfa_nmrih_machete"]={}
weaponsinfoss["tfa_nmrih_machete"].Model="models/weapons/tfa_nmrih/w_me_machete.mdl"
weaponsinfoss["tfa_nmrih_machete"].Bone="ValveBiped.Bip01_R_Thigh"
weaponsinfoss["tfa_nmrih_machete"].BoneOffset={Vector(0,7,-3.8),Angle(95,1,-90)}

weaponsinfoss["tfa_nmrih_bcd"]={}
weaponsinfoss["tfa_nmrih_bcd"].Model="models/weapons/tfa_nmrih/w_tool_barricade.mdl"
weaponsinfoss["tfa_nmrih_bcd"].Bone="ValveBiped.Bip01_R_Thigh"
weaponsinfoss["tfa_nmrih_bcd"].BoneOffset={Vector(0,7,-3.8),Angle(95,1,-90)}

-- TFA Heavy Weapons
-- Shotgun
weaponsinfoss["tfa_m3"]={}
weaponsinfoss["tfa_m3"].Model="models/weapons/w_benelli_m3.mdl"
weaponsinfoss["tfa_m3"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_m3"].BoneOffset={Vector(3.5,-8,-5),Angle(30,0,0)}

weaponsinfoss["tfa_browningauto5"]={}
weaponsinfoss["tfa_browningauto5"].Model="models/weapons/tfa_w_browning_auto.mdl"
weaponsinfoss["tfa_browningauto5"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_browningauto5"].BoneOffset={Vector(3.5,-8,-5),Angle(30,0,0)}

weaponsinfoss["tfa_dbarrel"]={}
weaponsinfoss["tfa_dbarrel"].Model="models/weapons/tfa_w_double_barrel_shotgun.mdl"
weaponsinfoss["tfa_dbarrel"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_dbarrel"].BoneOffset={Vector(3.5,-8,-5),Angle(30,0,0)}

weaponsinfoss["tfa_ithacam37"]={}
weaponsinfoss["tfa_ithacam37"].Model="models/weapons/w_ithaca_m37.mdl"
weaponsinfoss["tfa_ithacam37"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_ithacam37"].BoneOffset={Vector(3.5,-8,-5),Angle(30,0,0)}

weaponsinfoss["tfa_mossberg590"]={}
weaponsinfoss["tfa_mossberg590"].Model="models/weapons/w_mossberg_590.mdl"
weaponsinfoss["tfa_mossberg590"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_mossberg590"].BoneOffset={Vector(3.5,-8,-5),Angle(30,0,0)}

weaponsinfoss["tfa_jackhammer"]={}
weaponsinfoss["tfa_jackhammer"].Model="models/weapons/tfa_w_pancor_jackhammer.mdl"
weaponsinfoss["tfa_jackhammer"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_jackhammer"].BoneOffset={Vector(3.5,-8,-5),Angle(30,0,0)}

weaponsinfoss["tfa_remington870"]={}
weaponsinfoss["tfa_remington870"].Model="models/weapons/w_remington_870_tact.mdl"
weaponsinfoss["tfa_remington870"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_remington870"].BoneOffset={Vector(3.5,-8,-5),Angle(30,0,0)}

weaponsinfoss["tfa_spas12"]={}
weaponsinfoss["tfa_spas12"].Model="models/weapons/w_spas_12.mdl"
weaponsinfoss["tfa_spas12"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_spas12"].BoneOffset={Vector(3.5,-8,-5),Angle(30,0,0)}

weaponsinfoss["tfa_striker12"]={}
weaponsinfoss["tfa_striker12"].Model="models/weapons/w_striker_12g.mdl"
weaponsinfoss["tfa_striker12"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_striker12"].BoneOffset={Vector(3.5,-8,-5),Angle(30,0,0)}

weaponsinfoss["tfa_usas"]={}
weaponsinfoss["tfa_usas"].Model="models/weapons/w_usas_12.mdl"
weaponsinfoss["tfa_usas"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_usas"].BoneOffset={Vector(3.5,-8,-5),Angle(30,0,0)}

weaponsinfoss["tfa_1897winchester"]={}
weaponsinfoss["tfa_1897winchester"].Model="models/weapons/w_winchester_1897_trench.mdl"
weaponsinfoss["tfa_1897winchester"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_1897winchester"].BoneOffset={Vector(3.5,-8,-5),Angle(30,0,0)}

weaponsinfoss["tfa_1887winchester"]={}
weaponsinfoss["tfa_1887winchester"].Model="models/weapons/w_winchester_1887.mdl"
weaponsinfoss["tfa_1887winchester"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_1887winchester"].BoneOffset={Vector(3.5,-8,-5),Angle(30,0,0)}

--Snipers
weaponsinfoss["tfa_aw50"]={}
weaponsinfoss["tfa_aw50"].Model="models/weapons/tfa_w_acc_int_aw50.mdl"
weaponsinfoss["tfa_aw50"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_aw50"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_barret_m82"]={}
weaponsinfoss["tfa_barret_m82"].Model="models/weapons/tfa_w_barret_m82.mdl"
weaponsinfoss["tfa_barret_m82"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_barret_m82"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_m98b"]={}
weaponsinfoss["tfa_m98b"].Model="models/weapons/tfa_w_barrett_m98b.mdl"
weaponsinfoss["tfa_m98b"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_m98b"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_svu"]={}
weaponsinfoss["tfa_svu"].Model="models/weapons/tfa_w_dragunov_svu.mdl"
weaponsinfoss["tfa_svu"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_svu"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_sl8"]={}
weaponsinfoss["tfa_sl8"].Model="models/weapons/tfa_w_hk_sl8.mdl"
weaponsinfoss["tfa_sl8"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_sl8"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_intervention"]={}
weaponsinfoss["tfa_intervention"].Model="models/weapons/tfa_w_snip_int.mdl"
weaponsinfoss["tfa_intervention"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_intervention"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_m24"]={}
weaponsinfoss["tfa_m24"].Model="models/weapons/w_snip_m24_6.mdl"
weaponsinfoss["tfa_m24"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_m24"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_psg1"]={}
weaponsinfoss["tfa_psg1"].Model="models/weapons/tfa_w_hk_psg1.mdl"
weaponsinfoss["tfa_psg1"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_psg1"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_remington7615p"]={}
weaponsinfoss["tfa_remington7615p"].Model="models/weapons/w_remington_7615p.mdl"
weaponsinfoss["tfa_remington7615p"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_remington7615p"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_dragunov"]={}
weaponsinfoss["tfa_dragunov"].Model="models/weapons/tfa_w_svd_dragunov.mdl"
weaponsinfoss["tfa_dragunov"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_dragunov"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_svt40"]={}
weaponsinfoss["tfa_svt40"].Model="models/weapons/tfa_w_svt_40.mdl"
weaponsinfoss["tfa_svt40"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_svt40"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_contender"]={}
weaponsinfoss["tfa_contender"].Model="models/weapons/tfa_w_g2_contender.mdl"
weaponsinfoss["tfa_contender"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_contender"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

-- Machine Guns
weaponsinfoss["tfa_ares_shrike"]={}
weaponsinfoss["tfa_ares_shrike"].Model="models/weapons/tfa_w_ares_shrike.mdl"
weaponsinfoss["tfa_ares_shrike"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_ares_shrike"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_fg42"]={}
weaponsinfoss["tfa_fg42"].Model="models/weapons/tfa_w_fg42.mdl"
weaponsinfoss["tfa_fg42"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_fg42"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_minigun"]={}
weaponsinfoss["tfa_minigun"].Model="models/weapons/tfa_w_m134_minigun.mdl"
weaponsinfoss["tfa_minigun"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_minigun"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_m1918bar"]={}
weaponsinfoss["tfa_m1918bar"].Model="models/weapons/tfa_w_m1918_bar.mdl"
weaponsinfoss["tfa_m1918bar"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_m1918bar"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_m249lmg"]={}
weaponsinfoss["tfa_m249lmg"].Model="models/weapons/tfa_w_m249_machine_gun.mdl"
weaponsinfoss["tfa_m249lmg"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_m249lmg"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_m60"]={}
weaponsinfoss["tfa_m60"].Model="models/weapons/w_m60_machine_gun.mdl"
weaponsinfoss["tfa_m60"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_m60"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

weaponsinfoss["tfa_pkm"]={}
weaponsinfoss["tfa_pkm"].Model="models/weapons/w_mach_russ_pkm.mdl"
weaponsinfoss["tfa_pkm"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_pkm"].BoneOffset={Vector(4,-7,-4),Angle(30,0,0)}

function LPGB(dotrace)
    if !dotrace then
    for i=0,LocalPlayer():GetBoneCount()-1 do
        print(LocalPlayer():GetBoneName(i))
    end
    else
    local entity=LocalPlayer():GetEyeTrace().Entity
    if !IsValid(entity) then return end
    for i=0,entity:GetBoneCount()-1 do
        print(entity:GetBoneName(i))
    end
    end
end
 
local function CalcOffset(pos,ang,off)
        return pos + ang:Right() * off.x + ang:Forward() * off.y + ang:Up() * off.z;
end
     
local function clhasweapon(pl,weaponclass)
    for i,v in pairs(pl:GetWeapons()) do
        if string.lower(v:GetClass())==string.lower(weaponclass) then return true end
    end
     
    return false;
end
 
local function clgetweapon(pl,weaponclass)
    for i,v in pairs(pl:GetWeapons()) do
        if string.lower(v:GetClass())==string.lower(weaponclass) then return v end
    end
     
    return nil;
end
 
local function playergettf2class(ply)
    return ply:GetPlayerClass()
end
 
local function IsTf2Class(ply)
   return LocalPlayer().IsHL2 && !LocalPlayer():IsHL2()
end
 
local function GetHolsteredWeaponTable(ply,indx)
    local class=IsTf2Class(ply) and playergettf2class(ply) or nil
    if !class then  return weaponsinfoss[indx]
    else return (weaponsinfoss[indx] && weaponsinfoss[indx][class]) and weaponsinfoss[indx][class] or nil
    end
end
 
local function thinkdamnit()
    if !holsteredgunssconvar:GetBool() then return end
    for _,pl in pairs(player.GetAll()) do
        if !IsValid(pl) then continue end
         
        if !pl.CL_CS_WEPS then
            pl.CL_CS_WEPS={}
        end
         
        if !pl:Alive() then pl.CL_CS_WEPS={} continue end
         
        if NEXT_WEAPONS_UPDATE<CurTime() then
            pl.CL_CS_WEPS={} 
            NEXT_WEAPONS_UPDATE=CurTime()+5
        end
         
        for i,v in pairs(pl:GetWeapons())do
            if !IsValid(v) then continue; end
             
            if pl.CL_CS_WEPS[v:GetClass()] then continue end
             
            if !pl.CL_CS_WEPS[v:GetClass()] then
                local worldmodel=v.WorldModelOverride or v.WorldModel
                local attachedwmodel=v.AttachedWorldModel;
                 
                if GetHolsteredWeaponTable(pl,v:GetClass()) && GetHolsteredWeaponTable(pl,v:GetClass()).Model then
                    worldmodel=GetHolsteredWeaponTable(pl,v:GetClass()).Model
                end
                if !worldmodel || worldmodel=="" then continue end;
                 
                 
                pl.CL_CS_WEPS[v:GetClass()]=ClientsideModel(worldmodel,RENDERGROUP_OPAQUE)
                pl.CL_CS_WEPS[v:GetClass()]:SetNoDraw(true)
                pl.CL_CS_WEPS[v:GetClass()]:SetSkin(v:GetSkin())
                pl.CL_CS_WEPS[v:GetClass()]:SetColor(v:GetColor())
                 
                if GetHolsteredWeaponTable(pl,v:GetClass()) && GetHolsteredWeaponTable(pl,v:GetClass()).Scale then
                    pl.CL_CS_WEPS[v:GetClass()]:SetModelScale(GetHolsteredWeaponTable(pl,v:GetClass()).Scale);
                end
                 
                if GetHolsteredWeaponTable(pl,v:GetClass()) && GetHolsteredWeaponTable(pl,v:GetClass()).BBP then
                    pl.CL_CS_WEPS[v:GetClass()].BuildBonePositions=GetHolsteredWeaponTable(pl,v:GetClass()).BBP;
                end
                 
                if v.MaterialOverride || v:GetMaterial() then
                    pl.CL_CS_WEPS[v:GetClass()]:SetMaterial(v.MaterialOverride || v:GetMaterial())
                end
                if worldmodel == "models/weapons/w_models/w_shotgun.mdl" then
                    pl.CL_CS_WEPS[v:GetClass()]:SetMaterial("models/weapons/w_shotgun_tf/w_shotgun_tf")
                end
                 
                pl.CL_CS_WEPS[v:GetClass()].WModelAttachment=v.WModelAttachment
                pl.CL_CS_WEPS[v:GetClass()].WorldModelVisible=v.WorldModelVisible
                 
                 
                if attachedwmodel then
                    pl.CL_CS_WEPS[v:GetClass()].AttachedModel=ClientsideModel(attachedwmodel,RENDERGROUP_OPAQUE)
                    pl.CL_CS_WEPS[v:GetClass()].AttachedModel:SetNoDraw(true)
                    pl.CL_CS_WEPS[v:GetClass()].AttachedModel:SetSkin(v:GetSkin())
                    pl.CL_CS_WEPS[v:GetClass()].AttachedModel:SetParent(pl.CL_CS_WEPS[v:GetClass()])
                    pl.CL_CS_WEPS[v:GetClass()].AttachedModel:AddEffects( EF_BONEMERGE, EF_BONEMERGE_FASTCULL, EF_PARENT_ANIMATES )
                end
            end
        end
    end
end
 
local function playerdrawdamnit(pl,legs)
    if !holsteredgunssconvar:GetBool() then return end
    if !IsValid(pl) then return end
    if !pl.CL_CS_WEPS then return end
    for i,v in pairs(pl.CL_CS_WEPS) do
 
             
        if GetHolsteredWeaponTable(pl,i) && (pl:GetActiveWeapon()==NULL || pl:GetActiveWeapon():GetClass()~=i) && clhasweapon(pl,i) then
            if GetHolsteredWeaponTable(pl,i).Priority then
                local priority=GetHolsteredWeaponTable(pl,i).Priority
                local bol=GetHolsteredWeaponTable(pl,priority) && (pl:GetActiveWeapon()==NULL || pl:GetActiveWeapon():GetClass()!=priority) && clhasweapon(pl,priority)
                if bol then continue; end
            end
             
            local oldpl=pl;
            local wep=clgetweapon(oldpl,i)
             
            if legs && IsValid(legs) then
            pl=legs;
            end
             
            if legs && IsValid(legs) && (string.find(string.lower(GetHolsteredWeaponTable(oldpl,i).Bone),"spine") or string.find(string.lower(GetHolsteredWeaponTable(oldpl,i).Bone),"clavi") ) then
            pl=oldpl;
            continue;
            end
             
            local bone=pl:LookupBone(GetHolsteredWeaponTable(oldpl,i).Bone or "")
            if !bone then pl=oldpl;continue; end
 
             
            local matrix = pl:GetBoneMatrix(bone)
            if !matrix then pl=oldpl;continue; end
            local pos = matrix:GetTranslation()
			local ang = matrix:GetAngles()
            local pos=CalcOffset(pos,ang,GetHolsteredWeaponTable(oldpl,i).BoneOffset[1])
            if GetHolsteredWeaponTable(oldpl,i).Skin then v:SetSkin(GetHolsteredWeaponTable(oldpl,i).Skin) end
             
            v:SetRenderOrigin(pos)
             
            ang:RotateAroundAxis(ang:Forward(),GetHolsteredWeaponTable(oldpl,i).BoneOffset[2].p)
            ang:RotateAroundAxis(ang:Up(),GetHolsteredWeaponTable(oldpl,i).BoneOffset[2].y)
            ang:RotateAroundAxis(ang:Right(),GetHolsteredWeaponTable(oldpl,i).BoneOffset[2].r)
             
            v:SetRenderAngles(ang)
            if v.WorldModelVisible==nil || (v.WorldModelVisible!=false) then
                v:DrawModel();
            end
             
            if IsValid(v.AttachedModel) then
                v.AttachedModel:DrawModel();
            end
            if v.WModelAttachment && multimodel then
                multimodel.Draw(v.WModelAttachment, wep, {origin=pos, angles=ang})
                multimodel.DoFrameAdvance(v.WModelAttachment, CurTime(),wep)
            end
             
            if GetHolsteredWeaponTable(oldpl,i).DrawFunction then
                GetHolsteredWeaponTable(oldpl,i).DrawFunction(v,oldpl)
            end
            pl=oldpl;
        end
    end
end
 
local function drawlegsdamnit(legs)
    playerdrawdamnit(LocalPlayer(),legs)
end
 
hook.Add("PostLegsDraw","HG_DrawOnLegs",drawlegsdamnit)
hook.Add("Think","HG_Think",thinkdamnit)
hook.Add("PostPlayerDraw","HG_Draw",playerdrawdamnit)