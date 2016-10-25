# V92-Content-Base
A Versatile Weapon &amp; Content Base for Garry's Mod

This is a custom weapon and content base system for Garry's Mod. It supports a large variety of features such as suppressors, stocks, iron sights, fire modes, bipods, grenade launchers, and much more.

Read the included documentation for developers in the 'developer' branch for info on how to get started, or contact me directly on Steam.
http://steamcommunity.com/id/JesseVanover/

# Current Features
* A wide range of custom ammo types
* Multiple fire modes: Semi/Burst/Auto/Safety, and any combination thereof!
* Support for grenade launcher modules
* Support for magazine-based projectile weapons
* Support for suppressors: Model swap & animated (CS:S)
* Support for bipods: Model swap & animated
* Support for melee weapons: Not bullet firing weapons either!
* Support for Akimbo weapons
* Support for stock folding/unfolding 
* Bullet penetration based on weapon callibre
* Automatic animation detection
* Support for overlay sniper rifles
* Support for Render Target sniper rifles
* Support for zoom toggling
* Support for shotguns
* Shell reloading support
* Custom muzzle flashes
* Custom shell ejections
* Dynamic world animations: Aiming? Holstered? You'll show it! 

# Key(s) | Default Function | SWep Base Function
* MOUSE1 | Fire | Fire
* MOUSE2 | AltFire | Toggle Iron Sights
* R | Reload | Reload
* MOUSE1+E | Fire + Use | Toggle Deployable (If applicable)
* MOUSE2+E | AltFire + Use | Cycle Fire Modes
* LALT+R | Walk + Reload | Melee (If applicable)
* LALT+MOUSE2 | Walk + AltFire | Toggle Suppressor (If applicable)
* (When Holstered) E+R | Use + Reload | Throw Weapon
* (When Scoped In) E+MOUSE2 | Use + AltFire | Cycle Zooms (If applicable)

# Bases for You to Use
# File | Purpose
* weapons/v92_base_swep | My SWep Base
* entities/v92_base_projectile | Base for tank shell entities
* entities/v92_base_wepent | Base for weapon entities
* entities/v92_base_ammobox | Base for ammo cartons/boxes
* entities/v92_base_ammocrate | Base for ammo crates; think HL2
* entities/v92_base_npc | Upcoming SNPC base; unfinished
* entities/v92_base_magazine | Upcoming weapon magazine base; unfinished

# Some Setup Code
* autorun/sh_v92_base >> Main base setup code; all definitions and constants are here
* autorun/sh_v92_base_swep >> Common SWep functions
* autorun/sh_v92_snd_css >> CS:S sound tables
* autorun/sh_v92_snd_dod >> DoD:S / R&L sound tables
* autorun/sh_v92_snd_halo >> Halo / Sci-Fi sound tables
* autorun/sh_v92_snd_hl2 >> Hl2 sound tables
* autorun/sh_v92_snd_insmic >> INS:MIC sound tables
* autorun/sh_v92_snd_military >> Battlefield / Military sound tables
* autorun/sh_v92_vehicle_anims >> Vehicle animations

# Various Effects You Can Call On
* effects/fx_afterburner
* effects/fx_airburst
* effects/fx_explosion_movie
* effects/fx_heatwave
* effects/fx_impact_bullet
* effects/fx_impact_shell
* effects/fx_rocket_trail
* effects/fx_shelleject
* effects/fx_muzzleflash
* effects/fx_smoke_tracks 

# SWeps
* Unarmed Hands SWep with World Animations
* v92_int_blank >> A hidden SWep that is used to model swap the weapon base for bipods and suppressors 

# Many Tank Shells for Use in SCars
* 20mm
* 25mm
* 37mm
* 40mm
* 40x46mm
* 50mm
* 76mm
* 88mm
* 90mm
* 100mm
* 105mm
* 120mm
* 125mm
* 128mm
* 150mm
* 155mm
* M68 ALIM
* M79 Rocket
* MAC Shell
* Rocket
* Stinger
* TOW
* Zuni


# Materials
* Materials/models/jessev92/heads_hl2/hd/* >> HD HL2 Citizen Heads/Bodies
* Materials/engine/* >> HD Eye Shaders
* Materials/models/JesseV92/detail/wreck_d >> Wreck overlay detail texture 

# Detail Textures
* Materials/models/JesseV92/detail/cloth2
* Materials/models/JesseV92/detail/ffcm13_ash
* Materials/models/JesseV92/detail/ffcm13_dirt
* Materials/models/JesseV92/detail/ffcm13_metal
* Materials/models/JesseV92/detail/ffcm13_noise
* Materials/models/JesseV92/detail/ffcm13_plaster
* Materials/models/JesseV92/detail/ffcm13_rock
* Materials/models/JesseV92/detail/ffcm13_sprites
* Materials/models/JesseV92/detail/ffcm13_wood
* Materials/models/JesseV92/detail/leather
* Materials/models/JesseV92/detail/leather2
* Materials/models/JesseV92/detail/metal1
* Materials/models/JesseV92/detail/metal2
* Materials/models/JesseV92/detail/metal3
* Materials/models/JesseV92/detail/skin1
* Materials/models/JesseV92/detail/skin2 
