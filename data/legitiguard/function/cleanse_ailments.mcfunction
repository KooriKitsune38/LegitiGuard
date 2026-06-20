# Run by a repeating command block under the magic pedestal
# legitimoose 12/31/2026
advancement revoke @s only k.playercustom:reset_attributes
scoreboard players reset @s reset_attributes
attribute @s minecraft:scale base set 1
attribute @s minecraft:jump_strength base set .42
attribute @s minecraft:gravity base set .08
attribute @s minecraft:movement_speed base set .1
xp set @s 0 levels
xp set @s 0 points