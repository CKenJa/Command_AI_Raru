#> ckenja.ai_raru:function/list_reverse/module
#
#
#
# @within tag/function ckenja.ai_raru:neural_network/module/pre


execute if data storage ckenja.ai_raru.__temp__:neural_network config{list_reverse:true} run data modify storage ckenja.ai_raru.__temp__:list_reverse model.module append from storage ckenja.ai_raru.__temp__:neural_network model.module[-1]