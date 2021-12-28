scoreboard players remove temp= ckenja.ai_raru.arr_math.main 1
data remove storage ckenja.ai_raru.arr_math:main out.num[-1]

#loop
data modify storage ckenja.ai_raru.arr_math:main temp set from storage ckenja.ai_raru.arr_math:main out.num[-1]
#execute if score temp= ckenja.ai_raru.arr_math.main matches 1.. if data storage ckenja.ai_raru.arr_math:main {temp:0} run function