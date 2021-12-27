data modify block 1007 0 1007 Items[0] set from storage lootdb inv_return[-1]

execute if score in lootdb matches 0..8 run function lootdb:loot/inventory/return/slot0_8
execute if score in lootdb matches 9..17 run function lootdb:loot/inventory/return/slot9_17
execute if score in lootdb matches 18..26 run function lootdb:loot/inventory/return/slot18_26
execute if score in lootdb matches 27..35 run function lootdb:loot/inventory/return/slot27_35
execute if score in lootdb matches 100..103 run function lootdb:loot/inventory/return/slot100_103
execute if score in lootdb matches -106 run loot replace entity @s weapon.offhand 1 mine 1007 0 1007 air{drop_contents:true}

