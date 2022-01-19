#> ckenja.ai_raru:function/forward/node.post.main
#
#
#
# @within function ckenja.ai_raru:function/forward/node.post

execute store result storage ckenja.ai_raru.__temp__:neural_network/node output int 1 run scoreboard players get #node.output ckenja.ai_raru
data modify storage ckenja.ai_raru.__temp__:neural_network/layer output.matrix append from storage ckenja.ai_raru.__temp__:neural_network/node output

scoreboard players reset #node.output ckenja.ai_raru