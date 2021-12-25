#> ckenja.ai_raru:calc/module/
#
#モジュールループ
#
# @within function ckenja.ai_raru:calc/

function ckenja.ai_raru:calc/layer/

data remove storage ckenja.ai_raru.__temp__:calc model.module[-1]
#execute store result score #calc.module.number ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:calc model.module
#execute if score #calc.module.number ckenja.ai_raru matches 1.. run function ckenja.ai_raru:calc/module/
execute if data storage ckenja.ai_raru.__temp__:calc model.module[{}] run function ckenja.ai_raru:calc/module/