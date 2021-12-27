item replace block ~ ~ ~ container.0 with minecraft:black_stained_glass_pane{lootdb:{id:-1,null:1b},has_lootdb:1b}
item replace block ~ ~ ~ container.18 with minecraft:black_stained_glass_pane{lootdb:{id:-1,null:1b},has_lootdb:1b}

item replace block ~ ~ ~ container.8 with minecraft:flint{lootdb:{id:-1,null:1b},has_lootdb:1b}
item replace block ~ ~ ~ container.26 with minecraft:hopper{lootdb:{id:-1,null:1b},has_lootdb:1b}

scoreboard players operation in lootdb = @s lootdb.id
function lootdb:tables/db/get
data modify storage lootdb out.Slot set value 9b
data modify storage lootdb out.tag.lootdb.null set value 1b
data modify block 1007 1 1007 Text1 set value '[{"text":"","italic":false},{"storage":"lootdb","nbt":"out.tag.display.Name","interpret":true},{"text":"(ID="},{"score":{"objective":"lootdb.id","name":"@e[type=marker,tag=lootdb.ui,limit=1]"}},{"text":")"}]'
data modify storage lootdb out.tag.display.Name set from block 1007 1 1007 Text1
data modify block ~ ~ ~ Items insert -1 from storage lootdb out

execute if score @s lootdb.page matches 0 run item replace block ~ ~ ~ container.17 with minecraft:player_head{lootdb:{null:1b},display:{Name:'{"text":"Page 0","color":"white","italic":false}'},SkullOwner:{Id:[I;156217029,1691306173,-1377733410,-437294828],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzFiZDZhNDRlZDNhOWE4NmU1ZWNjMmM1MTc1OWMyOTk1NjFhZTk1ZmNjZTliOTUyNTI0MjNlZTYzNmViMjgifX19"}]}}}
execute if score @s lootdb.page matches 1 run item replace block ~ ~ ~ container.17 with minecraft:player_head{lootdb:{null:1b},display:{Name:'{"text":"Page 1","color":"white","italic":false}'},SkullOwner:{Id:[I;1817563583,192628083,-1706455002,210689264],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDU1ZmMyYzFiYWU4ZTA4ZDNlNDI2YzE3YzQ1NWQyZmY5MzQyMjg2ZGZmYTNjN2MyM2Y0YmQzNjVlMGMzZmUifX19"}]}}}
execute if score @s lootdb.page matches 2 run item replace block ~ ~ ~ container.17 with minecraft:player_head{lootdb:{null:1b},display:{Name:'{"text":"Page 2","color":"white","italic":false}'},SkullOwner:{Id:[I;186588715,1171932893,-1569404221,1496953569],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGM2MWIwNGUxMmE4Nzk3NjdiM2I3MmQ2OTYyN2YyOWE4M2JkZWI2MjIwZjVkYzdiZWEyZWIyNTI5ZDViMDk3In19fQ=="}]}}}
execute if score @s lootdb.page matches 3 run item replace block ~ ~ ~ container.17 with minecraft:player_head{lootdb:{null:1b},display:{Name:'{"text":"Page 3","color":"white","italic":false}'},SkullOwner:{Id:[I;-516733167,537545493,-2064782336,1174956291],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjgyM2Y3NzU1OGNhNjA2MGI2ZGM2YTRkNGIxZDg2YzFhNWJlZTcwODE2NzdiYmMzMzZjY2I5MmZiZDNlZSJ9fX0="}]}}}
execute if score @s lootdb.page matches 4 run item replace block ~ ~ ~ container.17 with minecraft:player_head{lootdb:{null:1b},display:{Name:'{"text":"Page 4","color":"white","italic":false}'},SkullOwner:{Id:[I;281284759,1465010981,-1932275481,1010953782],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTFiOWM0ZDZmNzIwOGIxNDI0Zjg1OTViZmMxYjg1Y2NhYWVlMmM1YjliNDFlMGY1NjRkNGUwYWNhOTU5In19fQ=="}]}}}