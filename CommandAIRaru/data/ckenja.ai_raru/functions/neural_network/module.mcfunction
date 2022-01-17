#> ckenja.ai_raru:neural_network/module
#
#モジュールループ
#
# @within function ckenja.ai_raru:neural_network/-

say module

function #ckenja.ai_raru:neural_network/module/internal

data remove storage ckenja.ai_raru.__temp__:neural_network model.module[-1]
execute if data storage ckenja.ai_raru.__temp__:neural_network model.module[-1] run function ckenja.ai_raru:neural_network/module
