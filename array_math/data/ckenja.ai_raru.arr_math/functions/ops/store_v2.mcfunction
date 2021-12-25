execute store result score v2= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.arr_math:main v2.num[-1]
data remove storage ckenja.ai_raru.arr_math:main v2.num[-1]
execute unless data storage ckenja.ai_raru.arr_math:main v2.num[0] run data modify storage ckenja.ai_raru.arr_math:main v2.num append value "end"