#> legitiguard:vehicles/kill_vehicles

# Kill
execute as @e[type=horse,tag=lift] on leasher run tag @s add noKill
kill @e[type=#legitiguard:vehicles,predicate=!legitiguard:has_passenger,tag=!noKill]
execute as @e[type=horse,tag=lift] on leasher run tag @s remove noKill

# Reset Score
scoreboard players set #vehicleTimer lg.Values 0