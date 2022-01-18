#> ckenja.ai_raru:wrapper/learn/_
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
#       config
#           設定
#
# @output
#   storage ckenja.ai_raru:learn __output__
#       model
#           訓練したモデル
#       log[-1]
#           今tickのログ
#
# @public

# ランダムな教師データを選んで予測させて誤差を求める
    data modify storage ckenja.ai_raru.__temp__:predict __input__.model set from storage ckenja.ai_raru:learn __input__.model
    data modify storage ckenja.ai_raru.__temp__:predict __input__.matirx set from storage ckenja.ai_raru:learn __input__.matrix
    # 順伝搬しながら逆伝搬用のリストを作成する天才的発想
        data modify storage ckenja.ai_raru.__temp__:neural_network config.list_reverse set value "true"
    function ckenja.ai_raru:wrapper/predict/_

# 逆伝播で勾配を求めつつ値を更新
function ckenja.ai_raru:wrapper/learn/gradient/_

data remove storage ckenja.ai_raru.__temp__:learn __input__.config