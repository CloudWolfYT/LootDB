scoreboard players operation in lootdb = #hold lootdb
function lootdb:loot/random/start
execute if data storage lootdb out run function lootdb:loot/chest/insert

scoreboard players remove in1 lootdb 1
execute if score in1 lootdb matches 1.. run function lootdb:loot/chest/loop_item