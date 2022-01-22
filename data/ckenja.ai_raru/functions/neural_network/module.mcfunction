#> ckenja.ai_raru:neural_network/module
#
#モジュールループ
#
# @within tag/function ckenja.ai_raru:neural_network/internal

say module

execute if data storage ckenja.ai_raru.__temp__:neural_network config{propagation:"forward"} run function #ckenja.ai_raru:neural_network/forward/module/internal
execute if data storage ckenja.ai_raru.__temp__:neural_network config{propagation:"backward"} run function #ckenja.ai_raru:neural_network/backward/module/internal

data remove storage ckenja.ai_raru.__temp__:neural_network model.module[-1]
execute if data storage ckenja.ai_raru.__temp__:neural_network model.module[-1] run function ckenja.ai_raru:neural_network/module
