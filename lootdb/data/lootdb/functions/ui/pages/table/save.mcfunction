scoreboard players operation in lootdb = @s lootdb.id
function lootdb:tables/db/get

data modify storage lootdb temp1 set from storage lootdb container
data remove storage lootdb temp1[{Slot:0b}]
data remove storage lootdb temp1[{Slot:8b}]
data remove storage lootdb temp1[{Slot:9b}]
data remove storage lootdb temp1[{Slot:17b}]
data remove storage lootdb temp1[{Slot:18b}]
data remove storage lootdb temp1[{Slot:26b}]

data modify storage lootdb in set from storage lootdb out
execute if score @s lootdb.page matches 0 run data modify storage lootdb in.Table[0] set from storage lootdb temp1
execute if score @s lootdb.page matches 1 run data modify storage lootdb in.Table[1] set from storage lootdb temp1
execute if score @s lootdb.page matches 2 run data modify storage lootdb in.Table[2] set from storage lootdb temp1
execute if score @s lootdb.page matches 3 run data modify storage lootdb in.Table[3] set from storage lootdb temp1
execute if score @s lootdb.page matches 4 run data modify storage lootdb in.Table[4] set from storage lootdb temp1
function lootdb:tables/db/set
#tellraw @a {"nbt":"in.Table","storage":"lootdb"}