data modify block 1007 0 1007 Items[0] set from storage lootdb out
execute store result score #inv1 lootdb run data get entity @s Inventory
scoreboard players operation #inv1 lootdb -= #inv lootdb
execute if score #inv1 lootdb matches ..35 run loot give @s mine 1007 0 1007 air{drop_contents:true}
execute if score #inv1 lootdb matches 35.. at @s run loot spawn ~ ~ ~ mine 1007 0 1007 air{drop_contents:true}