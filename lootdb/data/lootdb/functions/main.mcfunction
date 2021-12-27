execute as @e[type=marker,tag=lootdb.ui] at @s run function lootdb:ui/main

execute as @a[scores={lootdb.open_chest=1..}] at @s run function lootdb:loot/chest/raycast_start
execute as @a store result score @s lootdb.id run clear @s #minecraft:all_items{LootDB:[{}]} 0
execute as @a[scores={lootdb.id=1..}] run function lootdb:loot/inventory/start

scoreboard players enable @a lootdb.menu
execute as @a[scores={lootdb.menu=1..}] run function lootdb:menu/start

execute if score .reload lootdb matches 1 run function lootdb:import
execute if score .reload lootdb matches 0 as @e[type=marker,tag=lootdb.reloader] run function lootdb:reload