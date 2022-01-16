#> ckenja.ai_raru:function/relu
#
#
#
# @within tag/function ckenja.ai_raru:function/node

execute if data storage ckenja.ai_raru.__temp__:predict model.module[-1].activation{id:"relu"} unless score #predict.node.output ckenja.ai_raru matches 1.. run scoreboard players set #predict.node.output ckenja.ai_raru 0