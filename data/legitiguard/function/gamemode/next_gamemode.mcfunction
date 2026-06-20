execute if data entity @s {playerGameType:3} run return run gamemode creative @s
execute if data entity @s {playerGameType:2} run return run gamemode spectator @s
execute if data entity @s {playerGameType:1} run return run gamemode survival @s
execute if data entity @s {playerGameType:0} run return run gamemode adventure @s