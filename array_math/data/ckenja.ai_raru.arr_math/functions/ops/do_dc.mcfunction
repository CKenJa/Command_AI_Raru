#creating output
#setting up for flattening
execute store result score base= ckenja.ai_raru.rev_conv.num run data get storage ckenja.ai_raru.arr_math:in var2.base
data modify storage ckenja.ai_raru.rev_conv:main in set from storage ckenja.ai_raru.arr_math:in var2.num

#flattening
function ckenja.ai_raru.rev_conv:call

#writing flattened base value
data modify storage ckenja.ai_raru.arr_math:main dc.base set value 10
execute store result storage ckenja.ai_raru.arr_math:main dc.base int 1 run scoreboard players get out= ckenja.ai_raru.rev_conv.num

#doing conversion
function ckenja.ai_raru.arr_math:ops/dc_check
execute if data storage ckenja.ai_raru.arr_math:main out{result:2} run function ckenja.ai_raru.arr_math:ops/dc_last_num

data modify storage ckenja.ai_raru.arr_math:main out set from storage ckenja.ai_raru.arr_math:main dc.out
data modify storage ckenja.ai_raru.arr_math:main out.pol set from storage ckenja.ai_raru.arr_math:in var1.pol
data modify storage ckenja.ai_raru.arr_math:main out.base set from storage ckenja.ai_raru.arr_math:main dc.base