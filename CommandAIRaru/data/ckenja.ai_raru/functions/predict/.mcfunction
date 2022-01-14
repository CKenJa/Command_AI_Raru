#> ckenja.ai_raru:predict/
#
# 単純にモデルを実行する
# 1tickで全処理が終わらないとバグる
#
# @input
#   storage ckenja.ai_raru:predict input.model
#       重みとかデータぶち込んだモデル
#   storage ckenja.ai_raru:predict input.matrix
#       タスクのデータ
#
# @output storage ckenja.ai_raru:predict output.matrix
#
# @public

say predict

scoreboard players set #test ckenja.ai_raru 0

#最初のレイヤーの引数にこの関数の引数をそのまま
data modify storage ckenja.ai_raru.__temp__:predict/layer input set from storage ckenja.ai_raru:predict input.matrix

#使い捨てモデルを消しながらループを回す
data modify storage ckenja.ai_raru.__temp__:predict model set from storage ckenja.ai_raru:predict input.model

function ckenja.ai_raru:predict/module/
data modify storage ckenja.ai_raru:predict output.matrix set from storage ckenja.ai_raru.__temp__:predict/layer input

#TODO:outputをdoubleにするなら、誤差が出ると困るから最後にintから変換する