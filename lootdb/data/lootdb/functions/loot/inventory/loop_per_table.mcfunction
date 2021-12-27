execute store result score #hold lootdb run data get storage lootdb temp1[-1].id
execute store result score in1 lootdb run data get storage lootdb temp1[-1].count
scoreboard players operation in1 lootdb *= #count lootdb
function lootdb:loot/inventory/loop_get
execute at @s run playsound minecraft:entity.item.pickup master @a ~ ~ ~
data remove storage lootdb temp1[-1]
scoreboard players remove #loop1 lootdb 1
execute if score #loop1 lootdb matches 1.. run function lootdb:loot/inventory/loop_per_table