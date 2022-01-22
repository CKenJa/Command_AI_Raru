#> ckenja.ai_raru:neural_network/layer
#
#レイヤーループ
#
# @within tag/function ckenja.ai_raru:neural_network/module/internal

say layer

execute if data storage ckenja.ai_raru.__temp__:neural_network config{propagation:"forward"} run function #ckenja.ai_raru:neural_network/forward/layer/internal
execute if data storage ckenja.ai_raru.__temp__:neural_network config{propagation:"backward"} run function #ckenja.ai_raru:neural_network/backward/layer/internal

#ループ
data remove storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1]
execute if data storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1] run function ckenja.ai_raru:neural_network/layer
