setblock ~ ~ ~ chest{CustomName:'{"text":"LootDB UI","color":"gold"}'}
summon marker ~ ~ ~ {Tags:["lootdb.ui"]}

scoreboard players add @e[type=marker,tag=lootdb.ui] lootdb.page 0
scoreboard players add @e[type=marker,tag=lootdb.ui] lootdb.id 0