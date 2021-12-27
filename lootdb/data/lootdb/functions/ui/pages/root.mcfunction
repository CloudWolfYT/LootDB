data modify storage lootdb container set from storage lootdb temp

## detect shift vs not shift
data modify storage lootdb temp set from entity @p Inventory
scoreboard players set #temp lootdb 0
execute store result score #loop lootdb run data get storage lootdb temp
execute if score #loop lootdb matches 1.. run function lootdb:ui/get_inv_loop
execute store result score #temp1 lootdb run clear @p #minecraft:all_items 0
scoreboard players set .playerio lootdb 2
execute if score #temp1 lootdb > #temp lootdb run scoreboard players set .playerio lootdb 1

execute if score @s lootdb.id matches 0 run function lootdb:ui/pages/database/root
execute if score @s lootdb.id matches 1.. run function lootdb:ui/pages/table/root

clear @a #minecraft:all_items{lootdb:{null:1b}}