execute if block ~ ~ ~ chest if data block ~ ~ ~ Items[{tag:{LootDB:[{}]}}] run function lootdb:loot/chest/start

scoreboard players remove #raycast lootdb 1
execute if score #raycast lootdb matches 1.. positioned ^ ^ ^0.5 run function lootdb:loot/chest/raycast