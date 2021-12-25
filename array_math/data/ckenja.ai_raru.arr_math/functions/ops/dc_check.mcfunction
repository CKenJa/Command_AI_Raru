#doing division
scoreboard players set mdp= ckenja.ai_raru.arr_math.main 0
function ckenja.ai_raru.arr_math:call/divide

#writing data
data modify storage ckenja.ai_raru.arr_math:main dc.out.num prepend value 0

#setting up for flattening
execute store result score base= ckenja.ai_raru.rev_conv.num run data get storage ckenja.ai_raru.arr_math:in var2.base
data modify storage ckenja.ai_raru.rev_conv:main in set from storage ckenja.ai_raru.arr_math:main out.rem

#flattening
function ckenja.ai_raru.rev_conv:call

#writing flattened value
execute store result storage ckenja.ai_raru.arr_math:main dc.out.num[0] int 1 run scoreboard players get out= ckenja.ai_raru.rev_conv.num

data remove storage ckenja.ai_raru.arr_math:main out.rem

#comparing values
data modify storage ckenja.ai_raru.arr_math:main v1 set from storage ckenja.ai_raru.arr_math:main out
function ckenja.ai_raru.arr_math:call/compare
data modify storage ckenja.ai_raru.arr_math:main v1 set from storage ckenja.ai_raru.arr_math:main out
execute unless data storage ckenja.ai_raru.arr_math:main out{result:2} run function ckenja.ai_raru.arr_math:ops/dc_check