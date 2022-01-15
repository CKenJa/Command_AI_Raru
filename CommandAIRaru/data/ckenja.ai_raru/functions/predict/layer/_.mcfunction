#> ckenja.ai_raru:predict/layer/_
#
#レイヤーループ
#
# @within function ckenja.ai_raru:predict/module/_

say layer

function ckenja.ai_raru:predict/node/_

#このレイヤーの結果を次のレイヤーの引数に。最初のレイヤーの引数はニューラルネットワークの引数そのまま
data modify storage ckenja.ai_raru.__temp__:predict/layer input set from storage ckenja.ai_raru.__temp__:predict/layer output
data remove storage ckenja.ai_raru.__temp__:predict/layer output

#ループ
data remove storage ckenja.ai_raru.__temp__:predict model.module[-1].layer[-1]
execute if data storage ckenja.ai_raru.__temp__:predict model.module[-1].layer[-1] run function ckenja.ai_raru:predict/layer/_
