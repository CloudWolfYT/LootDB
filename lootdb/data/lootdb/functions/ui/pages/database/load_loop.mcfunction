scoreboard players add #loop lootdb 1
scoreboard players add #slot lootdb 1
scoreboard players operation in lootdb = #loop lootdb
function lootdb:tables/db/get

execute unless data storage lootdb out run data modify storage lootdb out set value {id:"minecraft:black_stained_glass_pane",Count:1b,tag:{lootdb:{id:-1,null:1b},has_lootdb:1b}}
execute if score #loop lootdb = .global lootdb run data modify storage lootdb out set value {id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{lootdb:{id:-1,null:1b},has_lootdb:1b}}

data modify storage lootdb out.tag.lootdb.null set value 1b
execute store result storage lootdb out.tag.lootdb.id int 1 run scoreboard players get #loop lootdb
data modify block 1007 1 1007 Text1 set value '[{"text":"","italic":false},{"storage":"lootdb","nbt":"out.tag.display.Name","interpret":true},{"text":"(ID="},{"score":{"objective":"lootdb","name":"#loop"}},{"text":")"}]'
data modify storage lootdb out.tag.display.Name set from block 1007 1 1007 Text1
execute if score #loop lootdb >= .global lootdb run data modify storage lootdb out.tag.display.Name set value '{"text":""}'

scoreboard players operation #temp lootdb = #slot lootdb
execute if score #temp lootdb matches 8.. run scoreboard players add #temp lootdb 2
execute if score #temp lootdb matches 17.. run scoreboard players add #temp lootdb 2
execute store result storage lootdb out.Slot byte 1 run scoreboard players get #temp lootdb
data modify block ~ ~ ~ Items insert -1 from storage lootdb out

execute if score #loop lootdb < #end lootdb run function lootdb:ui/pages/database/load_loop