#> ckenja.ai_raru:callback/sum_squadred_error/post
#
#
#
# @within tag/function ckenja.ai_raru:neural_network/layer/post

execute if data storage ckenja.ai_raru.__temp__:neural_network model.module[-1].error_function{id:"sum_squadred_error"} run data remove storage ckenja.ai_raru.__temp__:sum_squadred_error matrix