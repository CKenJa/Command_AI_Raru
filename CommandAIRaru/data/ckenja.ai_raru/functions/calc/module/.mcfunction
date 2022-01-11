#> ckenja.ai_raru:calc/module/
#
#モジュールループ
#
# @within function ckenja.ai_raru:calc/

say module

function ckenja.ai_raru:calc/layer/

data remove storage ckenja.ai_raru.__temp__:calc model.module[-1]
execute if data storage ckenja.ai_raru.__temp__:calc model.module[-1] run function ckenja.ai_raru:calc/module/
