#adding current val to total
execute store result score zct= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.arr_math:main temp[0]
data remove storage ckenja.ai_raru.arr_math:main temp[0]
scoreboard players operation zc= ckenja.ai_raru.arr_math.main += zct= ckenja.ai_raru.arr_math.main

#loop
execute if data storage ckenja.ai_raru.arr_math:main temp[0] run function ckenja.ai_raru.arr_math:ops/div_zero_check