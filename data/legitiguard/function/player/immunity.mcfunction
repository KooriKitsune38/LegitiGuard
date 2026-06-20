tag @s add current_repulsor
execute if entity @s[tag=current_repulsor] as @e[type=player,distance=.01..3,gamemode=!spectator] at @s facing entity @a[tag=current_repulsor,distance=..3] feet run function legitiguard:player/explode
tag @s remove current_repulsor