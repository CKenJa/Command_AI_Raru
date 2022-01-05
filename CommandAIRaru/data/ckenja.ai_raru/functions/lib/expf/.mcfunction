#> ckenja.ai_raru:lib/expf/
#
# 自然指数関数
#
# @input score #lib.expf.input ckenja.ai_raru
#
# @output score #lib.expf.output ckenja.ai_raru
#
# @public

#1+x+x^2/2+x^3/6

#負ならいったん正に
execute store success score #lib.expf.success ckenja.ai_raru run execute unless score #lib.expf.input ckenja.ai_raru matches 0.. run scoreboard players operation #lib.expf.input ckenja.ai_raru *= #-1 ckenja.ai_raru

# テイラー展開(3次)
    scoreboard players operation #lib.expf.2 ckenja.ai_raru = #lib.expf.input ckenja.ai_raru
    scoreboard players operation #lib.expf.2 ckenja.ai_raru *= #lib.expf.input ckenja.ai_raru

    scoreboard players operation #lib.expf.3 ckenja.ai_raru = #lib.expf.input ckenja.ai_raru
    scoreboard players operation #lib.expf.3 ckenja.ai_raru *= #lib.expf.2 ckenja.ai_raru

    scoreboard players operation #lib.expf.2 ckenja.ai_raru /= #2 ckenja.ai_raru
    scoreboard players operation #lib.expf.3 ckenja.ai_raru /= #6 ckenja.ai_raru

    scoreboard players set #lib.expf.output ckenja.ai_raru 1
    scoreboard players operation #lib.expf.output ckenja.ai_raru += #lib.expf.input ckenja.ai_raru
    scoreboard players operation #lib.expf.output ckenja.ai_raru += #lib.expf.2 ckenja.ai_raru
    scoreboard players operation #lib.expf.output ckenja.ai_raru += #lib.expf.3 ckenja.ai_raru

#負なら逆数に
execute if score #lib.expf.success ckenja.ai_raru matches 1 run function ckenja.ai_raru:lib/expf/reciprocal