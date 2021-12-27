## set item or append and set
data modify storage lootdb in set from storage lootdb temp1[0]
execute if score #loop lootdb = #temp2 lootdb unless data storage lootdb in.tag.lootdb.null run function lootdb:tables/db/append
scoreboard players operation in lootdb = #loop lootdb
function lootdb:tables/db/get
data modify storage lootdb in set from storage lootdb temp1[0]
data modify storage lootdb in.Table set from storage lootdb out.Table
data remove storage lootdb temp1[0]
execute if score #loop lootdb <= #temp2 lootdb unless data storage lootdb in.tag.lootdb.null run function lootdb:tables/db/set