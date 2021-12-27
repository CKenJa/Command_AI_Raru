#setting up
data modify storage ckenja.ai_raru.arr_math:main mult set value {v1:[],v2:[],m:0}
data modify storage ckenja.ai_raru.arr_math:main v1 set from storage ckenja.ai_raru.arr_math:in var1
data modify storage ckenja.ai_raru.arr_math:main v2 set from storage ckenja.ai_raru.arr_math:in var2
function ckenja.ai_raru.arr_math:ops/dec_move
data modify storage ckenja.ai_raru.arr_math:main mult.v1 set from storage ckenja.ai_raru.arr_math:main v1.num
data modify storage ckenja.ai_raru.arr_math:main mult.v2 set from storage ckenja.ai_raru.arr_math:main v2.num
data modify storage ckenja.ai_raru.arr_math:main v1.dec set value 0
data modify storage ckenja.ai_raru.arr_math:main v2.dec set value 0

#setting initial values for recursive function
execute store result score mult= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.arr_math:main mult.v2[-1]
data remove storage ckenja.ai_raru.arr_math:main mult.v2[-1]
data modify storage ckenja.ai_raru.arr_math:main out.num set value [0]

#doing math
execute if score mult= ckenja.ai_raru.arr_math.main matches ..0 if data storage ckenja.ai_raru.arr_math:main mult.v2[0] run function ckenja.ai_raru.arr_math:ops/find_next_mult
execute if score mult= ckenja.ai_raru.arr_math.main matches 1.. run function ckenja.ai_raru.arr_math:ops/do_mult

#setting decimal point and polarity
function ckenja.ai_raru.arr_math:ops/mult_final

function ckenja.ai_raru.arr_math:ops/red_dec