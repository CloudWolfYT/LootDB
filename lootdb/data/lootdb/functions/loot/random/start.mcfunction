function lootdb:tables/db/get

data remove storage lootdb in
data modify storage lootdb in set from storage lootdb out.Table[0]
data modify storage lootdb in append from storage lootdb out.Table[1][]
data modify storage lootdb in append from storage lootdb out.Table[2][]
data modify storage lootdb in append from storage lootdb out.Table[3][]
data modify storage lootdb in append from storage lootdb out.Table[4][]
#tellraw @a {"nbt":"in","storage":"lootdb"}
scoreboard players set in math 1
execute store result score in1 math run data get storage lootdb in
function math:rng/range
scoreboard players operation in lootdb = out math
scoreboard players remove in lootdb 1
function lootdb:loot/db/get

## removing output if barrier ##
data modify storage lootdb temp set value [{}]
data modify storage lootdb temp[0] set from storage lootdb out
data remove storage lootdb out
execute unless data storage lootdb temp[{id:"minecraft:barrier"}] run data modify storage lootdb out set from storage lootdb temp[0]