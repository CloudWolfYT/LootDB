execute store result score #temp1 lootdb run data get storage lootdb temp[-1].Count
scoreboard players operation #temp lootdb += #temp1 lootdb
data remove storage lootdb temp[-1]
scoreboard players remove #loop lootdb 1
execute if score #loop lootdb matches 1.. run function lootdb:ui/get_inv_loop