#lowering decimal point val if needed
execute store result score temp= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.arr_math:main out.dec
data modify storage ckenja.ai_raru.arr_math:main temp set from storage ckenja.ai_raru.arr_math:main out.num[-1]
execute if score temp= ckenja.ai_raru.arr_math.main matches 1.. if data storage ckenja.ai_raru.arr_math:main {temp:0} run function ckenja.ai_raru.arr_math:ops/mult_red_dec
execute store result storage ckenja.ai_raru.arr_math:main out.dec int 1 run scoreboard players get temp= ckenja.ai_raru.arr_math.main