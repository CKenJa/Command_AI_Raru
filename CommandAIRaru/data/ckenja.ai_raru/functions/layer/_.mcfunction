#> ckenja.ai_raru:layer/_
#
#レイヤーループ
#
# @within function ckenja.ai_raru:module/_

say layer

data remove storage ckenja.ai_raru.__temp__:layer __output__
function ckenja.ai_raru:node/_

#このレイヤーの結果を次のレイヤーの引数に。最初のレイヤーの引数はニューラルネットワークの引数そのまま
data modify storage ckenja.ai_raru.__temp__:layer __input__.matrix set from storage ckenja.ai_raru.__temp__:layer __output__

#ループ
data remove storage ckenja.ai_raru.__temp__:predict model.module[-1].layer[-1]
execute if data storage ckenja.ai_raru.__temp__:predict model.module[-1].layer[-1] run function ckenja.ai_raru:layer/_
