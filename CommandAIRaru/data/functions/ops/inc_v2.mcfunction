#getting length of arrays
execute store result score v1length= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.arr_math:main v1.num
execute store result score v2length= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.arr_math:main v2.num

#comparing array length
execute if score v1length= ckenja.ai_raru.arr_math.main >= v2length= ckenja.ai_raru.arr_math.main run function ckenja.ai_raru.arr_math:ops/div_increase_v2