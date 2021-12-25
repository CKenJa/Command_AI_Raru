#setting up data and scores
execute store result score base= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.arr_math:in var1.base
data modify storage ckenja.ai_raru.arr_math:main out.base set from storage ckenja.ai_raru.arr_math:in var1.base
data modify storage ckenja.ai_raru.arr_math:main div set value {rem:[],mdp:0,cdp:0,pv2:{},v1:{},v2:{},out:{num:[],dec:0,base:0,pol:1,rem:[]}}
data modify storage ckenja.ai_raru.arr_math:main div.out.base set from storage ckenja.ai_raru.arr_math:in var1.base
#mdp: max decimal precision - cdp: current decimal position
scoreboard players set cdp= ckenja.ai_raru.arr_math.main 0
scoreboard players set -1= ckenja.ai_raru.arr_math.main -1
execute unless score mdp= ckenja.ai_raru.arr_math.main matches 0.. run scoreboard players set mdp= ckenja.ai_raru.arr_math.main 16

#decimal point handling
function ckenja.ai_raru.arr_math:ops/dec_move
data modify storage ckenja.ai_raru.arr_math:main v1.dec set value 0
data modify storage ckenja.ai_raru.arr_math:main v2.dec set value 0
data modify storage ckenja.ai_raru.arr_math:main div.pv2 set from storage ckenja.ai_raru.arr_math:main v2
data modify storage ckenja.ai_raru.arr_math:main div.v1 set from storage ckenja.ai_raru.arr_math:main v1

#doing division
function ckenja.ai_raru.arr_math:ops/do_div

#writing output
data modify storage ckenja.ai_raru.arr_math:main out set from storage ckenja.ai_raru.arr_math:main div.out
execute if score zc= ckenja.ai_raru.arr_math.main matches 1.. run data modify storage ckenja.ai_raru.arr_math:main out.rem set from storage ckenja.ai_raru.arr_math:main div.v1.num

function ckenja.ai_raru.arr_math:ops/red_dec

#setting polarity
data modify storage ckenja.ai_raru.arr_math:main out.pol set value 1
execute if data storage ckenja.ai_raru.arr_math:in {var1:{pol:-1}} unless data storage ckenja.ai_raru.arr_math:in {var1:{pol:-1},var2:{pol:-1}} run data modify storage ckenja.ai_raru.arr_math:main out.pol set value -1
execute if data storage ckenja.ai_raru.arr_math:in {var2:{pol:-1}} unless data storage ckenja.ai_raru.arr_math:in {var1:{pol:-1},var2:{pol:-1}} run data modify storage ckenja.ai_raru.arr_math:main out.pol set value -1