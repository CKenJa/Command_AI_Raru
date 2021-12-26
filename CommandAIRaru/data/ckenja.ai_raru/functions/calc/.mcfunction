#> ckenja.ai_raru:calc/
#
#重みとかを使ってタスクをこなすよ
#とりあえず1tickで終わらせられる前提だよ
#
#@input
#   storage ckenja.ai_raru:calc input.model
#       重みとかデータぶち込んだモデル
#   storage ckenja.ai_raru:calc input.matrix
#       タスクのデータ
#
#@output storage ckenja.ai_raru:calc output
#
#@public
function ckenja.ai_raru.arr_math:reset
scoreboard players set #test ckenja.ai_raru 0
data modify storage ckenja.ai_raru.__temp___:calc input.matrix set from storage ckenja.ai_raru:calc input.matrix
#data modify storage ckenja.ai_raru.__temp___:calc output.matrix set from storage ckenja.ai_raru.__temp___:calc input.matrix

data modify storage ckenja.ai_raru.__temp__:calc model set from storage ckenja.ai_raru:calc input.model
function ckenja.ai_raru:calc/layer/