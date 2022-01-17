#> ckenja.ai_raru:neural_network/node
#
#ノードループ
#
# @within tag/function ckenja.ai_raru:neural_network/layer/internal

say node

function #ckenja.ai_raru:neural_network/node/internal

data remove storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1].node[-1]
execute if data storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1].node[-1] run function ckenja.ai_raru:neural_network/node