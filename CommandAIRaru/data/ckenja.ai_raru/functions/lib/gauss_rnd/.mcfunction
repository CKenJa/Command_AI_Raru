#> ckenja.ai_raru:lib/gauss_rnd/
#
# AiMathのsqrtとdiceから平均0、分散1の正規分布に従う乱数を作ります
#
# @output score #lib.gauss_rnd ckenja.ai_raru
#
# @public

data modify storage ckenja.ai_raru.math: in set value [10,1000]
function #ckenja.ai_raru.math:dice

#乱数の最大値を1に
execute store result score #lib.gauss_rnd ckenja.ai_raru run data get storage ckenja.ai_raru.math: out.sum 2
#平均を0にする
scoreboard players operation #lib.gauss_rnd ckenja.ai_raru -= #10000 ckenja.ai_raru