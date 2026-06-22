#> legitiguard:player/explode

execute if predicate legitiguard:has_vehicle run return fail

particle minecraft:totem_of_undying ~ ~1 ~ .125 .25 .125 1 30
#tp @s 0.5 64 0.5
tp @s ^ ^ ^-.5
title @s actionbar {"color":"red","text":"You were blasted back by someone's awesome aura"}