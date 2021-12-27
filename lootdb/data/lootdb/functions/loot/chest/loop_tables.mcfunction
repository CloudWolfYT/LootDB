execute store result score in1 lootdb run data get storage lootdb temp1[-1].count
execute store result score #hold lootdb run data get storage lootdb temp1[-1].id

function lootdb:loot/chest/loop_item

data remove storage lootdb temp1[-1]
scoreboard players remove #loop lootdb 1
execute if score #loop lootdb matches 1.. run function lootdb:loot/chest/loop_tables