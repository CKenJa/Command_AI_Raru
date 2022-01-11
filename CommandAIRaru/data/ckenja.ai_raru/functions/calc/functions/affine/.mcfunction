#> ckenja.ai_raru:calc/functions/affine/
#
#
#
# @within tag/function ckenja.ai_raru:calc/functions/

#先にバイアスを加算して
execute store result score #calc.node.output ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].affine.bias
#インプットのループ回して行列の積を求める
function ckenja.ai_raru:calc/functions/matrix/
say matrix multiply
tellraw @a {"score":{"name":"#calc.node.output","objective":"ckenja.ai_raru"}}