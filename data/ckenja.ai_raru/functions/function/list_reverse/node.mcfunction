#> ckenja.ai_raru:function/list_reverse/node
#
#
#
# @within tag/function ckenja.ai_raru:neural_network/node/pre


execute if data storage ckenja.ai_raru.__temp__:neural_network config{list_reverse:true} run data modify storage ckenja.ai_raru.__temp__:list_reverse model.module[-1].layer[-1].node append from storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1].node[-1]