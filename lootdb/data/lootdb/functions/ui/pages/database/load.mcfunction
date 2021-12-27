scoreboard players operation #loop lootdb = @s lootdb.page
scoreboard players operation #loop lootdb *= #21 lootdb
scoreboard players operation #end lootdb = #loop lootdb
scoreboard players add #end lootdb 21
scoreboard players set #slot lootdb 0
function lootdb:ui/pages/database/load_loop