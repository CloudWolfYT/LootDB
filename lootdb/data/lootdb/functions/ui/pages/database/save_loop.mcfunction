scoreboard players add #loop lootdb 1
scoreboard players add #slot lootdb 1

execute store result score #temp lootdb run data get storage lootdb temp1[0].Slot
execute if score #temp lootdb matches 17.. run scoreboard players remove #temp lootdb 2
execute if score #temp lootdb matches 8.. run scoreboard players remove #temp lootdb 2
scoreboard players operation #temp lootdb += @s lootdb.page
#tellraw @a {"score":{"objective":"lootdb","name":"#temp"}}
#tellraw @a {"score":{"objective":"lootdb","name":"#loop"}}
execute if score #temp lootdb = #loop lootdb run function lootdb:ui/pages/database/save_one


execute if score #loop lootdb < #end lootdb run function lootdb:ui/pages/database/save_loop