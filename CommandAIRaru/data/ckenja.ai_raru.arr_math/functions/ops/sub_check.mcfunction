#comparing values to find what one is greater
function ckenja.ai_raru.arr_math:call/compare
execute store result score gv= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.arr_math:main out.result
execute if score gv= ckenja.ai_raru.arr_math.main matches 0 run scoreboard players set gv= ckenja.ai_raru.arr_math.main 1

#writing values from input
#writing v1 to v1 if v1 > v2
execute if score gv= ckenja.ai_raru.arr_math.main matches 1 run data modify storage ckenja.ai_raru.arr_math:main v1 set from storage ckenja.ai_raru.arr_math:in var1
execute if score gv= ckenja.ai_raru.arr_math.main matches 1 run data modify storage ckenja.ai_raru.arr_math:main v2 set from storage ckenja.ai_raru.arr_math:in var2
#writing v2 to v1 if v1 < v2
execute if score gv= ckenja.ai_raru.arr_math.main matches 2 run data modify storage ckenja.ai_raru.arr_math:main v1 set from storage ckenja.ai_raru.arr_math:in var2
execute if score gv= ckenja.ai_raru.arr_math.main matches 2 run data modify storage ckenja.ai_raru.arr_math:main v2 set from storage ckenja.ai_raru.arr_math:in var1

#setting output format
data modify storage ckenja.ai_raru.arr_math:main out set value {num:[],dec:0,base:0,pol:1}
data modify storage ckenja.ai_raru.arr_math:main out.base set from storage ckenja.ai_raru.arr_math:in var1.base
execute store result score base= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.arr_math:main out.base

#decimal point handling
function ckenja.ai_raru.arr_math:ops/dec_move

#logic to decide what to do based on polarity and value of v1 and v2
function ckenja.ai_raru.arr_math:ops/sub_logic

#removing zeros at the start of the output array
data modify storage ckenja.ai_raru.arr_math:main temp set from storage ckenja.ai_raru.arr_math:main out.num[0]
execute if data storage ckenja.ai_raru.arr_math:main out.num[1] if data storage ckenja.ai_raru.arr_math:main {temp:0} run function ckenja.ai_raru.arr_math:ops/sub_remove_zero

function ckenja.ai_raru.arr_math:ops/red_dec