#> ckenja.ai_raru:wrapper/predict
#
# モデルを使って予測させます
# 1tickで全処理が終わらないとバグりそう
#
# @input
#   storage ckenja.ai_raru:predict __input__
#       model
#           重みとかデータぶち込んだモデル
#       matrix
#           予測させたいデータ
#
# @output storage ckenja.ai_raru:predict __output__.matrix
#
# @public

say predict

#最初のレイヤーの引数にこの関数の引数をそのまま
data modify storage ckenja.ai_raru.__temp__:neural_network/layer __input__.matrix set from storage ckenja.ai_raru:predict __input__.matrix

#使い捨てモデルを消しながらループを回す
data modify storage ckenja.ai_raru.__temp__:neural_network model set from storage ckenja.ai_raru:predict __input__.model

function ckenja.ai_raru:neural_network/_

data modify storage ckenja.ai_raru:predict __output__.matrix set from storage ckenja.ai_raru.__temp__:neural_network/layer __output__.matrix

#TODO:outputをdoubleにするなら、誤差が出ると困るから最後にintから変換する

