data remove storage lootdb temp1[0]
scoreboard players remove #temp lootdb 1
execute if score #temp lootdb matches 1.. run function lootdb:ui/pages/table/load_page
