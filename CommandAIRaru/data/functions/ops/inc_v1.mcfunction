#adding last num
data modify storage ckenja.ai_raru.arr_math:main div.v1.num append value 0
scoreboard players add dv1dec= ckenja.ai_raru.arr_math.main 1

#writing vals back
data modify storage ckenja.ai_raru.arr_math:main v1 set from storage ckenja.ai_raru.arr_math:main div.v1
data modify storage ckenja.ai_raru.arr_math:main v2 set from storage ckenja.ai_raru.arr_math:main div.v2

#comparing vars 
function ckenja.ai_raru.arr_math:call/compare

#loop
execute if data storage ckenja.ai_raru.arr_math:main {out:{result:2}} run function ckenja.ai_raru.arr_math:ops/inc_v1