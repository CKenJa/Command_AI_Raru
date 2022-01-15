#> ckenja.ai_raru:learn/_
#
# モデルを学習させるよ
#
# @input
#   storage ckenja.ai_raru:learn input.model
#       モデル
#   storage ckenja.ai_raru:learn input.training
#       訓練データセット
#   storage ckenja.ai_raru:learn input.test
#       テストデータセット
#
# @output
#   storage ckenja.ai_raru:learn output.model
#   storage ckenja.ai_raru:learn output.log
#
# @public

#ループ前提じゃないので、ラッパーを実装すること

#ランダムな教師データを選んで予測させる
data modify storage ckenja.ai_raru:predict input.model set from storage ckenja.ai_raru:learn input.model
function ckenja.ai_raru:predict/_

#誤差を計算

function ckenja.ai_raru:learn/loss/_

#勾配を求めて更新

function ckenja.ai_raru:learn/gradient/