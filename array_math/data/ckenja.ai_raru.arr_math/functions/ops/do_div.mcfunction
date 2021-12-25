#writing from inputs
data modify storage ckenja.ai_raru.arr_math:main v1 set from storage ckenja.ai_raru.arr_math:main div.v1
data modify storage ckenja.ai_raru.arr_math:main v2 set from storage ckenja.ai_raru.arr_math:main div.pv2
scoreboard players set dv1dec= ckenja.ai_raru.arr_math.main 0
scoreboard players set dv2dec= ckenja.ai_raru.arr_math.main 0

scoreboard players add con= ckenja.ai_raru.arr_math.main 1

#shifts v2 until it is greater than v1
function ckenja.ai_raru.arr_math:ops/inc_v2

#backing up v1 and v2
data modify storage ckenja.ai_raru.arr_math:main div.v1 set from storage ckenja.ai_raru.arr_math:main v1
data modify storage ckenja.ai_raru.arr_math:main div.v2 set from storage ckenja.ai_raru.arr_math:main v2

#comparing vars 
function ckenja.ai_raru.arr_math:call/compare

#reducing v2 if necessary/possible
execute if data storage ckenja.ai_raru.arr_math:main {out:{result:2}} if score dv2dec= ckenja.ai_raru.arr_math.main matches 1.. run function ckenja.ai_raru.arr_math:ops/decr_v2

#increasing v1 if needed
execute if data storage ckenja.ai_raru.arr_math:main {out:{result:2}} if score dv2dec= ckenja.ai_raru.arr_math.main matches ..0 run function ckenja.ai_raru.arr_math:ops/inc_v1

#doing repeated subtraction
scoreboard players set divi= ckenja.ai_raru.arr_math.main 0
data modify storage ckenja.ai_raru.arr_math:main out set from storage ckenja.ai_raru.arr_math:main div.v1
function ckenja.ai_raru.arr_math:ops/rep_sub
execute if score temp= ckenja.ai_raru.arr_math.main matches ..-1 if score zc= ckenja.ai_raru.arr_math.main matches 1.. run scoreboard players remove divi= ckenja.ai_raru.arr_math.main 1

#generating output
function ckenja.ai_raru.arr_math:ops/gen_div_out

#trimming remainder
data modify storage ckenja.ai_raru.arr_math:main temp set from storage ckenja.ai_raru.arr_math:main div.v1.num[0]
execute if data storage ckenja.ai_raru.arr_math:main {temp:0} run function ckenja.ai_raru.arr_math:ops/trim_dv1

#checking for remainder
execute unless score zc= ckenja.ai_raru.arr_math.main matches 0 run function ckenja.ai_raru.arr_math:ops/rem_check

#loop
#execute unless score zc= ckenja.ai_raru.arr_math.main matches 0 if score cdp= ckenja.ai_raru.arr_math.main < mdp= ckenja.ai_raru.arr_math.main unless score tcdp= ckenja.ai_raru.arr_math.main >= mdp= ckenja.ai_raru.arr_math.main run function ckenja.ai_raru.arr_math:ops/do_div
execute unless score zc= ckenja.ai_raru.arr_math.main matches 0 if score cdp= ckenja.ai_raru.arr_math.main < mdp= ckenja.ai_raru.arr_math.main run function ckenja.ai_raru.arr_math:ops/do_div