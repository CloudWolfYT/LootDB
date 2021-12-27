execute if data storage lootdb inv[-1].tag.LootDB run data modify storage lootdb packs append from storage lootdb inv[-1]
execute unless data storage lootdb inv[-1].tag.LootDB run data modify storage lootdb inv_return append from storage lootdb inv[-1]

data remove storage lootdb inv[-1]

scoreboard players remove #loop lootdb 1
execute if score #loop lootdb matches 1.. run function lootdb:loot/inventory/parse_loop