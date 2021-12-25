#moving val to scoreboard
execute store result score v1= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.arr_math:main v1.num[0]
execute store result score v2= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.arr_math:main v2.num[0]
data remove storage ckenja.ai_raru.arr_math:main v1.num[0]
data remove storage ckenja.ai_raru.arr_math:main v2.num[0]

#comparing nums
execute if score v1= ckenja.ai_raru.arr_math.main > v2= ckenja.ai_raru.arr_math.main run data modify storage ckenja.ai_raru.arr_math:main out.result set value 1
execute if score v1= ckenja.ai_raru.arr_math.main < v2= ckenja.ai_raru.arr_math.main run data modify storage ckenja.ai_raru.arr_math:main out.result set value 2

#retrying if values are equal
execute if data storage ckenja.ai_raru.arr_math:main v1.num[0] if data storage ckenja.ai_raru.arr_math:main v2.num[0] if score v1= ckenja.ai_raru.arr_math.main = v2= ckenja.ai_raru.arr_math.main run function ckenja.ai_raru.arr_math:ops/comp_comp