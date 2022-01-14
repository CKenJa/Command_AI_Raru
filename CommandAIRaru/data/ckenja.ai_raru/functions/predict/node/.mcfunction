#> ckenja.ai_raru:predict/node/
#
#ノードループ
#
# @within function ckenja.ai_raru:predict/layer/

say node

function ckenja.ai_raru:predict/node/predict

data remove storage ckenja.ai_raru.__temp__:predict model.module[-1].layer[-1].node[-1]
execute if data storage ckenja.ai_raru.__temp__:predict model.module[-1].layer[-1].node[-1] run function ckenja.ai_raru:predict/node/
