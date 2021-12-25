#> ckenja.ai_raru:calc/matrix/
#
#行列の積ループ
#
# @within function ckenja.ai_raru:calc/layer/

function ckenja.ai_raru:calc/matrix/product

data remove storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].weight[-1]
data remove storage ckenja.ai_raru.__temp___:calc input.matrix[-1]
#execute store result score #calc.matrix.number ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].weight
#execute if score #calc.matrix.number ckenja.ai_raru matches 1.. run function ckenja.ai_raru:calc/matrix/
execute if data storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].weight[{}] run function ckenja.ai_raru:calc/matrix/