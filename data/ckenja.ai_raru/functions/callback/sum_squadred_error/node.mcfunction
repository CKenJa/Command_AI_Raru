#> ckenja.ai_raru:callback/sum_squadred_error/node
#
#
#
# @within tag/function ckenja.ai_raru:callback/error_function

execute if data storage ckenja.ai_raru.__temp__:neural_network config{propagation:"forward"} if data storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1].config{error_function:"sum_squadred_error"} run function ckenja.ai_raru:callback/sum_squadred_error/node.main