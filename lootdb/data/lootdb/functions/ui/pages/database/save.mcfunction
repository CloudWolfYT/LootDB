## remove border data / buttons
data modify storage lootdb temp1 set from storage lootdb container
data remove storage lootdb temp1[{Slot:0b}]
data remove storage lootdb temp1[{Slot:8b}]
data remove storage lootdb temp1[{Slot:9b}]
data remove storage lootdb temp1[{Slot:17b}]
data remove storage lootdb temp1[{Slot:18b}]
data remove storage lootdb temp1[{Slot:26b}]
#tellraw @a {"nbt":"temp1","storage":"lootdb"}

## iteration params
scoreboard players operation #loop lootdb = @s lootdb.page
scoreboard players operation #end lootdb = #loop lootdb
scoreboard players add #end lootdb 21
scoreboard players set #slot lootdb 0
scoreboard players operation #temp2 lootdb = .global lootdb
function lootdb:ui/pages/database/save_loop