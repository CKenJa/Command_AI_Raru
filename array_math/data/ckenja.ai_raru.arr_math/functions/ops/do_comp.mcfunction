#decimal point handling
function ckenja.ai_raru.arr_math:ops/dec_move
execute unless data storage ckenja.ai_raru.arr_math:main div unless data storage ckenja.ai_raru.arr_math:main dc run data modify storage ckenja.ai_raru.arr_math:main out set value {result:0}
data modify storage ckenja.ai_raru.arr_math:main out.result set value 0

#getting length of array
execute store result score v1length= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.arr_math:main v1.num
execute store result score v2length= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.arr_math:main v2.num

#comparing numbers if array length is equal
execute if score v1length= ckenja.ai_raru.arr_math.main = v2length= ckenja.ai_raru.arr_math.main run function ckenja.ai_raru.arr_math:ops/comp_comp

#marking the longer array as the greatest if array lengths are unequal
execute if score v1length= ckenja.ai_raru.arr_math.main > v2length= ckenja.ai_raru.arr_math.main run data modify storage ckenja.ai_raru.arr_math:main out.result set value 1
execute if score v1length= ckenja.ai_raru.arr_math.main < v2length= ckenja.ai_raru.arr_math.main run data modify storage ckenja.ai_raru.arr_math:main out.result set value 2