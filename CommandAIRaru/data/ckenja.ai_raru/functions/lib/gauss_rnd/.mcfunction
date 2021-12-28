#> ckenja.ai_raru:lib/gauss_rnd/
#
# AiMathのsqrtとdiceから平均0、分散1の正規分布に従う乱数を作ります
#
# @output storage ckenja.ai_raru.lib: gauss_rnd
#
# @public

data modify storage ckenja.ai_raru.math: in set value [6,1024]
function #ckenja.ai_raru.math:dice
execute store result score in= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.math: out.sum
scoreboard players operation in= ckenja.ai_raru.arr_math.main -= #3072 ckenja.ai_raru
function ckenja.ai_raru.arr_math:call/scoreboard/import
data modify storage ckenja.ai_raru.arr_math:in var1 set from storage arr_math:main out.num
data modify storage ckenja.ai_raru.arr_math:in var2 set value {dec:0,num:[6144],pol:1,base:10}
function ckenja.ai_raru.arr_math:call/divide
data modify storage ckenja.ai_raru.lib: gauss_rnd set from storage ckenja.ai_raru.arr_math:main out