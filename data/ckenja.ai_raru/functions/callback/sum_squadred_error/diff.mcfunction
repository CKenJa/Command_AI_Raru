#> ckenja.ai_raru:callback/sum_squadred_error/diff
#
#
#
# @within function ckenja.ai_raru:callback/sum_squadred_error/node.main

#> squadred_diff
#@private
scoreboard players operation #squadred_diff ckenja.ai_raru = #node.output ckenja.ai_raru
scoreboard players operation #squadred_diff ckenja.ai_raru -= #squadred_error ckenja.ai_raru
execute store result storage ckenja.ai_raru.__temp__:sum_squadred_error diff int 1 run scoreboard players get #squadred_diff ckenja.ai_raru