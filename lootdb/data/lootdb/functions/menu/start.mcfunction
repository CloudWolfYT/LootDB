scoreboard players set @s lootdb.menu 0

tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n=","color":"#ddd497"},{"text":"=","color":"#e1cb84"},{"text":"=","color":"#e6c372"},{"text":"=","color":"#eaba5f"},{"text":"=","color":"#eeb24c"},{"text":" L","color":"#f2a93a"},{"text":"o","color":"#f7a127"},{"text":"o","color":"#fb9814"},{"text":"t","color":"#fb9814"},{"text":"D","color":"#f7a127"},{"text":"B ","color":"#f2a93a"},{"text":"=","color":"#eeb24c"},{"text":"=","color":"#eaba5f"},{"text":"=","color":"#e6c372"},{"text":"=","color":"#e1cb84"},{"text":"=","color":"#ddd497"}]
tellraw @s {"text":"A pack by Cloud Wolf\n","color":"gray"}

tellraw @s {"text":"      [ Place UI ]","clickEvent":{"action":"run_command","value":"/function lootdb:ui/place"}}
tellraw @s {"text":"  [ Export To Item ]","clickEvent":{"action":"run_command","value":"/function lootdb:menu/export"}}
tellraw @s [{"text":"=","color":"#ddd497"},{"text":"=","color":"#e1cb84"},{"text":"=","color":"#e6c372"},{"text":"=","color":"#eaba5f"},{"text":"=","color":"#eeb24c"},{"text":"==","color":"#f2a93a"},{"text":"=","color":"#f7a127"},{"text":"=","color":"#fb9814"},{"text":"=","color":"#fb9814"},{"text":"=","color":"#f7a127"},{"text":"==","color":"#f2a93a"},{"text":"=","color":"#eeb24c"},{"text":"=","color":"#eaba5f"},{"text":"=","color":"#e6c372"},{"text":"=","color":"#e1cb84"},{"text":"=","color":"#ddd497"}]