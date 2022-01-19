#> ckenja.ai_raru:function/leaky_relu/forward
#
#
#
# @within tag/function ckenja.ai_raru:neural_network/node/_

execute if data storage ckenja.ai_raru.__temp__:neural_network model.module[-1].activation{id:"leaky_relu"} unless score #node.output ckenja.ai_raru matches 1.. run scoreboard players operation #node.output ckenja.ai_raru /= #100 ckenja.ai_raru