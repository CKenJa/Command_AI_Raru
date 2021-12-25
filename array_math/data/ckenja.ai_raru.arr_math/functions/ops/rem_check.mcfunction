#zero check for remainder
data modify storage ckenja.ai_raru.arr_math:main temp set from storage ckenja.ai_raru.arr_math:main div.v1.num
scoreboard players set zc= ckenja.ai_raru.arr_math.main 0
function ckenja.ai_raru.arr_math:ops/div_zero_check