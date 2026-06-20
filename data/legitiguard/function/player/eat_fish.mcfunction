#> legitiguard:player/eat_fish

execute if entity @s[tag=!player_immune] run return fail

advancement revoke @s only legitiguard:eat_different_fish
execute if entity @s[tag=!player_immune_active] run title @s actionbar "You have gained the.. other Fish Blessing."
execute if entity @s[tag=!player_immune_active] run return run tag @s add fishing_immune_active
title @s actionbar "You have lost the other Fish Blessing."
tag @s remove player_immune_active
