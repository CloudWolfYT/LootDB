scoreboard players set #raycast lootdb -1
scoreboard players set #slots lootdb 26
data modify storage lootdb slots set value [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26]
data modify storage lootdb temp1 set from block ~ ~ ~ Items[{tag:{LootDB:[{}]}}].tag.LootDB
data remove block ~ ~ ~ Items
execute store result score #loop lootdb run data get storage lootdb temp1
function lootdb:loot/chest/loop_tables