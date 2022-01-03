#> ckenja.ai_raru:lib/he_weight_initial_value/
#
# Heの初期値を生成します
#
# @input score #lib.he ckenja.ai_raru
#   ノードの数
#
# @output storage arr_math:main out
#   生成した乱数(1個だけ)
#
# @public

#Heの初期値は確率変数Zに従う標準正規分布を用意して
function ckenja.ai_raru:lib/gauss_rnd/

#X=√(2/n)*Zで確率変数Xに従う分散が2/nの正規分布が得られる
data modify storage ckenja.ai_raru.arr_math:in var1 set value {dec:0,num:[2],pol:1,base:10}
execute store result storage ckenja.ai_raru.arr_math:in var2 double 1 run scoreboard players get #lib.he ckenja.ai_raru
function ckenja.ai_raru.arr_math:call/divide

data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.arr_math:main out
function ckenja.ai_raru.arr_math:call/convert/flatten

data modify storage ckenja.ai_raru.math: in set from storage ckenja.ai_raru.arr_math:main out
function #ckenja.ai_raru.math:sqrt

execute store result score in= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.math: out 10000
function ckenja.ai_raru.arr_math:call/scoreboard/import

data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.arr_math:main out
data modify storage ckenja.ai_raru.arr_math:in var2 set value {dec:0,num:[1,0,0,0,0],pol:1,base:10}
function ckenja.ai_raru.arr_math:call/divide

data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.arr_math:main out
data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru.lib: gauss_rnd
function ckenja.ai_raru.arr_math:call/multiply