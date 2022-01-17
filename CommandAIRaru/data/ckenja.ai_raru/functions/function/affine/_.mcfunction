#> ckenja.ai_raru:function/affine/_
#
# 内積。アファイン変換?
#
# @within tag/function ckenja.ai_raru:neural_network/node

say affine

#先にバイアスを加算して
execute store result score #node.output ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1].node[-1].affine.bias

#インプットのループ回して行列の積を求める
function ckenja.ai_raru:function/affine/matrix
tellraw @a {"score":{"name":"#node.output","objective":"ckenja.ai_raru"}}

scoreboard players reset #affine.input ckenja.ai_raru
scoreboard players reset #affine.sum ckenja.ai_raru