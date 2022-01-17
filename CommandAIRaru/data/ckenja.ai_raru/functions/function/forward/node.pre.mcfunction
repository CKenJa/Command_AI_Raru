#> ckenja.ai_raru:function/forward/node.pre
#
#
#
# @within tag/function ckenja.ai_raru:neural_network/node/pre

execute if data storage ckenja.ai_raru.__temp__:neural_network config{propagation:"forward"} run data modify storage ckenja.ai_raru.__temp__:neural_network/node matrix set from storage ckenja.ai_raru.__temp__:neural_network/layer __input__.matrix