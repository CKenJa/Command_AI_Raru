#> ckenja.ai_raru:neural_network/layer
#
#レイヤーループ
#
# @within tag/function ckenja.ai_raru:neural_network/module/internal

say layer

function #ckenja.ai_raru:neural_network/layer/internal

#ループ
data remove storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1]
execute if data storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1] run function ckenja.ai_raru:neural_network/layer
