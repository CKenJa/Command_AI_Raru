#> ckenja.ai_raru:calc/
#
#重みとかを使ってタスクをこなすよ
#
#@input
#   storage ckenja.ai_raru:calc input.model
#       重みとかデータぶち込んだモデル
#   storage ckenja.ai_raru:calc input.data
#       タスクのデータ
#
#@output storage ckenja.ai_raru:calc output
#
#@public

data modify storage ckenja.ai_raru.__temp__:calc model set from storage ckenja.ai_raru:calc input.model
function ckenja.ai_raru:calc/layer/