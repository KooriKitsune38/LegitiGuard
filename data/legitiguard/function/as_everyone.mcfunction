#> legitiguard:as_everyone

# Position Limiter
execute unless entity @s[predicate=legitiguard:staff_member] run function legitiguard:position/limit_area

# Trigger gamemode
scoreboard players enable @s[tag=canUseTools,tag=hasExtraTools] gamemode
execute if score @s gamemode matches 1.. run function legitiguard:gamemode/trigger

# Creative Mode
    #> No Creative
    gamemode adventure @s[tag=lg.noCreative,gamemode=creative]

    #> Permanent Mode Disabled
    execute if score .permanentCreative lg.Values matches 0 if entity @s[predicate=!legitiguard:staff_member,gamemode=creative] unless score @s lg.CreativeTimer matches ..-2 run function legitiguard:creative_mode/timed_mode

    #> Staff Only Creative mode (.creativeStaffOnly = 1)
    execute if score .creativeStaffOnly lg.Values matches 1 unless entity @s[predicate=legitiguard:staff_member] if entity @s[gamemode=creative] run function legitiguard:creative_mode/revert_creative

# Adventure Blocks
execute unless score .removeCanPlaceOn lg.Values matches 0 unless score .removeCanDestroy lg.Values matches 0 run function legitiguard:adventure_blocks/remove_adventure_blocks

# Crossbow enchantments
    #> Mainhand
    execute if data entity @s[predicate=legitiguard:holding_enchanted_crossbow] SelectedItem.components."minecraft:enchantments" run item modify entity @s weapon.mainhand legitiguard:remove_enchantments
    #> Offhand
    execute if data entity @s[predicate=legitiguard:holding_enchanted_crossbow] Inventory[{Slot:-106b}].components."minecraft:enchantments" run item modify entity @s weapon.offhand legitiguard:remove_enchantments

# Prevent fishing rod
execute if entity @s[tag=fishing_immune,nbt=!{SelectedItem:{id:"minecraft:cod"}}] as @e[type=fishing_bobber,distance=..3] at @s run function legitiguard:fishing_rod/explode
execute if entity @s[tag=fishing_immune,nbt=!{SelectedItem:{id:"minecraft:wind_charge"}}] as @e[type=wind_charge,distance=..5] at @s run function legitiguard:fishing_rod/explode

# Prevent players
execute if entity @s[tag=player_immune,x=0.5,y=64,z=0.5,distance=6..] at @s if dimension minecraft:overworld run function legitiguard:player/immunity

clear @s splash_potion
clear @s goat_horn
clear @s lingering_potion
clear @s potion
clear @s tipped_arrow
clear @s tipped_arrow
clear @s end_crystal
clear @s tnt
clear @s tnt_minecart
clear @s spider_spawn_egg
clear @s piston[minecraft:block_state={extended:"true"}]
# WHy would you ban light?
#clear @s[predicate=!legitiguard:staff_member,tag=!canUseTools] light

execute if score @s elytra matches 1.. run function legitiguard:elytra/give_elytra
scoreboard players enable @s elytra


#Minimal lobby gmc remover
execute if dimension minecraft:minimal_lobby run tag @s[gamemode=creative,tag=!in_minimal] add had_gmc
execute if dimension minecraft:minimal_lobby unless predicate legitiguard:staff_member run gamemode adventure @s[tag=!in_minimal,gamemode=creative,tag=!gmc_remover_bypass]
execute if dimension minecraft:minimal_lobby unless predicate legitiguard:staff_member run tag @s remove can_place_blocks
execute if dimension minecraft:minimal_lobby unless predicate legitiguard:staff_member run tag @s remove can_break_blocks
execute if dimension minecraft:minimal_lobby run tag @s[tag=!in_minimal] add in_minimal


execute if dimension minecraft:overworld unless predicate legitiguard:staff_member run gamemode creative @s[tag=in_minimal,tag=had_gmc]
execute if dimension minecraft:overworld run tag @s[tag=had_gmc,tag=in_minimal] remove had_gmc
execute if dimension minecraft:overworld run tag @s[tag=in_minimal] remove in_minimal

