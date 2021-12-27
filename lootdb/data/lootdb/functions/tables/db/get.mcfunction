data remove storage lootdb out
execute if score in lootdb matches 0..63 run function lootdb:tables/db/get/2_0
execute if score in lootdb matches 64..127 run function lootdb:tables/db/get/2_64