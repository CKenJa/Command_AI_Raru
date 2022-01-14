#> ckenja.ai_raru:predict/module/
#
#モジュールループ
#
# @within function ckenja.ai_raru:predict/

say module

function ckenja.ai_raru:predict/layer/

data remove storage ckenja.ai_raru.__temp__:predict model.module[-1]
execute if data storage ckenja.ai_raru.__temp__:predict model.module[-1] run function ckenja.ai_raru:predict/module/
