scoreboard players operation .temp gamemode = @s gamemode
scoreboard players reset @s gamemode
execute at @s if dimension minecraft:minimal_lobby unless predicate legitiguard:staff_member unless entity @s[tag=gmc_remover_bypass] run return 0
execute if score .temp gamemode matches 1..4 run return run function legitiguard:gamemode/set_gamemode
execute if score .temp gamemode matches 5 run return run function legitiguard:gamemode/swap_gamemode
execute if score .temp gamemode matches 6 run return run function legitiguard:gamemode/next_gamemode