scoreboard players add in1 math 1
scoreboard players operation #range math = in1 math
scoreboard players operation #range math -= in math

scoreboard players operation #m1 math = #range math
scoreboard players remove #m1 math 1
function math:rng/zprivate/next_int
scoreboard players operation out math += in math

scoreboard players reset #m1 math
scoreboard players remove in1 math 1