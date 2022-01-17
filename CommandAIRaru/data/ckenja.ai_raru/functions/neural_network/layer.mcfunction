#> ckenja.ai_raru:neural_network/layer
#
#レイヤーループ
#
# @within function ckenja.ai_raru:neural_network/module

say layer

data remove storage ckenja.ai_raru.__temp__:neural_network/layer __output__

function #ckenja.ai_raru:neural_network/layer/pre
function ckenja.ai_raru:neural_network/node
function #ckenja.ai_raru:neural_network/layer/post

#このレイヤーの結果を次のレイヤーの引数に。最初のレイヤーの引数はニューラルネットワークの引数そのまま
data modify storage ckenja.ai_raru.__temp__:neural_network/layer __input__.matrix set from storage ckenja.ai_raru.__temp__:neural_network/layer __output__

#ループ
data remove storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1]
execute if data storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1] run function ckenja.ai_raru:neural_network/layer
