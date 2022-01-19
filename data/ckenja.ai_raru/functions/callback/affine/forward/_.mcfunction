#> ckenja.ai_raru:callback/affine/forward/_
#
# 内積。アファイン変換?
#
# @within tag/function ckenja.ai_raru:neural_network/node/_

execute if data storage ckenja.ai_raru.__temp__:neural_network config{propagation:"forward"} if data storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1].node[-1].affine run function ckenja.ai_raru:callback/affine/forward/main