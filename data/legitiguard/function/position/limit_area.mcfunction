#> legitiguard:position/limit_area

# Tp back to spawn if too far away
execute if dimension overworld positioned -150 ~ -150 unless entity @s[dx=300,dz=300] run spreadplayers 0 0 0 1 under 100 false @s
execute if dimension minecraft:minimal_lobby positioned -150 ~ -150 unless entity @s[dx=300,dz=300] run spreadplayers 0 0 0 1 under 265 false @s

# # Tp back to spawn if too low
execute if dimension minecraft:overworld positioned ~ -150 ~ if entity @s[dy=10] run spreadplayers 0 0 0 1 under 100 false @s
execute if dimension minecraft:minimal_lobby positioned ~ 140 ~ if entity @s[dy=10] run spreadplayers 0 0 0 1 under 265 false @s
