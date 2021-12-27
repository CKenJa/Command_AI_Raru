#> ckenja.ai_raru:calc/
#
# 単純にモデルを実行する
# 1tickで全処理が終わらないとバグる
#
# @input
#   storage ckenja.ai_raru:calc input.model
#       重みとかデータぶち込んだモデル
#   storage ckenja.ai_raru:calc input.matrix
#       タスクのデータ
#
# @output storage ckenja.ai_raru:calc output.matrix
#
# @public

#say calc

scoreboard players set #test ckenja.ai_raru 0

function ckenja.ai_raru.arr_math:reset
data modify storage ckenja.ai_raru.__temp__:calc/layer input set from storage ckenja.ai_raru:calc input.matrix
data modify storage ckenja.ai_raru.__temp__:calc model set from storage ckenja.ai_raru:calc input.model

function ckenja.ai_raru:calc/module/
data modify storage ckenja.ai_raru:calc output.matrix set from storage ckenja.ai_raru.__temp__:calc/layer input
