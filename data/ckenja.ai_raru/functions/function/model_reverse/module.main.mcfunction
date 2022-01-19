#> ckenja.ai_raru:function/model_reverse/module.main
#
#
#
# @within function ckenja.ai_raru:function/model_reverse/module

data modify storage ckenja.ai_raru.__temp__:model_reverse model.module append from storage ckenja.ai_raru.__temp__:neural_network model.module[-1]
data remove storage ckenja.ai_raru.__temp__:model_reverse model.module[-1].layer