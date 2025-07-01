#> legitiguard:main

# Selectors
    # Players
    execute as @a at @s run function legitiguard:as_everyone

# Timers
    # Vehicle Timer
    scoreboard players add #vehicleTimer lg.Values 1
    execute if score #vehicleTimer lg.Values >= .vehicleTicks lg.Values run function legitiguard:vehicles/kill_vehicles

kill @e[type=potion]
kill @e[type=tnt]
kill @e[type=tnt_minecart]
kill @e[type=end_crystal]
kill @e[type=fireball]
kill @e[type=area_effect_cloud]

# Gamemode Toggle
#tag @a[scores={lg.CreativeTimer=2..}] add creative
#tag @a[scores={lg.CreativeTimer=..-2}] add creative
function legitiguard:gamemode_toggle/toggle
