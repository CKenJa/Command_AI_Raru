#writing div temp vals to operation registers
data modify storage ckenja.ai_raru.arr_math:main div.v1 set from storage ckenja.ai_raru.arr_math:main out
data modify storage ckenja.ai_raru.arr_math:main v1 set from storage ckenja.ai_raru.arr_math:main div.v1
data modify storage ckenja.ai_raru.arr_math:main v2 set from storage ckenja.ai_raru.arr_math:main div.v2
data modify storage ckenja.ai_raru.arr_math:main out.num set value []

#doing subtraction
scoreboard players add divi= ckenja.ai_raru.arr_math.main 1
function ckenja.ai_raru.arr_math:ops/sub_cur

#checking for zero
data modify storage ckenja.ai_raru.arr_math:main temp set from storage ckenja.ai_raru.arr_math:main out.num
scoreboard players set zc= ckenja.ai_raru.arr_math.main 0
function ckenja.ai_raru.arr_math:ops/div_zero_check

#loop
execute unless score temp= ckenja.ai_raru.arr_math.main matches ..-1 if score zc= ckenja.ai_raru.arr_math.main matches 1.. run function ckenja.ai_raru.arr_math:ops/rep_sub

#after this function the remainder will be in div.v1