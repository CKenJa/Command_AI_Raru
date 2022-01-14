#> ckenja.ai_raru:predict/functions/relu
#
#
#
# @within tag/function ckenja.ai_raru:predict/functions/

execute if data storage ckenja.ai_raru.__temp__:predict model.module[-1].activation{id:"relu"} unless score #predict.node.output ckenja.ai_raru matches 1.. run scoreboard players set #predict.node.output ckenja.ai_raru 0