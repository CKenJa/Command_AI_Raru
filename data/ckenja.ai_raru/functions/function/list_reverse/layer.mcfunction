#> ckenja.ai_raru:function/list_reverse/layer
#
#
#
# @within tag/function ckenja.ai_raru:neural_network/layer/pre

execute if data storage ckenja.ai_raru.__temp__:neural_network config{list_reverse:true} run data modify storage ckenja.ai_raru.__temp__:list_reverse model.module[-1].layer append from storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1]