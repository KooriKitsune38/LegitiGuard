# This section of the code was made by Ragebird7200, @Ragebird7200 on discord.
execute as @a unless score @s lg.CreativeTimer matches -1..1 run scoreboard players enable @s gamemode
execute as @a unless score @s lg.CreativeTimer matches -1..1 run gamemode creative @s[scores={gamemode=1}]
execute as @a unless score @s lg.CreativeTimer matches -1..1 run gamemode survival @s[scores={gamemode=2}]
execute as @a unless score @s lg.CreativeTimer matches -1..1 run gamemode adventure @s[scores={gamemode=3}]
execute as @a unless score @s lg.CreativeTimer matches -1..1 run gamemode spectator @s[scores={gamemode=4}]
scoreboard players reset @a[scores={gamemode=1..}] gamemode
