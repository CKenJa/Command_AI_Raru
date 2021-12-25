scoreboard players set error= ckenja.ai_raru.arr_math.main 20
#creating output
data modify storage ckenja.ai_raru.arr_math:main out set value {num:0}

#exporting to scoreboard
function ckenja.ai_raru.arr_math:call/scoreboard/export

#adding decimal point
execute unless score error= ckenja.ai_raru.arr_math.main matches 10..19 run function ckenja.ai_raru.arr_math:ops/flat_dec

execute unless score error= ckenja.ai_raru.arr_math.main matches 10..19 run scoreboard players reset * ckenja.ai_raru.arr_math.main