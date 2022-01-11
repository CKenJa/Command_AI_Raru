#> ckenja.ai_raru:calc/node/calc
#
# ノード全部にやる処理
#
# @within function ckenja.ai_raru:calc/node/

say node/calc

data modify storage ckenja.ai_raru.__temp__:calc/node matrix set from storage ckenja.ai_raru.__temp__:calc/layer input
scoreboard players add #test ckenja.ai_raru 1

function #ckenja.ai_raru:calc/functions/

#アウトプットにぶち込めー
#ここはappendでもinisertでも統一されていれば問題ない
execute store result storage ckenja.ai_raru.__temp__:calc/node output int 1 run scoreboard players get #calc.node.output ckenja.ai_raru
data modify storage ckenja.ai_raru.__temp__:calc/layer output append from storage ckenja.ai_raru.__temp__:calc/node output