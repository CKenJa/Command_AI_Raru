#> ckenja.ai_raru:lib/gauss_rnd/
#
# AiMathのsqrtとdiceから平均0、分散1、値域-1~1の正規分布に従う乱数を作ります。嘘です適当です
#
# @output score #lib.gauss_rnd ckenja.ai_raru
#
# @public

#速度は求められないし割と適当でいいと思うのでその場のノリで決めた定数と中心極限定理による近似で行います
#https://kumpei.ikuta.me/benchmark-normal-variates/

#const.shift.multiply/12の値で最も二進数的にシンプルな奴
data modify storage ckenja.ai_raru.math: in set value [12,832]
function #ckenja.ai_raru.math:dice

#乱数の最大値を1に
execute store result score #lib.gauss_rnd ckenja.ai_raru run data get storage ckenja.ai_raru.math: out.sum 2
#平均を0にする
scoreboard players operation #lib.gauss_rnd ckenja.ai_raru -= #4992 ckenja.ai_raru