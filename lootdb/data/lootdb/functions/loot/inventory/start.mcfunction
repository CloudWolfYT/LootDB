## seperate LootDB items from normal items
data modify storage lootdb inv set from entity @s Inventory
data modify storage lootdb inv_return set value []
data modify storage lootdb packs set value []
execute store result score #loop lootdb run data get storage lootdb inv
function lootdb:loot/inventory/parse_loop

clear @s #minecraft:all_items{LootDB:[{}]}

## return inventory
execute store result score #loop lootdb run data get storage lootdb inv_return
data modify block 1007 0 1007 Items set value [{Slot:0b,id:"minecraft:stick",Count:1b}]
execute if score #loop lootdb matches 1.. run function lootdb:loot/inventory/return

## keep track of if you are full
scoreboard players set #inv lootdb 0
execute if data entity @s Inventory[{Slot:-106b}] run scoreboard players add #inv lootdb 1
execute if data entity @s Inventory[{Slot:100b}] run scoreboard players add #inv lootdb 1
execute if data entity @s Inventory[{Slot:101b}] run scoreboard players add #inv lootdb 1
execute if data entity @s Inventory[{Slot:102b}] run scoreboard players add #inv lootdb 1
execute if data entity @s Inventory[{Slot:103b}] run scoreboard players add #inv lootdb 1

## get loots
execute store result score #loop lootdb run data get storage lootdb packs
function lootdb:loot/inventory/loop_per_item