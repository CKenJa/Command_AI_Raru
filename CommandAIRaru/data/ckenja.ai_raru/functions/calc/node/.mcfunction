#> ckenja.ai_raru:calc/node/
#
#ノードループ
#
# @within function ckenja.ai_raru:calc/layer/

data modify storage ckenja.ai_raru.__temp__:calc/node matrix set from storage ckenja.ai_raru.__temp__:calc/layer input
function ckenja.ai_raru:calc/node/calc

data remove storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1]
#execute store result score #calc.node.number ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node
#execute if score #calc.node.number ckenja.ai_raru matches 1.. run function ckenja.ai_raru:calc/node/
execute if data storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[{}] run function ckenja.ai_raru:calc/node/

say node