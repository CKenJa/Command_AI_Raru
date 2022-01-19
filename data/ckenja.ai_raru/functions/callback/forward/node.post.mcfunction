#> ckenja.ai_raru:callback/forward/node.post
#
#
#
# @within tag/function ckenja.ai_raru:neural_network/node/post

#アウトプットにぶち込めー
#ここはappendでもinisertでも統一されていれば問題ない
execute if data storage ckenja.ai_raru.__temp__:neural_network config{propagation:"forward"} run function ckenja.ai_raru:callback/forward/node.post.main
