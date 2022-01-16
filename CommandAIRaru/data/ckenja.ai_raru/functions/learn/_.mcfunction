#> ckenja.ai_raru:learn/_
#
# モデルを学習させるよ
#
# @input
#   storage ckenja.ai_raru:learn __input__
#       matrix
#           入力
#       answer
#           入力に対する答え
#       model
#           モデル
#
# @output
#   storage ckenja.ai_raru:learn __output__
#       model
#           訓練したモデル
#       log[-1]
#           今tickのログ
#
# @public

#ランダムな教師データを選んで予測させる
data modify storage ckenja.ai_raru:predict __input__.model set from storage ckenja.ai_raru:learn __input__.model
data modify storage ckenja.ai_raru:predict __input__.matirx set from storage ckenja.ai_raru:learn __input__.matrix
function ckenja.ai_raru:predict/_

#誤差を計算
function ckenja.ai_raru:learn/loss/_

#勾配を求めて更新
function ckenja.ai_raru:learn/gradient/_