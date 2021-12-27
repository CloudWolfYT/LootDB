scoreboard players set in math 0
scoreboard players operation in1 math = #slots lootdb
function math:rng/range
function lootdb:loot/chest/take_slot
execute store result storage lootdb out.Slot byte 1 run scoreboard players get out lootdb
data modify block ~ ~ ~ Items insert -1 from storage lootdb out
scoreboard players remove #slots lootdb 1