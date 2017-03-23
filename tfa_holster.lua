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
weaponsinfoss["tfa_browningauto5"].BoneOffset={Vector(6,12,7),Angle(180,90,0)}

weaponsinfoss["tfa_dbarrel"]={}
weaponsinfoss["tfa_dbarrel"].Model="models/weapons/tfa_w_double_barrel_shotgun.mdl"
weaponsinfoss["tfa_dbarrel"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_dbarrel"].BoneOffset={Vector(6,12,7),Angle(180,90,0)}

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
weaponsinfoss["tfa_jackhammer"].BoneOffset={Vector(3.5,12,-2),Angle(0,90,0)}

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
weaponsinfoss["tfa_aw50"].BoneOffset={Vector(4,10,-8),Angle(-30,90,30)}

weaponsinfoss["tfa_barret_m82"]={}
weaponsinfoss["tfa_barret_m82"].Model="models/weapons/tfa_w_barret_m82.mdl"
weaponsinfoss["tfa_barret_m82"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_barret_m82"].BoneOffset={Vector(4,10,-8),Angle(-30,90,30)}

weaponsinfoss["tfa_m98b"]={}
weaponsinfoss["tfa_m98b"].Model="models/weapons/tfa_w_barrett_m98b.mdl"
weaponsinfoss["tfa_m98b"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_m98b"].BoneOffset={Vector(4,10,-8),Angle(-30,90,30)}

weaponsinfoss["tfa_svu"]={}
weaponsinfoss["tfa_svu"].Model="models/weapons/tfa_w_dragunov_svu.mdl"
weaponsinfoss["tfa_svu"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_svu"].BoneOffset={Vector(4,10,-8),Angle(-30,90,30)}

weaponsinfoss["tfa_sl8"]={}
weaponsinfoss["tfa_sl8"].Model="models/weapons/tfa_w_hk_sl8.mdl"
weaponsinfoss["tfa_sl8"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_sl8"].BoneOffset={Vector(4,10,-8),Angle(-30,90,30)}

weaponsinfoss["tfa_intervention"]={}
weaponsinfoss["tfa_intervention"].Model="models/weapons/tfa_w_snip_int.mdl"
weaponsinfoss["tfa_intervention"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_intervention"].BoneOffset={Vector(6,4,-5),Angle(-0,180,0)}

weaponsinfoss["tfa_m24"]={}
weaponsinfoss["tfa_m24"].Model="models/weapons/w_snip_m24_6.mdl"
weaponsinfoss["tfa_m24"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_m24"].BoneOffset={Vector(4,6,-8),Angle(-30,90,30)}

weaponsinfoss["tfa_psg1"]={}
weaponsinfoss["tfa_psg1"].Model="models/weapons/tfa_w_hk_psg1.mdl"
weaponsinfoss["tfa_psg1"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_psg1"].BoneOffset={Vector(4,10,-8),Angle(-30,90,30)}

weaponsinfoss["tfa_remington7615p"]={}
weaponsinfoss["tfa_remington7615p"].Model="models/weapons/w_remington_7615p.mdl"
weaponsinfoss["tfa_remington7615p"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_remington7615p"].BoneOffset={Vector(6,-4,-8),Angle(-0,0,0)}

weaponsinfoss["tfa_dragunov"]={}
weaponsinfoss["tfa_dragunov"].Model="models/weapons/tfa_w_svd_dragunov.mdl"
weaponsinfoss["tfa_dragunov"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_dragunov"].BoneOffset={Vector(4,10,-8),Angle(-30,90,30)}

weaponsinfoss["tfa_svt40"]={}
weaponsinfoss["tfa_svt40"].Model="models/weapons/tfa_w_svt_40.mdl"
weaponsinfoss["tfa_svt40"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_svt40"].BoneOffset={Vector(4,10,-8),Angle(-30,90,30)}

weaponsinfoss["tfa_contender"]={}
weaponsinfoss["tfa_contender"].Model="models/weapons/tfa_w_g2_contender.mdl"
weaponsinfoss["tfa_contender"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_contender"].BoneOffset={Vector(2,16,-8),Angle(-30,90,30)}

-- Machine Guns
weaponsinfoss["tfa_ares_shrike"]={}
weaponsinfoss["tfa_ares_shrike"].Model="models/weapons/tfa_w_ares_shrike.mdl"
weaponsinfoss["tfa_ares_shrike"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_ares_shrike"].BoneOffset={Vector(8,10,8),Angle(-35,90,-140)}

weaponsinfoss["tfa_fg42"]={}
weaponsinfoss["tfa_fg42"].Model="models/weapons/tfa_w_fg42.mdl"
weaponsinfoss["tfa_fg42"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_fg42"].BoneOffset={Vector(6,10,8),Angle(-35,90,-140)}

weaponsinfoss["tfa_minigun"]={}
weaponsinfoss["tfa_minigun"].Model="models/weapons/tfa_w_m134_minigun.mdl"
weaponsinfoss["tfa_minigun"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_minigun"].BoneOffset={Vector(8,20,0),Angle(-35,90,-140)}

weaponsinfoss["tfa_m1918bar"]={}
weaponsinfoss["tfa_m1918bar"].Model="models/weapons/tfa_w_m1918_bar.mdl"
weaponsinfoss["tfa_m1918bar"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_m1918bar"].BoneOffset={Vector(6,16,8),Angle(-35,90,-140)}

weaponsinfoss["tfa_m249lmg"]={}
weaponsinfoss["tfa_m249lmg"].Model="models/weapons/tfa_w_m249_machine_gun.mdl"
weaponsinfoss["tfa_m249lmg"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_m249lmg"].BoneOffset={Vector(8,10,8),Angle(-35,90,-140)}

weaponsinfoss["tfa_m60"]={}
weaponsinfoss["tfa_m60"].Model="models/weapons/w_m60_machine_gun.mdl"
weaponsinfoss["tfa_m60"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_m60"].BoneOffset={Vector(-3,-10,4),Angle(-85,180,-165)}

weaponsinfoss["tfa_pkm"]={}
weaponsinfoss["tfa_pkm"].Model="models/weapons/w_mach_russ_pkm.mdl"
weaponsinfoss["tfa_pkm"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_pkm"].BoneOffset={Vector(4,10,4),Angle(-90,0,-180)}

--	TFA Assault

weaponsinfoss["tfa_ak47"]={}
weaponsinfoss["tfa_ak47"].Model="models/weapons/tfa_w_ak47_tfa.mdl"
weaponsinfoss["tfa_ak47"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_ak47"].BoneOffset={Vector(2.8,-12,-1),Angle(-175,-90,0)}

weaponsinfoss["tfa_ak74"]={}
weaponsinfoss["tfa_ak74"].Model="models/weapons/tfa_w_tct_ak47.mdl"
weaponsinfoss["tfa_ak74"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_ak74"].BoneOffset={Vector(3.8,2,-4),Angle(-175,-180,0)}

weaponsinfoss["tfa_amd65"]={}
weaponsinfoss["tfa_amd65"].Model="models/weapons/tfa_w_amd_65.mdl"
weaponsinfoss["tfa_amd65"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_amd65"].BoneOffset={Vector(3.4,-12,-1),Angle(-175,-90,0)}

weaponsinfoss["tfa_auga3"]={}
weaponsinfoss["tfa_auga3"].Model="models/weapons/tfa_w_auga3.mdl"
weaponsinfoss["tfa_auga3"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_auga3"].BoneOffset={Vector(4,-6,-1),Angle(-175,-90,0)}

weaponsinfoss["tfa_l85"]={}
weaponsinfoss["tfa_l85"].Model="models/weapons/tfa_w_l85a2.mdl"
weaponsinfoss["tfa_l85"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_l85"].BoneOffset={Vector(3.8,-6,-1),Angle(-175,-90,0)}

weaponsinfoss["tfa_m16a4_acog"]={}
weaponsinfoss["tfa_m16a4_acog"].Model="models/weapons/tfa_w_dmg_m16ag.mdl"
weaponsinfoss["tfa_m16a4_acog"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_m16a4_acog"].BoneOffset={Vector(3.7,2,-4),Angle(-175,-180,0)}

weaponsinfoss["tfa_m4a1"]={}
weaponsinfoss["tfa_m4a1"].Model="models/weapons/tfa_w_m4a1_iron.mdl"
weaponsinfoss["tfa_m4a1"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_m4a1"].BoneOffset={Vector(4.7,3,-2),Angle(-175,-180,-10)}

weaponsinfoss["tfa_winchester73"]={}
weaponsinfoss["tfa_winchester73"].Model="models/weapons/tfa_w_winchester_1873.mdl"
weaponsinfoss["tfa_winchester73"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_winchester73"].BoneOffset={Vector(3.3,-12,0),Angle(-175,-90,0)}

weaponsinfoss["tfa_acr"]={}
weaponsinfoss["tfa_acr"].Model="models/weapons/tfa_w_masada_acr.mdl"
weaponsinfoss["tfa_acr"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_acr"].BoneOffset={Vector(3.3,-10,0),Angle(-175,-90,0)}

weaponsinfoss["tfa_val"]={}
weaponsinfoss["tfa_val"].Model="models/weapons/tfa_w_dmg_vally.mdl"
weaponsinfoss["tfa_val"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_val"].BoneOffset={Vector(3.6,1,-6),Angle(-175,-180,0)}

weaponsinfoss["tfa_an94"]={}
weaponsinfoss["tfa_an94"].Model="models/weapons/tfa_w_rif_an_94.mdl"
weaponsinfoss["tfa_an94"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_an94"].BoneOffset={Vector(3.6,4,-4.5),Angle(-175,-180,-10)}

weaponsinfoss["tfa_f2000"]={}
weaponsinfoss["tfa_f2000"].Model="models/weapons/tfa_w_fn_f2000.mdl"
weaponsinfoss["tfa_f2000"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_f2000"].BoneOffset={Vector(3.5,-8,2),Angle(-175,-90,0)}

weaponsinfoss["tfa_famas"]={}
weaponsinfoss["tfa_famas"].Model="models/weapons/tfa_w_tct_famas.mdl"
weaponsinfoss["tfa_famas"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_famas"].BoneOffset={Vector(3.6,4,-4.5),Angle(-175,-180,-10)}

weaponsinfoss["tfa_fal"]={}
weaponsinfoss["tfa_fal"].Model="models/weapons/tfa_w_fn_fal.mdl"
weaponsinfoss["tfa_fal"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_fal"].BoneOffset={Vector(3.6,4,-4.5),Angle(-175,-180,-10)}

weaponsinfoss["tfa_g36"]={}
weaponsinfoss["tfa_g36"].Model="models/weapons/tfa_w_hk_g36c.mdl"
weaponsinfoss["tfa_g36"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_g36"].BoneOffset={Vector(3.5,-8,1),Angle(-175,-90,0)}

weaponsinfoss["tfa_m416"]={}
weaponsinfoss["tfa_m416"].Model="models/weapons/tfa_w_hk_416.mdl"
weaponsinfoss["tfa_m416"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_m416"].BoneOffset={Vector(3.5,-10,0),Angle(-175,-90,0)}

weaponsinfoss["tfa_g3a3"]={}
weaponsinfoss["tfa_g3a3"].Model="models/weapons/tfa_w_hk_g3.mdl"
weaponsinfoss["tfa_g3a3"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_g3a3"].BoneOffset={Vector(3.3,-10,0),Angle(-175,-90,0)}

weaponsinfoss["tfa_m14sp"]={}
weaponsinfoss["tfa_m14sp"].Model="models/weapons/tfa_w_snip_m14sp.mdl"
weaponsinfoss["tfa_m14sp"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_m14sp"].BoneOffset={Vector(3.6,4,-3),Angle(-175,-180,-10)}

weaponsinfoss["tfa_scar"]={}
weaponsinfoss["tfa_scar"].Model="models/weapons/tfa_w_fn_scar_h.mdl"
weaponsinfoss["tfa_scar"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_scar"].BoneOffset={Vector(3.3,-10,0),Angle(-175,-90,0)}

weaponsinfoss["tfa_vikhr"]={}
weaponsinfoss["tfa_vikhr"].Model="models/weapons/tfa_w_dmg_vikhr.mdl"
weaponsinfoss["tfa_vikhr"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_vikhr"].BoneOffset={Vector(3.6,7,-4),Angle(-175,-180,-10)}

weaponsinfoss["tfa_tar21"]={}
weaponsinfoss["tfa_tar21"].Model="models/weapons/tfa_w_imi_tar21.mdl"
weaponsinfoss["tfa_tar21"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_tar21"].BoneOffset={Vector(3.3,-2,-1),Angle(-175,-90,0)}

weaponsinfoss["tfa_honeybadger"]={}
weaponsinfoss["tfa_honeybadger"].Model="models/weapons/tfa_w_aac_honeybadger.mdl"
weaponsinfoss["tfa_honeybadger"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_honeybadger"].BoneOffset={Vector(5.3,-8,-1),Angle(0,-90,0)}

weaponsinfoss["tfa_bizonp19"]={}
weaponsinfoss["tfa_bizonp19"].Model="models/weapons/tfa_w_pp19_bizon.mdl"
weaponsinfoss["tfa_bizonp19"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_bizonp19"].BoneOffset={Vector(5.3,-8,-1),Angle(0,-90,0)}

weaponsinfoss["tfa_smgp90"]={}
weaponsinfoss["tfa_smgp90"].Model="models/weapons/tfa_w_fn_p90.mdl"
weaponsinfoss["tfa_smgp90"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_smgp90"].BoneOffset={Vector(5.3,-2,0.5),Angle(0,-90,0)}

weaponsinfoss["tfa_mp5"]={}
weaponsinfoss["tfa_mp5"].Model="models/weapons/tfa_w_hk_mp5.mdl"
weaponsinfoss["tfa_mp5"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_mp5"].BoneOffset={Vector(5.3,-8,-1),Angle(0,-90,0)}

weaponsinfoss["tfa_mp7"]={}
weaponsinfoss["tfa_mp7"].Model="models/weapons/tfa_w_mp7_silenced.mdl"
weaponsinfoss["tfa_mp7"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_mp7"].BoneOffset={Vector(5.5,2,4),Angle(-10,0,0)}

weaponsinfoss["tfa_ump45"]={}
weaponsinfoss["tfa_ump45"].Model="models/weapons/tfa_w_hk_ump45.mdl"
weaponsinfoss["tfa_ump45"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_ump45"].BoneOffset={Vector(6,-8,0),Angle(-10,-90,0)}

weaponsinfoss["tfa_usc"]={}
weaponsinfoss["tfa_usc"].Model="models/weapons/tfa_w_hk_usc.mdl"
weaponsinfoss["tfa_usc"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_usc"].BoneOffset={Vector(6,-8,0),Angle(-10,-90,0)}

weaponsinfoss["tfa_kac_pdw"]={}
weaponsinfoss["tfa_kac_pdw"].Model="models/weapons/tfa_w_kac_pdw.mdl"
weaponsinfoss["tfa_kac_pdw"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_kac_pdw"].BoneOffset={Vector(6,-8,0),Angle(-10,-90,0)}

weaponsinfoss["tfa_vector"]={}
weaponsinfoss["tfa_vector"].Model="models/weapons/tfa_w_kriss_vector.mdl"
weaponsinfoss["tfa_vector"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_vector"].BoneOffset={Vector(6,-8,0),Angle(-10,-90,0)}

weaponsinfoss["tfa_magpulpdr"]={}
weaponsinfoss["tfa_magpulpdr"].Model="models/weapons/tfa_w_magpul_pdr.mdl"
weaponsinfoss["tfa_magpulpdr"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_magpulpdr"].BoneOffset={Vector(6,-2,0),Angle(-10,-90,0)}

weaponsinfoss["tfa_mp40"]={}
weaponsinfoss["tfa_mp40"].Model="models/weapons/tfa_w_mp40smg.mdl"
weaponsinfoss["tfa_mp40"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_mp40"].BoneOffset={Vector(4.8,2,4),Angle(-10,-180,0)}

weaponsinfoss["tfa_mp5sd"]={}
weaponsinfoss["tfa_mp5sd"].Model="models/weapons/tfa_w_hk_mp5sd.mdl"
weaponsinfoss["tfa_mp5sd"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_mp5sd"].BoneOffset={Vector(6,-9,0),Angle(-10,-90,0)}

weaponsinfoss["tfa_mp9"]={}
weaponsinfoss["tfa_mp9"].Model="models/weapons/tfa_w_brugger_thomet_mp9.mdl"
weaponsinfoss["tfa_mp9"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_mp9"].BoneOffset={Vector(5.5,-9,1),Angle(-10,-90,0)}

weaponsinfoss["tfa_sten"]={}
weaponsinfoss["tfa_sten"].Model="models/weapons/tfa_w_sten.mdl"
weaponsinfoss["tfa_sten"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_sten"].BoneOffset={Vector(4.5,-9,8),Angle(-180,-90,0)}

weaponsinfoss["tfa_tec9"]={}
weaponsinfoss["tfa_tec9"].Model="models/weapons/tfa_w_intratec_tec9.mdl"
weaponsinfoss["tfa_tec9"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_tec9"].BoneOffset={Vector(6,-9,1),Angle(-10,90,0)}

weaponsinfoss["tfa_thompson"]={}
weaponsinfoss["tfa_thompson"].Model="models/weapons/tfa_w_tommy_gun.mdl"
weaponsinfoss["tfa_thompson"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_thompson"].BoneOffset={Vector(5,-5,3),Angle(-10,-90,0)}

weaponsinfoss["tfa_uzi"]={}
weaponsinfoss["tfa_uzi"].Model="models/weapons/tfa_wuzi_imi.mdl"
weaponsinfoss["tfa_uzi"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_uzi"].BoneOffset={Vector(5.5,-2,1),Angle(-10,-90,0)}

weaponsinfoss["tfa_coltpython"]={}
weaponsinfoss["tfa_coltpython"].Model="models/weapons/tfa_wcolt_python.mdl"
weaponsinfoss["tfa_coltpython"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_coltpython"].BoneOffset={Vector(-1,-9.5,-4),Angle(5,360,-5)}

weaponsinfoss["tfa_m29satan"]={}
weaponsinfoss["tfa_m29satan"].Model="models/weapons/tfa_w_m29_satan.mdl"
weaponsinfoss["tfa_m29satan"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_m29satan"].BoneOffset={Vector(-1,-9.5,-4),Angle(5,360,-5)}

weaponsinfoss["tfa_remington1858"]={}
weaponsinfoss["tfa_remington1858"].Model="models/weapons/tfa_w_remington_1858.mdl"
weaponsinfoss["tfa_remington1858"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_remington1858"].BoneOffset={Vector(-1,-9.5,-4),Angle(5,360,-5)}

weaponsinfoss["tfa_ragingbull"]={}
weaponsinfoss["tfa_ragingbull"].Model="models/weapons/tfa_w_taurus_raging_bull.mdl"
weaponsinfoss["tfa_ragingbull"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_ragingbull"].BoneOffset={Vector(-1,-9.5,-4),Angle(5,360,-5)}

weaponsinfoss["tfa_scoped_taurus"]={}
weaponsinfoss["tfa_scoped_taurus"].Model="models/weapons/tfa_w_raging_bull_scoped.mdl"
weaponsinfoss["tfa_scoped_taurus"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_scoped_taurus"].BoneOffset={Vector(-1,-9,-4),Angle(5,180,-5)}

weaponsinfoss["tfa_model3russian"]={}
weaponsinfoss["tfa_model3russian"].Model="models/weapons/tfa_w_model_3_rus.mdl"
weaponsinfoss["tfa_model3russian"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_model3russian"].BoneOffset={Vector(-1,-9.5,-4),Angle(5,360,-5)}

weaponsinfoss["tfa_model500"]={}
weaponsinfoss["tfa_model500"].Model="models/weapons/tfa_w_sw_model_500.mdl"
weaponsinfoss["tfa_model500"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_model500"].BoneOffset={Vector(-1,-9.5,-4),Angle(5,360,-5)}

weaponsinfoss["tfa_model627"]={}
weaponsinfoss["tfa_model627"].Model="models/weapons/tfa_w_sw_model_627.mdl"
weaponsinfoss["tfa_model627"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_model627"].BoneOffset={Vector(-1,-9.5,-4),Angle(5,360,-5)}

weaponsinfoss["tfa_colt1911"]={}
weaponsinfoss["tfa_colt1911"].Model="models/weapons/tfa_w__dmgf_co1911.mdl"
weaponsinfoss["tfa_colt1911"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_colt1911"].BoneOffset={Vector(5,-7,0),Angle(-90,90,95)}

weaponsinfoss["tfa_deagle"]={}
weaponsinfoss["tfa_deagle"].Model="models/weapons/tfa_w_tcom_deagle.mdl"
weaponsinfoss["tfa_deagle"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_deagle"].BoneOffset={Vector(5,-7,0),Angle(-90,90,95)}

weaponsinfoss["tfa_glock"]={}
weaponsinfoss["tfa_glock"].Model="models/weapons/tfa_w_dmg_glock.mdl"
weaponsinfoss["tfa_glock"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_glock"].BoneOffset={Vector(5,-7,0),Angle(-90,90,95)}

weaponsinfoss["tfa_usp"]={}
weaponsinfoss["tfa_usp"].Model="models/weapons/tfa_w_pist_fokkususp.mdl"
weaponsinfoss["tfa_usp"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_usp"].BoneOffset={Vector(5,-7,0),Angle(-90,90,95)}

weaponsinfoss["tfa_m92beretta"]={}
weaponsinfoss["tfa_m92beretta"].Model="models/weapons/tfa_w_beretta_m92.mdl"
weaponsinfoss["tfa_m92beretta"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_m92beretta"].BoneOffset={Vector(0,-8.8,-4),Angle(0,360,-360)}

weaponsinfoss["tfa_hk45"]={}
weaponsinfoss["tfa_hk45"].Model="models/weapons/tfa_w_hk45c.mdl"
weaponsinfoss["tfa_hk45"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_hk45"].BoneOffset={Vector(0,-9,-4),Angle(0,360,-360)}

weaponsinfoss["tfa_sig_p229r"]={}
weaponsinfoss["tfa_sig_p229r"].Model="models/weapons/tfa_w_sig_229r.mdl"
weaponsinfoss["tfa_sig_p229r"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_sig_p229r"].BoneOffset={Vector(0,-9,-4),Angle(0,360,-360)}

weaponsinfoss["tfa_luger"]={}
weaponsinfoss["tfa_luger"].Model="models/weapons/tfa_w_luger_p08.mdl"
weaponsinfoss["tfa_luger"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_luger"].BoneOffset={Vector(0,-9,-4),Angle(0,360,-360)}

--
--	TFA CS:GO
--	Primaries

weaponsinfoss["tfa_csgo_ak47"]={}
weaponsinfoss["tfa_csgo_ak47"].Model="models/weapons/tfa_csgo/w_ak47.mdl"
weaponsinfoss["tfa_csgo_ak47"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_ak47"].BoneOffset={Vector(3.8,-3,-3),Angle(-175,0,-90)}

weaponsinfoss["tfa_csgo_aug"]={}
weaponsinfoss["tfa_csgo_aug"].Model="models/weapons/tfa_csgo/w_aug.mdl"
weaponsinfoss["tfa_csgo_aug"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_aug"].BoneOffset={Vector(3.8,2,-5.5),Angle(-175,0,-90)}

weaponsinfoss["tfa_csgo_awp"]={}
weaponsinfoss["tfa_csgo_awp"].Model="models/weapons/tfa_csgo/w_awp.mdl"
weaponsinfoss["tfa_csgo_awp"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_awp"].BoneOffset={Vector(3.8,-6,-3.5),Angle(-175,0,-0)}

weaponsinfoss["tfa_csgo_famas"]={}
weaponsinfoss["tfa_csgo_famas"].Model="models/weapons/tfa_csgo/w_famas.mdl"
weaponsinfoss["tfa_csgo_famas"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_famas"].BoneOffset={Vector(3.8,2,-5.5),Angle(-175,0,-90)}

weaponsinfoss["tfa_csgo_galil"]={}
weaponsinfoss["tfa_csgo_galil"].Model="models/weapons/tfa_csgo/w_galil.mdl"
weaponsinfoss["tfa_csgo_galil"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_galil"].BoneOffset={Vector(3.8,-2,-5.5),Angle(-175,0,-90)}

weaponsinfoss["tfa_csgo_m249"]={}
weaponsinfoss["tfa_csgo_m249"].Model="models/weapons/tfa_csgo/w_m249.mdl"
weaponsinfoss["tfa_csgo_m249"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_m249"].BoneOffset={Vector(3.8,2,-5.5),Angle(-175,0,-90)}

weaponsinfoss["tfa_csgo_m4a1"]={}
weaponsinfoss["tfa_csgo_m4a1"].Model="models/weapons/tfa_csgo/w_m4a1.mdl"
weaponsinfoss["tfa_csgo_m4a1"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_m4a1"].BoneOffset={Vector(3.8,0,-2.5),Angle(-175,0,-90)}

weaponsinfoss["tfa_csgo_m4a4"]={}
weaponsinfoss["tfa_csgo_m4a4"].Model="models/weapons/tfa_csgo/w_m4a4.mdl"
weaponsinfoss["tfa_csgo_m4a4"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_m4a4"].BoneOffset={Vector(3.8,0,-3.5),Angle(-175,0,-90)}

weaponsinfoss["tfa_csgo_negev"]={}
weaponsinfoss["tfa_csgo_negev"].Model="models/weapons/tfa_csgo/w_negev.mdl"
weaponsinfoss["tfa_csgo_negev"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_negev"].BoneOffset={Vector(4.5,-6,-0.5),Angle(-175,0,-0)}

weaponsinfoss["tfa_csgo_sg556"]={}
weaponsinfoss["tfa_csgo_sg556"].Model="models/weapons/tfa_csgo/w_sg556.mdl"
weaponsinfoss["tfa_csgo_sg556"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_sg556"].BoneOffset={Vector(3.8,0,-3.5),Angle(-175,0,-90)}

weaponsinfoss["tfa_csgo_nova"]={}
weaponsinfoss["tfa_csgo_nova"].Model="models/weapons/tfa_csgo/w_nova.mdl"
weaponsinfoss["tfa_csgo_nova"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_nova"].BoneOffset={Vector(3.8,0,-4.5),Angle(-175,0,-90)}

weaponsinfoss["tfa_csgo_xm1014"]={}
weaponsinfoss["tfa_csgo_xm1014"].Model="models/weapons/tfa_csgo/w_xm1014.mdl"
weaponsinfoss["tfa_csgo_xm1014"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_xm1014"].BoneOffset={Vector(3.8,0,-4.5),Angle(-175,0,-90)}

weaponsinfoss["tfa_csgo_scar20"]={}
weaponsinfoss["tfa_csgo_scar20"].Model="models/weapons/tfa_csgo/w_scar20.mdl"
weaponsinfoss["tfa_csgo_scar20"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_scar20"].BoneOffset={Vector(3.8,0,-4.5),Angle(-175,0,-90)}

weaponsinfoss["tfa_csgo_g3sg1"]={}
weaponsinfoss["tfa_csgo_g3sg1"].Model="models/weapons/tfa_csgo/w_g3sg1.mdl"
weaponsinfoss["tfa_csgo_g3sg1"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_g3sg1"].BoneOffset={Vector(3.8,0,-4.5),Angle(-175,0,-0)}

weaponsinfoss["tfa_csgo_ssg08"]={}
weaponsinfoss["tfa_csgo_ssg08"].Model="models/weapons/tfa_csgo/w_scout.mdl"
weaponsinfoss["tfa_csgo_ssg08"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_ssg08"].BoneOffset={Vector(3.8,-10,-1.5),Angle(-175,0,-0)}

-- Secondaries

weaponsinfoss["tfa_csgo_mp5"]={}
weaponsinfoss["tfa_csgo_mp5"].Model="models/weapons/tfa_csgo/w_mp5.mdl"
weaponsinfoss["tfa_csgo_mp5"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_mp5"].BoneOffset={Vector(3.5,1,8),Angle(-10,0,200)}

weaponsinfoss["tfa_csgo_p90"]={}
weaponsinfoss["tfa_csgo_p90"].Model="models/weapons/tfa_csgo/w_p90.mdl"
weaponsinfoss["tfa_csgo_p90"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_p90"].BoneOffset={Vector(3.5,4,4),Angle(-10,0,-90)}

weaponsinfoss["tfa_csgo_sawedoff"]={}
weaponsinfoss["tfa_csgo_sawedoff"].Model="models/weapons/tfa_csgo/w_sawedoff.mdl"
weaponsinfoss["tfa_csgo_sawedoff"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_sawedoff"].BoneOffset={Vector(3.5,2,4),Angle(-10,0,-90)}

weaponsinfoss["tfa_csgo_ump45"]={}
weaponsinfoss["tfa_csgo_ump45"].Model="models/weapons/tfa_csgo/w_ump45.mdl"
weaponsinfoss["tfa_csgo_ump45"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_ump45"].BoneOffset={Vector(3.5,2,4),Angle(-10,0,-90)}

weaponsinfoss["tfa_csgo_bizon"]={}
weaponsinfoss["tfa_csgo_bizon"].Model="models/weapons/tfa_csgo/w_bizon.mdl"
weaponsinfoss["tfa_csgo_bizon"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_bizon"].BoneOffset={Vector(3.5,2,4),Angle(-10,0,-90)}

weaponsinfoss["tfa_csgo_mp7"]={}
weaponsinfoss["tfa_csgo_mp7"].Model="models/weapons/tfa_csgo/w_mp7.mdl"
weaponsinfoss["tfa_csgo_mp7"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["tfa_csgo_mp7"].BoneOffset={Vector(5,-4,2),Angle(-10,0,260)}

weaponsinfoss["tfa_csgo_mac10"]={}
weaponsinfoss["tfa_csgo_mac10"].Model="models/weapons/tfa_csgo/w_mac10.mdl"
weaponsinfoss["tfa_csgo_mac10"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["tfa_csgo_mac10"].BoneOffset={Vector(5,-4,3),Angle(-10,0,160)}

weaponsinfoss["tfa_csgo_tec9"]={}
weaponsinfoss["tfa_csgo_tec9"].Model="models/weapons/tfa_csgo/w_tec9.mdl"
weaponsinfoss["tfa_csgo_tec9"].Bone="ValveBiped.Bip01_Spine1"
weaponsinfoss["tfa_csgo_tec9"].BoneOffset={Vector(5,-4,2),Angle(-10,0,160)}

weaponsinfoss["tfa_csgo_mag7"]={}
weaponsinfoss["tfa_csgo_mag7"].Model="models/weapons/tfa_csgo/w_mag7.mdl"
weaponsinfoss["tfa_csgo_mag7"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_mag7"].BoneOffset={Vector(3.5,2,4),Angle(-10,0,-90)}

weaponsinfoss["tfa_csgo_mp9"]={}
weaponsinfoss["tfa_csgo_mp9"].Model="models/weapons/tfa_csgo/w_mp9.mdl"
weaponsinfoss["tfa_csgo_mp9"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_csgo_mp9"].BoneOffset={Vector(3.5,3,4),Angle(-10,0,-90)}

weaponsinfoss["tfa_csgo_cz75"]={}
weaponsinfoss["tfa_csgo_cz75"].Model="models/weapons/tfa_csgo/w_cz75.mdl"
weaponsinfoss["tfa_csgo_cz75"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_csgo_cz75"].BoneOffset={Vector(3,-8,-1),Angle(5,272,-75)}

weaponsinfoss["tfa_csgo_deagle"]={}
weaponsinfoss["tfa_csgo_deagle"].Model="models/weapons/tfa_csgo/w_deagle.mdl"
weaponsinfoss["tfa_csgo_deagle"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_csgo_deagle"].BoneOffset={Vector(3,-8,-1),Angle(5,272,-75)}

weaponsinfoss["tfa_csgo_fiveseven"]={}
weaponsinfoss["tfa_csgo_fiveseven"].Model="models/weapons/tfa_csgo/w_fiveseven.mdl"
weaponsinfoss["tfa_csgo_fiveseven"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_csgo_fiveseven"].BoneOffset={Vector(3,-8,-1),Angle(5,272,-75)}

weaponsinfoss["tfa_csgo_glock18"]={}
weaponsinfoss["tfa_csgo_glock18"].Model="models/weapons/tfa_csgo/w_glock18.mdl"
weaponsinfoss["tfa_csgo_glock18"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_csgo_glock18"].BoneOffset={Vector(3,-8,-1),Angle(5,272,-75)}

weaponsinfoss["tfa_csgo_p2000"]={}
weaponsinfoss["tfa_csgo_p2000"].Model="models/weapons/tfa_csgo/w_p2000.mdl"
weaponsinfoss["tfa_csgo_p2000"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_csgo_p2000"].BoneOffset={Vector(3,-8,-1),Angle(5,272,-5)}

weaponsinfoss["tfa_csgo_p250"]={}
weaponsinfoss["tfa_csgo_p250"].Model="models/weapons/tfa_csgo/w_p250.mdl"
weaponsinfoss["tfa_csgo_p250"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_csgo_p250"].BoneOffset={Vector(3,-8,-1),Angle(5,272,-75)}

weaponsinfoss["tfa_csgo_revolver"]={}
weaponsinfoss["tfa_csgo_revolver"].Model="models/weapons/tfa_csgo/w_revolver.mdl"
weaponsinfoss["tfa_csgo_revolver"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_csgo_revolver"].BoneOffset={Vector(3,-8,-1),Angle(5,272,-5)}

weaponsinfoss["tfa_csgo_usp"]={}
weaponsinfoss["tfa_csgo_usp"].Model="models/weapons/tfa_csgo/w_usp.mdl"
weaponsinfoss["tfa_csgo_usp"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_csgo_usp"].BoneOffset={Vector(3,-8,-1),Angle(5,272,-75)}

weaponsinfoss["tfa_csgo_flash"]={}
weaponsinfoss["tfa_csgo_flash"].Model="models/weapons/tfa_csgo/w_flash.mdl"
weaponsinfoss["tfa_csgo_flash"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_csgo_flash"].BoneOffset={Vector(0,5.5,-6.5),Angle(0,275,-90)}

weaponsinfoss["tfa_csgo_molly"]={}
weaponsinfoss["tfa_csgo_molly"].Model="models/weapons/tfa_csgo/w_molotov.mdl"
weaponsinfoss["tfa_csgo_molly"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_csgo_molly"].BoneOffset={Vector(-2.5,2.2,-7.5),Angle(-90,90,-180)}

weaponsinfoss["tfa_csgo_frag"]={}
weaponsinfoss["tfa_csgo_frag"].Model="models/weapons/tfa_csgo/w_frag.mdl"
weaponsinfoss["tfa_csgo_frag"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_csgo_frag"].BoneOffset={Vector(2,4,6),Angle(-95,0,0)}

weaponsinfoss["tfa_csgo_incen"]={}
weaponsinfoss["tfa_csgo_incen"].Model="models/weapons/tfa_csgo/w_incend.mdl"
weaponsinfoss["tfa_csgo_incen"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_csgo_incen"].BoneOffset={Vector(1,7.5,3),Angle(-95,0,0)}

weaponsinfoss["tfa_csgo_smoke"]={}
weaponsinfoss["tfa_csgo_smoke"].Model="models/weapons/tfa_csgo/w_smoke.mdl"
weaponsinfoss["tfa_csgo_smoke"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_csgo_smoke"].BoneOffset={Vector(1,-5,5),Angle(-95,0,0)}

weaponsinfoss["tfa_csgo_decoy"]={}
weaponsinfoss["tfa_csgo_decoy"].Model="models/weapons/tfa_csgo/w_decoy.mdl"
weaponsinfoss["tfa_csgo_decoy"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["tfa_csgo_decoy"].BoneOffset={Vector(.5,-1.5,-8),Angle(-90,90,-180)}

---
---	TFA Day of Defeat (World War 2) SWEPs
---	Primaries

weaponsinfoss["dod_k98"]={}
weaponsinfoss["dod_k98"].Model="models/weapons/w_k98.mdl"
weaponsinfoss["dod_k98"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_k98"].BoneOffset={Vector(3.8,-12,-1),Angle(-175,0,0)}

weaponsinfoss["dod_k98_g"]={}
weaponsinfoss["dod_k98_g"].Model="models/weapons/w_k98_rg.mdl"
weaponsinfoss["dod_k98_g"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_k98_g"].BoneOffset={Vector(3.8,-12,-1),Angle(-175,0,0)}

weaponsinfoss["dod_k98_scope"]={}
weaponsinfoss["dod_k98_scope"].Model="models/weapons/w_k98s.mdl"
weaponsinfoss["dod_k98_scope"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_k98_scope"].BoneOffset={Vector(3.8,-12,-1),Angle(-175,0,0)}

weaponsinfoss["dod_carbine"]={}
weaponsinfoss["dod_carbine"].Model="models/weapons/w_m1carb.mdl"
weaponsinfoss["dod_carbine"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_carbine"].BoneOffset={Vector(3.8,-10,-1),Angle(-175,0,0)}

weaponsinfoss["dod_garand"]={}
weaponsinfoss["dod_garand"].Model="models/weapons/w_garand.mdl"
weaponsinfoss["dod_garand"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_garand"].BoneOffset={Vector(3.8,-10,-1),Angle(-175,0,0)}

weaponsinfoss["dod_garand_g"]={}
weaponsinfoss["dod_garand_g"].Model="models/weapons/w_k98_rg.mdl"
weaponsinfoss["dod_garand_g"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_garand_g"].BoneOffset={Vector(3.8,-10,-1),Angle(-175,0,0)}

weaponsinfoss["dod_m1903"]={}
weaponsinfoss["dod_m1903"].Model="models/weapons/w_spring.mdl"
weaponsinfoss["dod_m1903"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_m1903"].BoneOffset={Vector(3.8,-10,-1),Angle(-175,0,0)}

weaponsinfoss["dod_m1918"]={}
weaponsinfoss["dod_m1918"].Model="models/weapons/w_bar.mdl"
weaponsinfoss["dod_m1918"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_m1918"].BoneOffset={Vector(3.8,-10,-1),Angle(-175,0,0)}

weaponsinfoss["dod_m1919"]={}
weaponsinfoss["dod_m1919"].Model="models/weapons/w_30cal.mdl"
weaponsinfoss["dod_m1919"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_m1919"].BoneOffset={Vector(4.5,-20,-1),Angle(-175,0,0)}

weaponsinfoss["dod_mg42"]={}
weaponsinfoss["dod_mg42"].Model="models/weapons/w_mg42bu.mdl"
weaponsinfoss["dod_mg42"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_mg42"].BoneOffset={Vector(4.5,-15,-1),Angle(-175,0,0)}

weaponsinfoss["dod_stg44"]={}
weaponsinfoss["dod_stg44"].Model="models/weapons/w_mp44.mdl"
weaponsinfoss["dod_stg44"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_stg44"].BoneOffset={Vector(4.5,-10,-1),Angle(-175,0,0)}

weaponsinfoss["dod_t20"]={}
weaponsinfoss["dod_t20"].Model="models/weapons/w_garand.mdl"
weaponsinfoss["dod_t20"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_t20"].BoneOffset={Vector(4.5,-10,-1),Angle(-175,0,0)}

weaponsinfoss["dod_m1928"]={}
weaponsinfoss["dod_m1928"].Model="models/weapons/w_thompson.mdl"
weaponsinfoss["dod_m1928"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_m1928"].BoneOffset={Vector(4.5,-4,-1),Angle(-175,0,0)}

weaponsinfoss["dod_m1a1"]={}
weaponsinfoss["dod_m1a1"].Model="models/weapons/w_thompson.mdl"
weaponsinfoss["dod_m1a1"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_m1a1"].BoneOffset={Vector(4.5,-4,-1),Angle(-175,0,0)}

weaponsinfoss["dod_m1a1_carbine"]={}
weaponsinfoss["dod_m1a1_carbine"].Model="models/weapons/w_m1carb.mdl"
weaponsinfoss["dod_m1a1_carbine"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_m1a1_carbine"].BoneOffset={Vector(3.8,-10,-1),Angle(-175,0,0)}

weaponsinfoss["dod_m2"]={}
weaponsinfoss["dod_m2"].Model="models/weapons/w_m1carb.mdl"
weaponsinfoss["dod_m2"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_m2"].BoneOffset={Vector(3.8,-10,-1),Angle(-175,0,0)}

weaponsinfoss["dod_bazooka"]={}
weaponsinfoss["dod_bazooka"].Model="models/weapons/w_bazooka.mdl"
weaponsinfoss["dod_bazooka"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_bazooka"].BoneOffset={Vector(4.8,2,1),Angle(-175,0,0)}

weaponsinfoss["dod_panzer"]={}
weaponsinfoss["dod_panzer"].Model="models/weapons/w_pschreck.mdl"
weaponsinfoss["dod_panzer"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_panzer"].BoneOffset={Vector(4.8,2,1),Angle(-175,0,0)}

--	Secondaries

weaponsinfoss["dod_mp40"]={}
weaponsinfoss["dod_mp40"].Model="models/weapons/w_mp40.mdl"
weaponsinfoss["dod_mp40"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_mp40"].BoneOffset={Vector(6,-9,1),Angle(-10,0,0)}

weaponsinfoss["dod_c96"]={}
weaponsinfoss["dod_c96"].Model="models/weapons/w_c96.mdl"
weaponsinfoss["dod_c96"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_c96"].BoneOffset={Vector(6,1,1),Angle(-10,0,0)}

weaponsinfoss["dod_m1911"]={}
weaponsinfoss["dod_m1911"].Model="models/weapons/w_colt.mdl"
weaponsinfoss["dod_m1911"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["dod_m1911"].BoneOffset={Vector(0,-8.8,-2),Angle(5,270,-5)}

weaponsinfoss["dod_p38"]={}
weaponsinfoss["dod_p38"].Model="models/weapons/w_p38.mdl"
weaponsinfoss["dod_p38"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["dod_p38"].BoneOffset={Vector(0,-9,-2),Angle(5,270,-5)}

weaponsinfoss["dod_welrod"]={}
weaponsinfoss["dod_welrod"].Model="models/weapons/welrod.mdl"
weaponsinfoss["dod_welrod"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["dod_welrod"].BoneOffset={Vector(0,-9,-2),Angle(5,270,-5)}

weaponsinfoss["dod_frag"]={}
weaponsinfoss["dod_frag"].Model="models/weapons/w_frag.mdl"
weaponsinfoss["dod_frag"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["dod_frag"].BoneOffset={Vector(2,4,6),Angle(-95,0,0)}

weaponsinfoss["dod_stick"]={}
weaponsinfoss["dod_stick"].Model="models/weapons/w_stick.mdl"
weaponsinfoss["dod_stick"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["dod_stick"].BoneOffset={Vector(2,4,6),Angle(-95,0,0)}

weaponsinfoss["dod_smoke_ger"]={}
weaponsinfoss["dod_smoke_ger"].Model="models/weapons/w_smoke_ger.mdl"
weaponsinfoss["dod_smoke_ger"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["dod_smoke_ger"].BoneOffset={Vector(1,-5,5),Angle(-95,0,0)}

weaponsinfoss["dod_smoke_us"]={}
weaponsinfoss["dod_smoke_us"].Model="models/weapons/w_smoke_us.mdl"
weaponsinfoss["dod_smoke_us"].Bone="ValveBiped.Bip01_Pelvis"
weaponsinfoss["dod_smoke_us"].BoneOffset={Vector(.5,-1.5,-8),Angle(-90,90,-180)}

weaponsinfoss["dod_spade"]={}
weaponsinfoss["dod_spade"].Model="models/weapons/w_spade.mdl"
weaponsinfoss["dod_spade"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["dod_spade"].BoneOffset={Vector(6,-1,1),Angle(-10,0,90)}

---
---	Day of Infamy (World War 2) SWEPs
---	Primaries

weaponsinfoss["tfa_pig_doi_c96_carbine_long"]={}
weaponsinfoss["tfa_pig_doi_c96_carbine_long"].Model="models/weapons/doi_weapons_prem/w_tfa_pig_c96_carbine_long.mdl"
weaponsinfoss["tfa_pig_doi_c96_carbine_long"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_pig_doi_c96_carbine_long"].BoneOffset={Vector(4.8,-6,-1),Angle(-175,0,0)}

weaponsinfoss["tfa_pig_doi_g43"]={}
weaponsinfoss["tfa_pig_doi_g43"].Model="models/weapons/doi_weapons_prem/w_tfa_pig_gewehr.mdl"
weaponsinfoss["tfa_pig_doi_g43"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_pig_doi_g43"].BoneOffset={Vector(4.8,-6,-1),Angle(-175,0,0)}

weaponsinfoss["tfa_pig_doi_g43_scoped"]={}
weaponsinfoss["tfa_pig_doi_g43_scoped"].Model="models/weapons/doi_weapons_prem/w_tfa_pig_gewehr_scoped.mdl"
weaponsinfoss["tfa_pig_doi_g43_scoped"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_pig_doi_g43_scoped"].BoneOffset={Vector(4.8,-6,-1),Angle(-175,0,0)}

weaponsinfoss["tfa_pig_doi_kar98k"]={}
weaponsinfoss["tfa_pig_doi_kar98k"].Model="models/weapons/doi_weapons_prem/w_tfa_pig_kar98k.mdl"
weaponsinfoss["tfa_pig_doi_kar98k"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_pig_doi_kar98k"].BoneOffset={Vector(4.8,-1,-1),Angle(-175,0,0)}

weaponsinfoss["tfa_pig_doi_kar98k_scoped"]={}
weaponsinfoss["tfa_pig_doi_kar98k_scoped"].Model="models/weapons/doi_weapons_prem/w_tfa_pig_kar98k_scoped.mdl"
weaponsinfoss["tfa_pig_doi_kar98k_scoped"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_pig_doi_kar98k_scoped"].BoneOffset={Vector(4.8,-1,-1),Angle(-175,0,0)}

weaponsinfoss["tfa_pig_doi_kar98b"]={}
weaponsinfoss["tfa_pig_doi_kar98b"].Model="models/weapons/dpi_weapon_perm/w_tfa_pig_kar98k.mdl"
weaponsinfoss["tfa_pig_doi_kar98b"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_pig_doi_kar98b"].BoneOffset={Vector(4.8,-1,-1),Angle(-175,0,0)}

--	Secondaries

weaponsinfoss["tfa_pig_doi_mp40"]={}
weaponsinfoss["tfa_pig_doi_mp40"].Model="models/weapons/dpi_weapon_perm/w_tfa_pig_mp40.mdl"
weaponsinfoss["tfa_pig_doi_mp40"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_pig_doi_mp40"].BoneOffset={Vector(5.5,-8,1),Angle(-10,0,0)}

weaponsinfoss["tfa_pig_doi_stg44"]={}
weaponsinfoss["tfa_pig_doi_stg44"].Model="models/weapons/tfa_pig_doi/w_tfa_pig_stg44.mdl"
weaponsinfoss["tfa_pig_doi_stg44"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["tfa_pig_doi_stg44"].BoneOffset={Vector(5.5,2,4),Angle(-175,0,0)}


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