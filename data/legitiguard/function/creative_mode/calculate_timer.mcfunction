# Retrieve Seconds
execute unless score @s lg.CreativeTimer matches ..0 run scoreboard players operation #playerCreativeTimer lg.Values = @s lg.CreativeTimer
execute store result score #creativeSeconds lg.Values run scoreboard players operation #playerCreativeTimer lg.Values /= #20 lg.Values
scoreboard players operation #creativeSeconds lg.Values %= #60 lg.Values

# Retrieve Minutes
execute store result score #creativeMinutes lg.Values run scoreboard players operation #playerCreativeTimer lg.Values /= #60 lg.Values
scoreboard players operation #creativeMinutes lg.Values %= #60 lg.Values

# Retrieve Hours
execute store result score #creativeHours lg.Values run scoreboard players operation #playerCreativeTimer lg.Values /= #60 lg.Values

# Retrieve Days
execute store result score #creativeDays lg.Values run scoreboard players operation #playerCreativeTimer lg.Values /= #24 lg.Values

scoreboard players operation #creativeHours lg.Values %= #24 lg.Values