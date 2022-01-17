#> ckenja.ai_raru:neural_network/node
#
#ノードループ
#
# @within function ckenja.ai_raru:neural_network/layer

say node

data modify storage ckenja.ai_raru.__temp__:neural_network/node matrix set from storage ckenja.ai_raru.__temp__:neural_network/layer __input__.matrix

function #ckenja.ai_raru:neural_network/node

#アウトプットにぶち込めー
#ここはappendでもinisertでも統一されていれば問題ない
execute store result storage ckenja.ai_raru.__temp__:neural_network/node __output__ int 1 run scoreboard players get #node.output ckenja.ai_raru
data modify storage ckenja.ai_raru.__temp__:neural_network/layer __output__ append from storage ckenja.ai_raru.__temp__:neural_network/node __output__

data remove storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1].node[-1]
execute if data storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1].node[-1] run function ckenja.ai_raru:neural_network/node

scoreboard players reset #node.output ckenja.ai_raru