#> ckenja.ai_raru:function/forward/layer.pre
#
#
#
# @within tag/function ckenja.ai_raru:neural_network/layer/pre


execute if data storage ckenja.ai_raru.__temp__:neural_network config{propagation:"forward"} run data remove storage ckenja.ai_raru.__temp__:neural_network/layer output
