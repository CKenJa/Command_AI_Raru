#> ckenja.ai_raru:lib/he_initialization/_
#
# Heの初期値を生成します
#
# @input score #lib.he.input ckenja.ai_raru
#   その層のノードの数。int型
#
# @output score #lib.he.output ckenja.ai_raru
#   生成した乱数(1個だけ)
#
# @public

#Heの初期値は確率変数Zに従う標準正規分布を用意して
function ckenja.ai_raru:lib/gauss_rnd/_

#X=√(2/n)*Zで確率変数Xに従う分散が2/nの正規分布が得られる
#const.scale*2
scoreboard players operation #lib.he.output ckenja.ai_raru = #20000 ckenja.ai_raru
scoreboard players operation #lib.he.output ckenja.ai_raru /= #lib.he.input ckenja.ai_raru

#1/#const.scale
execute store result storage ckenja.ai_raru.math: in double 0.0001 run scoreboard players get #lib.he.output ckenja.ai_raru
function #ckenja.ai_raru.math:sqrt

#const.scale
execute store result score #lib.he.output ckenja.ai_raru run data get storage ckenja.ai_raru.math: out 10000

scoreboard players operation #lib.he.output ckenja.ai_raru *= #lib.gauss_rnd ckenja.ai_raru
scoreboard players operation #lib.he.output ckenja.ai_raru /= #const.scale ckenja.ai_raru