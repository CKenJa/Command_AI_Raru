#> ckenja.ai_raru:callback/model_reverse/layer.main
#
#
#
# @within function ckenja.ai_raru:callback/model_reverse/layer

data modify storage ckenja.ai_raru.__temp__:model_reverse model.module[-1].layer append from storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1]
data remove storage ckenja.ai_raru.__temp__:model_reverse model.module[-1].layer[-1].node