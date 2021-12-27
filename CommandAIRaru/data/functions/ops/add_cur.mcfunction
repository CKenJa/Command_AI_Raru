#write current values to scoreboard
scoreboard players set v1= ckenja.ai_raru.arr_math.main 0
scoreboard players set v2= ckenja.ai_raru.arr_math.main 0
execute unless data storage ckenja.ai_raru.arr_math:main {v1:{num:["end"]}} run function ckenja.ai_raru.arr_math:ops/store_v1
execute unless data storage ckenja.ai_raru.arr_math:main {v2:{num:["end"]}} run function ckenja.ai_raru.arr_math:ops/store_v2

#adding to temp value
scoreboard players operation temp= ckenja.ai_raru.arr_math.main += v1= ckenja.ai_raru.arr_math.main
scoreboard players operation temp= ckenja.ai_raru.arr_math.main += v2= ckenja.ai_raru.arr_math.main

#moving values to hold score
scoreboard players operation hold= ckenja.ai_raru.arr_math.main = temp= ckenja.ai_raru.arr_math.main

#carrying the one if necessary
execute if score hold= ckenja.ai_raru.arr_math.main >= base= ckenja.ai_raru.arr_math.main run scoreboard players set temp= ckenja.ai_raru.arr_math.main 1
execute if score hold= ckenja.ai_raru.arr_math.main < base= ckenja.ai_raru.arr_math.main run scoreboard players set temp= ckenja.ai_raru.arr_math.main 0
execute if score hold= ckenja.ai_raru.arr_math.main >= base= ckenja.ai_raru.arr_math.main run scoreboard players operation hold= ckenja.ai_raru.arr_math.main -= base= ckenja.ai_raru.arr_math.main

#writing value to output array
execute store result storage ckenja.ai_raru.arr_math:main temp int 1 run scoreboard players get hold= ckenja.ai_raru.arr_math.main
data modify storage ckenja.ai_raru.arr_math:main out.num prepend from storage ckenja.ai_raru.arr_math:main temp

#loop condition
execute unless data storage ckenja.ai_raru.arr_math:main {v1:{num:["end"]},v2:{num:["end"]}} run function ckenja.ai_raru.arr_math:ops/add_cur