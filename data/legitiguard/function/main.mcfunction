#> legitiguard:main

# Selectors
    # Players
    execute as @a at @s run function legitiguard:as_everyone

# Timers
    # Vehicle Timer
    scoreboard players add #vehicleTimer lg.Values 1
    execute if score #vehicleTimer lg.Values >= .vehicleTicks lg.Values run function legitiguard:vehicles/kill_vehicles

# Invulnerable paintings/item frames
    execute as @e[type=painting] run data merge entity @s {Invulnerable:1b}
    execute as @e[type=item_frame] run data merge entity @s {Invulnerable:1b}

kill @e[type=splash_potion]
kill @e[type=tnt]
kill @e[type=tnt_minecart]
kill @e[type=end_crystal]
kill @e[type=fireball]
kill @e[type=small_fireball]
kill @e[type=area_effect_cloud]
kill @e[type=experience_orb]
clear @a[tag=no_wind_charge] wind_charge

# Ragebird proofing
    execute if score #ragebird_filter lg.Values matches 1 as @a at @s unless dimension minecraft:overworld run function legitiguard:player/immunity_to_ragebird