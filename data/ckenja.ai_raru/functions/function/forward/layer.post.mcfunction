#> ckenja.ai_raru:function/forward/layer.post
#
#
#
# @within tag/function ckenja.ai_raru:neural_network/layer/post

#このレイヤーの結果を次のレイヤーの引数に。最初のレイヤーの引数はニューラルネットワークの引数そのまま
execute if data storage ckenja.ai_raru.__temp__:neural_network config{propagation:"forward"} run data modify storage ckenja.ai_raru.__temp__:neural_network/layer input.matrix set from storage ckenja.ai_raru.__temp__:neural_network/layer output.matrix