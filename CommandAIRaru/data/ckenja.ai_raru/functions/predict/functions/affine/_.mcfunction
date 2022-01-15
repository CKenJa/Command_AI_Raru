#> ckenja.ai_raru:predict/functions/affine/_
#
#
#
# @within tag/function ckenja.ai_raru:predict/functions/_

#先にバイアスを加算して
execute store result score #predict.node.output ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:predict model.module[-1].layer[-1].node[-1].affine.bias
#インプットのループ回して行列の積を求める
function ckenja.ai_raru:predict/functions/affine/matrix
say matrix multiply
tellraw @a {"score":{"name":"#predict.node.output","objective":"ckenja.ai_raru"}}