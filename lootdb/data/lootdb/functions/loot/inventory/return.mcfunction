execute store result score in lootdb run data get storage lootdb inv_return[-1].Slot
#tellraw @a {"nbt":"inv_return[-1]","storage":"lootdb"}
#tellraw @a {"score":{"objective":"lootdb","name":"in"}}
data modify storage lootdb inv_return[-1].Slot set value 0b
function lootdb:loot/inventory/return/start
data remove storage lootdb inv_return[-1]
scoreboard players remove #loop lootdb 1
execute if score #loop lootdb matches 1.. run function lootdb:loot/inventory/return