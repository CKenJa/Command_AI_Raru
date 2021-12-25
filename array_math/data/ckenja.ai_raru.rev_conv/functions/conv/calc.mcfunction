#getting current value
execute store result score current= ckenja.ai_raru.rev_conv.num run data get storage ckenja.ai_raru.rev_conv:main rev[-1]
data remove storage ckenja.ai_raru.rev_conv:main rev[-1]

#math
scoreboard players operation current= ckenja.ai_raru.rev_conv.num *= mult= ckenja.ai_raru.rev_conv.num
scoreboard players operation out= ckenja.ai_raru.rev_conv.num += current= ckenja.ai_raru.rev_conv.num

#prepping for next and looping
execute if data storage ckenja.ai_raru.rev_conv:main rev[0] run scoreboard players operation mult= ckenja.ai_raru.rev_conv.num *= base= ckenja.ai_raru.rev_conv.num
execute if score out= ckenja.ai_raru.rev_conv.num matches 0.. if data storage ckenja.ai_raru.rev_conv:main rev[0] run function ckenja.ai_raru.rev_conv:conv/calc