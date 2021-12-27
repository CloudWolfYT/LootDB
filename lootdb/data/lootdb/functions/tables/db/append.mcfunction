data modify storage lootdb tables append value {}
scoreboard players operation in lootdb = .global lootdb
data modify storage lootdb in set value {id:"minecraft:zombie_head",Count:1b,Table:[[{id:"minecraft:barrier",Count:1b,Slot:1b}],[],[],[],[]]}
function lootdb:tables/db/set
scoreboard players add .global lootdb 1