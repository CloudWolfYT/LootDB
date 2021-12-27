function lootdb:ui/pages/table/save

execute unless data storage lootdb container[{Slot:8b}] run function lootdb:ui/pages/table/page_up
execute unless data storage lootdb container[{Slot:26b}] run function lootdb:ui/pages/table/page_down

function lootdb:ui/pages/table/load
function lootdb:ui/pages/table/mask

execute unless data storage lootdb container[{Slot:9b}] run function lootdb:ui/pages/database/open