data remove storage ckenja.ai_raru.arr_math:main out.num[-1]
execute if score temp= ckenja.ai_raru.arr_math.main matches 1.. run scoreboard players remove temp= ckenja.ai_raru.arr_math.main 1
execute if score temp= ckenja.ai_raru.arr_math.main matches ..-1 run scoreboard players add temp= ckenja.ai_raru.arr_math.main 1

#loop
execute unless score temp= ckenja.ai_raru.arr_math.main matches 0 run function ckenja.ai_raru.arr_math:ops/mult_remove_zero