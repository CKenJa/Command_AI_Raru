#setting up values and clearing data
scoreboard players set mult= ckenja.ai_raru.rev_conv.num 1
scoreboard players set out= ckenja.ai_raru.rev_conv.num 0
data modify storage ckenja.ai_raru.rev_conv:main rev set from storage ckenja.ai_raru.rev_conv:main in

#doing calculation
function ckenja.ai_raru.rev_conv:conv/calc

execute store result storage ckenja.ai_raru.rev_conv:main out int 1 run scoreboard players get out= ckenja.ai_raru.rev_conv.num