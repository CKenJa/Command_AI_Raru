#> ckenja.ai_raru:calc/node/
#
#ノードループ
#
# @within function ckenja.ai_raru:calc/layer/

say node

function ckenja.ai_raru:calc/node/calc

data remove storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1]
execute if data storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1] run function ckenja.ai_raru:calc/node/
