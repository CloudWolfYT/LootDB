scoreboard objectives add lootdb.page dummy
scoreboard objectives add lootdb.id dummy
scoreboard objectives add lootdb dummy
scoreboard objectives add lootdb.open_chest minecraft.custom:minecraft.open_chest
scoreboard objectives add lootdb.menu trigger

scoreboard players set #21 lootdb 21
scoreboard players add .global lootdb 0
execute if score .global lootdb matches 0 run function lootdb:tables/db/append

forceload add 1007 1007
summon marker ~ ~ ~ {Tags:["lootdb.reloader"]}
tp @e[type=marker,tag=lootdb.reloader] 1007 0 1007
scoreboard players set .reload lootdb 0