function lootdb:ui/pages/database/save

execute if score #new lootdb matches 1.. unless data storage lootdb container[{Slot:8b}] run function lootdb:ui/pages/database/page_up
execute if score #new lootdb matches 1.. unless data storage lootdb container[{Slot:26b}] run function lootdb:ui/pages/database/page_down

function lootdb:ui/pages/database/mask
function lootdb:ui/pages/database/load

scoreboard players set #temp lootdb 0
execute if score .playerio lootdb matches 2 store result score #temp lootdb run data get entity @p Inventory[{tag:{lootdb:{null:1b}}}].tag.lootdb.id
execute if score #temp lootdb matches 1.. run function lootdb:ui/pages/table/open