#> ckenja.ai_raru:function/relu/forward
#
#
#
# @within tag/function ckenja.ai_raru:function/node

execute if data storage ckenja.ai_raru.__temp__:neural_network model.module[-1].activation{id:"relu"} unless score #node.output ckenja.ai_raru matches 1.. run scoreboard players set #node.output ckenja.ai_raru 0