#> legitiguard:reload

# Scoreboards
    #> Objectives
    scoreboard objectives add lg.Values dummy
    scoreboard objectives add lg.CreativeTimer dummy

    scoreboard objectives add elytra trigger
    scoreboard objectives add gamemode trigger
    scoreboard objectives add previousGamemode dummy

    #players who are repulsed from everyone
    scoreboard objectives add filtered dummy

    #> Players
    scoreboard players set #4 lg.Values 4
    scoreboard players set #20 lg.Values 20
    scoreboard players set #60 lg.Values 60
    scoreboard players set #24 lg.Values 24
    scoreboard players add .creativeTicks lg.Values 0
    scoreboard players add .permanentCreative lg.Values 0
    scoreboard players add .vehicleTicks lg.Values 0
    scoreboard players add .creativeStaffOnly lg.Values 0
    scoreboard players add .removeCanPlaceOn lg.Values 0
    scoreboard players add .removeCanDestroy lg.Values 0

    tellraw @a[predicate=legitiguard:staff_member] "LegitiGuard Reloaded >:)"