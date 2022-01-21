#> ckenja.ai_raru:callback/relu/forward
#
#
#
# @within tag/function ckenja.ai_raru:callback/activation

execute if data storage ckenja.ai_raru.__temp__:neural_network model.module[-1].activation{id:"relu"} unless score #node.output ckenja.ai_raru matches 1.. run scoreboard players set #node.output ckenja.ai_raru 0