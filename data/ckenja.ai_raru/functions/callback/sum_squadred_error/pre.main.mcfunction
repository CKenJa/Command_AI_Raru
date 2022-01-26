#> ckenja.ai_raru:callback/sum_squadred_error/pre.main
#
#
#
# @within function ckenja.ai_raru:callback/sum_squadred_error/pre

scoreboard players reset #sum_squadred_error ckenja.ai_raru
data modify storage ckenja.ai_raru.__temp__:sum_squadred_error matrix set from storage ckenja.ai_raru:sum_squadred_error __input__.matrix
data remove storage ckenja.ai_raru.__temp__:sum_squadred_error diff