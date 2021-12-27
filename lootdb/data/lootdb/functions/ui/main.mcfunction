data remove storage lootdb temp
data modify storage lootdb temp set from block ~ ~ ~ Items
execute store result score #new lootdb run data get entity @s data.prev
execute store result score #temp lootdb run data modify entity @s data.prev set from storage lootdb temp
execute if score #temp lootdb matches 1 run function lootdb:ui/pages/root
data modify entity @s data.prev set from block ~ ~ ~ Items

execute unless entity @a[distance=..10] run setblock ~ ~ ~ air
execute unless entity @a[distance=..10] run kill @s

execute unless block ~ ~ ~ chest run function lootdb:ui/break