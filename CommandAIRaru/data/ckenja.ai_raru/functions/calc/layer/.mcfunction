#> ckenja.ai_raru:calc/layer/
#
#レイヤーループ
#
# @within function ckenja.ai_raru:calc/module/

data modify storage ckenja.ai_raru.__temp__:calc matrix.matrix set from storage ckenja.ai_raru.__temp__:calc output.matrix
function ckenja.ai_raru:calc/node/

data remove storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1]
#execute store result score #calc.layer.number ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:calc model.module[-1].layer
#execute if score #calc.layer.number ckenja.ai_raru matches 1.. run function ckenja.ai_raru:calc/layer/
execute if data storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[{}] run function ckenja.ai_raru:calc/layer/