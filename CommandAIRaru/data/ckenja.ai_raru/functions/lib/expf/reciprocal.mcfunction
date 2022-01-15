#> ckenja.ai_raru:lib/expf/reciprocal
#
# 負の値のinputなら逆数にします
#
# @within function ckenja.ai_raru:lib/expf/_

scoreboard players operation #lib.expf.success ckenja.ai_raru /= #lib.expf.output ckenja.ai_raru
scoreboard players operation #lib.expf.output ckenja.ai_raru /= #lib.expf.success ckenja.ai_raru