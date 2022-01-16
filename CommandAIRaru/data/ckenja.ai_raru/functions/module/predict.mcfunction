#> ckenja.ai_raru:module/predict
#
#モジュールループ
#
# @within function ckenja.ai_raru:predict/_

say module

function ckenja.ai_raru:layer/_

data remove storage ckenja.ai_raru.__temp__:predict model.module[-1]
execute if data storage ckenja.ai_raru.__temp__:predict model.module[-1] run function ckenja.ai_raru:module/_
