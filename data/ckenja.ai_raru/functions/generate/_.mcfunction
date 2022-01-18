#> ckenja.ai_raru:generate/_
#
# モデルを作成します。完成してないししばらく作る気にもなれない
#
# @input
#   score
#       #generate.module ckenja.ai_raru
#       #generate.layer ckenja_ai_raru
#       #generate.node ckenja.ai_raru
#       #generate.input ckenja.ai_raru
#           inputされる行列のサイズ
#   storage ckenja.ai_raru:generate __input__
#       model
#           モジュールの設定とかあらかじめしておいた空っぽのモデルを入れてね
#       config
#           ノード数や初期値などの設定方法とか
#
# @output
#   storage ckenja.ai_raru:generate __output__.model
#       生成したモデル
#
# @public

data modify storage ckenja.ai_raru.__temp__:generate model set from storage ckenja.ai_raru:generate __input__.model
#function ckenja.ai_raru:generate/neural_network/module/_


#重みの数は、前ノードの数で決める。最初の重みの数は#generate.inputより
