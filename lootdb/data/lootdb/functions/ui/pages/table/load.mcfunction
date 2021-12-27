scoreboard players operation in lootdb = @s lootdb.id
function lootdb:tables/db/get
data modify storage lootdb temp1 set from storage lootdb out.Table
scoreboard players operation #temp lootdb = @s lootdb.page
execute if score #temp lootdb matches 1.. run function lootdb:ui/pages/table/load_page
#tellraw @a {"nbt":"temp1","storage":"lootdb"}
data remove block ~ ~ ~ Items
data modify block ~ ~ ~ Items insert -1 from storage lootdb temp1[0][]