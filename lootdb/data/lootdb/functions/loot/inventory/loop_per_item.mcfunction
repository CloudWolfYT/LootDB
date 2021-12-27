data modify storage lootdb temp1 set from storage lootdb packs[-1].tag.LootDB
execute store result score #loop1 lootdb run data get storage lootdb temp1
execute store result score #count lootdb run data get storage lootdb packs[-1].Count
function lootdb:loot/inventory/loop_per_table

scoreboard players remove #loop lootdb 1
execute if score #loop lootdb matches 1.. run function lootdb:loot/inventory/loop_per_item