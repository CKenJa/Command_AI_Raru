#> ckenja.ai_raru:generate/
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

data modify storage ckenja.ai_raru.__temp__:generate model set from storage ckenja.ai_raru:predict input.model
function ckenja.ai_raru:generate/module/


#重みの数は、前ノードの数で決める。最初の重みの数は#generate.inputより
