execute store result entity @s Rotation[0] float 1 run scoreboard players get in math
execute at @s run tp @s ^ ^ ^-1
execute store result score #temp math run data get entity @s Pos[2] 1000.0
execute store result score out math run data get entity @s Pos[0] 1000.0
scoreboard players operation out math *= #1000 constant
scoreboard players operation out math /= #temp math
tp @s 0.0 0.0 0.0