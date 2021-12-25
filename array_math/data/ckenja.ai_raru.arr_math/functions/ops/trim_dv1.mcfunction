data remove storage ckenja.ai_raru.arr_math:main div.v1.num[0]
data modify storage ckenja.ai_raru.arr_math:main temp set from storage ckenja.ai_raru.arr_math:main div.v1.num[0]
execute if data storage ckenja.ai_raru.arr_math:main {temp:0} if data storage ckenja.ai_raru.arr_math:main div.v1.num[0] run function ckenja.ai_raru.arr_math:ops/trim_dv1