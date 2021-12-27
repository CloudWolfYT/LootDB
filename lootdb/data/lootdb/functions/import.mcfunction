execute if block 1007 2 1007 chest run tellraw @a[gamemode=creative] {"text":"LootDB Datagram Imported","color":"gold"}
execute if block 1007 2 1007 chest run data modify storage lootdb tables set from block 1007 2 1007 Items[{tag:{tables:[{}]}}].tag.tables
execute store result score .global lootdb run data get storage lootdb tables
execute as @e[type=marker,tag=lootdb.ui] at @s run function lootdb:ui/reset

scoreboard players set .reload lootdb 2
setblock 1007 2 1007 bedrock