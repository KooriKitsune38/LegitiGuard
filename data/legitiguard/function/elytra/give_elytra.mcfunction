#> legitiguard:elytra/give_elytra
scoreboard players reset @s elytra
execute unless entity @s[nbt={Inventory:[{id:"minecraft:elytra"}]}] run give @s elytra
execute unless entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket"}]}] run give @s firework_rocket 64