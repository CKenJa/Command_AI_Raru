#> ckenja.ai_raru:neural_network/_
#
# ニューラルネットワークのノードを順番にたどります
# ラッパー関数からの実行推奨(inputは消し飛ばすので)
#
# @input storage ckenja.ai_raru.__temp__:neural_network
#       model
#           モデル
#       config
#          実行時の設定
#
# @public

execute if data storage ckenja.ai_raru.__temp__:neural_network config{propagation:"forward"} run function #ckenja.ai_raru:neural_network/forward/internal
execute if data storage ckenja.ai_raru.__temp__:neural_network config{propagation:"backward"} run function #ckenja.ai_raru:neural_network/backward/internal

data remove storage ckenja.ai_raru.__temp__:neural_network config
data remove storage ckenja.ai_raru.__temp__:neural_network model