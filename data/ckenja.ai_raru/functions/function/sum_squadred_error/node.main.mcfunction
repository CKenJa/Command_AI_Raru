#> ckenja.ai_raru:function/sum_squadred_error/node.main
#
#
#
# @within function ckenja.ai_raru:function/sum_squadred_error/node

#declare score_holder #squadred_error

#>
#@internal
execute store result score #squadred_error ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:sum_squadred_error matrix[-1]
scoreboard players operation #squadred_error ckenja.ai_raru -= #node.output ckenja.ai_raru
scoreboard players operation #squadred_error ckenja.ai_raru *= #squadred_error ckenja.ai_raru
scoreboard players operation #squadred_error ckenja.ai_raru /= #const.scale ckenja.ai_raru
scoreboard players operation #sum_squadred_error ckenja.ai_raru += #squadred_error ckenja.ai_raru
data remove storage ckenja.ai_raru.__temp__:sum_squadred_error matrix[-1]

scoreboard players reset #squadred_error