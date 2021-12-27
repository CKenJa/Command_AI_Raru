#> ckenja.ai_raru:calc/layer/
#
#レイヤーループ
#
# @within function ckenja.ai_raru:calc/module/

function ckenja.ai_raru:calc/node/
data modify storage ckenja.ai_raru.__temp__:calc/layer input set from storage ckenja.ai_raru.__temp__:calc/layer output
data remove storage ckenja.ai_raru.__temp__:calc/layer output

data remove storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1]
#execute store result score #calc.layer.number ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:calc model.module[-1].layer
#execute if score #calc.layer.number ckenja.ai_raru matches 1.. run function ckenja.ai_raru:calc/layer/
execute if data storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[{}] run function ckenja.ai_raru:calc/layer/

say layer