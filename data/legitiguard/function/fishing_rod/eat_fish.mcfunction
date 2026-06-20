#> legitiguard:fishing_rod/eat_fish

advancement revoke @s only legitiguard:eat_fish
execute if entity @s[tag=!fishing_immune] run title @s actionbar "You have gained the Fish Blessing."
execute if entity @s[tag=!fishing_immune] run return run tag @s add fishing_immune
title @s actionbar "You have lost the Fish Blessing."
tag @s remove fishing_immune