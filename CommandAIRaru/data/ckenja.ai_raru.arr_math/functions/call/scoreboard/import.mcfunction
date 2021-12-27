scoreboard players set error= ckenja.ai_raru.arr_math.main 20
#setting up output
data modify storage ckenja.ai_raru.arr_math:main out set value {dec:0,num:[],pol:1,base:0}

#setting polarity
execute if score in= ckenja.ai_raru.arr_math.main matches ..-1 run data modify storage ckenja.ai_raru.arr_math:main out.pol set value -1
execute if score in= ckenja.ai_raru.arr_math.main matches 0.. run data modify storage ckenja.ai_raru.arr_math:main out.pol set value 1
execute store result score in= ckenja.ai_raru.base_conv.num run data get storage ckenja.ai_raru.arr_math:main out.pol

#setting base
execute unless score base= ckenja.ai_raru.arr_math.main matches 2.. run scoreboard players set base= ckenja.ai_raru.arr_math.main 10
execute store result storage ckenja.ai_raru.arr_math:main out.base int 1 run scoreboard players operation base= ckenja.ai_raru.base_conv.num = base= ckenja.ai_raru.arr_math.main

#doing conversion
scoreboard players operation in= ckenja.ai_raru.base_conv.num *= in= ckenja.ai_raru.arr_math.main
function ckenja.ai_raru.base_conv:call
data modify storage ckenja.ai_raru.arr_math:main out.num set from storage ckenja.ai_raru.base_conv:main out

scoreboard players reset * ckenja.ai_raru.arr_math.main