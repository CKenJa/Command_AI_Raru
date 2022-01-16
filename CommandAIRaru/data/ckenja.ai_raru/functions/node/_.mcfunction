#> ckenja.ai_raru:node/_
#
#ノードループ
#
# @within function ckenja.ai_raru:layer/_

say node

data modify storage ckenja.ai_raru.__temp__:node matrix set from storage ckenja.ai_raru.__temp__:layer __input__.matrix
scoreboard players add #test ckenja.ai_raru 1

function #ckenja.ai_raru:function

#アウトプットにぶち込めー
#ここはappendでもinisertでも統一されていれば問題ない
execute store result storage ckenja.ai_raru.__temp__:node __output__ int 1 run scoreboard players get #predict.node.output ckenja.ai_raru
data modify storage ckenja.ai_raru.__temp__:layer __output__ append from storage ckenja.ai_raru.__temp__:node __output__

data remove storage ckenja.ai_raru.__temp__:predict model.module[-1].layer[-1].node[-1]
execute if data storage ckenja.ai_raru.__temp__:predict model.module[-1].layer[-1].node[-1] run function ckenja.ai_raru:node/_
