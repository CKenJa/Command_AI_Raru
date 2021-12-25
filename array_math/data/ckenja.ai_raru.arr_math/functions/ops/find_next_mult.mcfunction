
#setting data
data modify storage ckenja.ai_raru.arr_math:main mult.v1 append value 0
execute store result score mult= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.arr_math:main mult.v2[-1]
data remove storage ckenja.ai_raru.arr_math:main mult.v2[-1]

execute store result storage ckenja.ai_raru.arr_math:main mult.m int 1 run scoreboard players get mult= ckenja.ai_raru.arr_math.main

#loop
execute if score mult= ckenja.ai_raru.arr_math.main matches ..0 if data storage ckenja.ai_raru.arr_math:main mult.v2[0] run function ckenja.ai_raru.arr_math:ops/find_next_mult