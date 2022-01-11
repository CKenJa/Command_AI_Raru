#> ckenja.ai_raru:calc/node/calc
#
# ノード全部にやる処理
#
# @within function ckenja.ai_raru:calc/node/

say node/calc

data modify storage ckenja.ai_raru.__temp__:calc/node matrix set from storage ckenja.ai_raru.__temp__:calc/layer input
scoreboard players add #test ckenja.ai_raru 1

#先にバイアスを加算して
execute store result score #calc.node.output ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].bias
#インプットのループ回して行列の積を求める
function ckenja.ai_raru:calc/matrix/
say matrix multiply
tellraw @a {"score":{"name":"#calc.node.output","objective":"ckenja.ai_raru"}}


#んで活性化関数の適用。ここでは単純なReLU
execute if data storage ckenja.ai_raru.__temp__:calc model.module[-1].activation{id:"relu"} unless score #calc.node.output ckenja.ai_raru matches 1.. run scoreboard players set #calc.node.output ckenja.ai_raru 0
say relu
tellraw @a {"score":{"name":"#calc.node.output","objective":"ckenja.ai_raru"}}

#アウトプットにぶち込めー
#ここはappendでもinisertでも統一されていれば問題ない
execute store result storage ckenja.ai_raru.__temp__:calc/node output int 1 run scoreboard players get #calc.node.output ckenja.ai_raru
data modify storage ckenja.ai_raru.__temp__:calc/layer output append from storage ckenja.ai_raru.__temp__:calc/node output