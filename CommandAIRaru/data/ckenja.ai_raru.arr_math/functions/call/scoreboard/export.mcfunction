scoreboard players set error= ckenja.ai_raru.arr_math.main 20
#setting up for flattening
execute store result score base= ckenja.ai_raru.rev_conv.num run data get storage ckenja.ai_raru.arr_math:in var1.base
data modify storage ckenja.ai_raru.rev_conv:main in set from storage ckenja.ai_raru.arr_math:in var1.num

#flattening
function ckenja.ai_raru.rev_conv:call

#output
execute if data storage ckenja.ai_raru.arr_math:in {var1:{pol:1}} run scoreboard players set out= ckenja.ai_raru.arr_math.main 1
execute if data storage ckenja.ai_raru.arr_math:in {var1:{pol:-1}} run scoreboard players set out= ckenja.ai_raru.arr_math.main -1
scoreboard players operation out= ckenja.ai_raru.arr_math.main *= out= ckenja.ai_raru.rev_conv.num
execute if score out= ckenja.ai_raru.rev_conv.num matches ..-1 run scoreboard players set error= ckenja.ai_raru.arr_math.main 11