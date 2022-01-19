#> ckenja.ai_raru:wrapper/learn/wrapper
#
#毎tick前提の学習関数。スケジュールtick使用。
#
# @input
#   storage ckenja.ai_raru.__temp__:learn.wrapper __input__
#       model
#           モデル
#       training
#           訓練データセット
#       test
#           テストデータセット
#
# @output
#   storage ckenja.ai_raru.__temp__:learn __output__
#       model
#           訓練したモデル
#       log
#           学習ログ
#
# @public

#todo: 非常停止ボタンを押さなくても数時間で自然に止まるように

function ckenja.ai_raru:wrapper/learn/_

schedule function ckenja.ai_raru.__temp__:learn/wrapper 1t replace