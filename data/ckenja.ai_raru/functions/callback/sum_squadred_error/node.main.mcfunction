#> ckenja.ai_raru:callback/sum_squadred_error/node.main
#
#
#
# @within function ckenja.ai_raru:callback/sum_squadred_error/node

#declare score_holder #squadred_error

#>
#@internal
execute store result score #squadred_error ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:sum_squadred_error matrix[-1]

execute if data storage ckenja.ai_raru.__temp__:neural_network config{learn:true} run function ckenja.ai_raru:callback/sum_squadred_error/diff

scoreboard players operation #squadred_error ckenja.ai_raru -= #node.output ckenja.ai_raru
scoreboard players operation #squadred_error ckenja.ai_raru *= #squadred_error ckenja.ai_raru
scoreboard players operation #squadred_error ckenja.ai_raru /= #20000 ckenja.ai_raru
scoreboard players operation #sum_squadred_error ckenja.ai_raru += #squadred_error ckenja.ai_raru
data remove storage ckenja.ai_raru.__temp__:sum_squadred_error matrix[-1]

scoreboard players reset #squadred_error
