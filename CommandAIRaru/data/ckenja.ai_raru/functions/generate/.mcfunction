#> ckenja.ai_raru:generate/
#
# モデルを作成します
#
# @input
#   score
#       #generate.module ckenja.ai_raru
#       #generate.layer ckenja_ai_raru
#       #generate.node ckenja.ai_raru
#       #generate.input ckenja.ai_raru
#   storage
#       ckenja.ai_raru:generate input.model
#           モジュールの設定とかあらかじめしておいた空っぽのモデルを入れてね
#       ckenja.ai_raru:generate input.config
#           重みやバイアスの初期値の設定方法とか
#
# @output
#   storage
#       ckenja.ai_raru:generate output
#
# @public

#重みの数は、前ノードの数で決める。最初の重みの数は#generate.inputより

#Heの初期値は-√2~√2の範囲になる