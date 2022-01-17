#> ckenja.ai_raru:wrapper/predict/_
#
# モデルを使って予測させます
#
# @input
#   storage ckenja.ai_raru.__temp__:predict __input__
#       model
#           重みとかデータぶち込んだモデル
#       matrix
#           予測させたいデータ
#
# @output storage ckenja.ai_raru.__temp__:predict __output__.matrix
#
# @public

say predict

#ckenja.ai_raru:function/forwardへの引数。最初のレイヤーの引数はモデルの引数に
data modify storage ckenja.ai_raru.__temp__:neural_network/layer input.matrix set from storage ckenja.ai_raru.__temp__:predict input.matrix

#ckenja.ai_raru:neural_networkへの引数
data modify storage ckenja.ai_raru.__temp__:neural_network config.propagation set value "forward"
data modify storage ckenja.ai_raru.__temp__:neural_network model set from storage ckenja.ai_raru.__temp__:predict input.model

function ckenja.ai_raru:neural_network/_

#ckenja.ai_raru:function/forwardからの戻り値。最後のレイヤーの返り値
data modify storage ckenja.ai_raru.__temp__:predict __output__.matrix set from storage ckenja.ai_raru.__temp__:neural_network/layer __output__.matrix

#TODO:outputをdoubleにするなら、誤差が出ると困るから最後にintから変換する
