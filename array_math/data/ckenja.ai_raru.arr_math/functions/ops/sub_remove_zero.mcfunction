#removing 0
data remove storage ckenja.ai_raru.arr_math:main out.num[0]
data modify storage ckenja.ai_raru.arr_math:main temp set from storage ckenja.ai_raru.arr_math:main out.num[0]

#loop condition
execute if data storage ckenja.ai_raru.arr_math:main out.num[1] if data storage ckenja.ai_raru.arr_math:main {temp:0} run function ckenja.ai_raru.arr_math:ops/sub_remove_zero