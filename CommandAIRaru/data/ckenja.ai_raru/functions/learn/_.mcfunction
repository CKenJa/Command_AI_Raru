#> ckenja.ai_raru:learn/_
#
# モデルを学習させるよ
#
# @input
#   storage ckenja.ai_raru:learn input.matrix
#       入力
#   storage ckenja.ai_raru:learn input.answer
#       入力に対する答え
#   storage ckenja.ai_raru:learn input.model
#       モデル
#
# @output
#   storage ckenja.ai_raru:learn output.model
#   storage ckenja.ai_raru:learn output.log
#
# @public

#ランダムな教師データを選んで予測させる
data modify storage ckenja.ai_raru:predict input.model set from storage ckenja.ai_raru:learn input.model
data modify storage ckenja.ai_raru:predict input.matirx set from storage ckenja.ai_raru:learn input.matrix
function ckenja.ai_raru:predict/_

#誤差を計算
function ckenja.ai_raru:learn/loss/_

#勾配を求めて更新
function #ckenja.ai_raru:learn/gradient