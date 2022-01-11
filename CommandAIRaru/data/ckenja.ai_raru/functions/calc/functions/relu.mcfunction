#> ckenja.ai_raru:calc/functions/relu
#
#
#
# @within tag/function ckenja.ai_raru:calc/functions/

execute if data storage ckenja.ai_raru.__temp__:calc model.module[-1].activation{id:"relu"} unless score #calc.node.output ckenja.ai_raru matches 1.. run scoreboard players set #calc.node.output ckenja.ai_raru 0