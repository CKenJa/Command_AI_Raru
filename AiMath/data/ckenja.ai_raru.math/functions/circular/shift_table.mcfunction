### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> ckenja.ai_raru.math:circular/shift_table
# 角度に合わせて三角関数テーブルをずらします。

# 角度保存
execute store result storage ckenja.ai_raru.math:_ angle int 1 run scoreboard players get Angle AiMath

# テーブルがまだ読み込まれていなければ初期化
execute unless data storage ckenja.ai_raru.math:table circular run function ckenja.ai_raru.math:circular/init_table

# テーブルシフト解除
data remove storage ckenja.ai_raru.math:table circular[-4][-4][-4][6]
data remove storage ckenja.ai_raru.math:table circular[-4][-4][-4][5]
data remove storage ckenja.ai_raru.math:table circular[-4][-4][-4][4]
data remove storage ckenja.ai_raru.math:table circular[-4][-4][6]
data remove storage ckenja.ai_raru.math:table circular[-4][-4][5]
data remove storage ckenja.ai_raru.math:table circular[-4][-4][4]
data remove storage ckenja.ai_raru.math:table circular[-4][6]
data remove storage ckenja.ai_raru.math:table circular[-4][5]
data remove storage ckenja.ai_raru.math:table circular[-4][4]
data remove storage ckenja.ai_raru.math:table circular[6]
data remove storage ckenja.ai_raru.math:table circular[5]
data remove storage ckenja.ai_raru.math:table circular[4]

# テーブルシフト
execute store result score _ AiMath run data get storage ckenja.ai_raru.math:_ angle 8388608
# ↑ここはオーバーフローさせちゃだめ
scoreboard players operation _ AiMath += _ AiMath
execute if score _ AiMath matches ..-1 run data modify storage ckenja.ai_raru.math:table circular append from storage ckenja.ai_raru.math:table empty_list2[]
scoreboard players operation _ AiMath += _ AiMath
execute if score _ AiMath matches ..-1 run data modify storage ckenja.ai_raru.math:table circular append value []
scoreboard players operation _ AiMath += _ AiMath
execute if score _ AiMath matches ..-1 run data modify storage ckenja.ai_raru.math:table circular[-4] append from storage ckenja.ai_raru.math:table empty_list2[]
scoreboard players operation _ AiMath += _ AiMath
execute if score _ AiMath matches ..-1 run data modify storage ckenja.ai_raru.math:table circular[-4] append value []
scoreboard players operation _ AiMath += _ AiMath
execute if score _ AiMath matches ..-1 run data modify storage ckenja.ai_raru.math:table circular[-4][-4] append from storage ckenja.ai_raru.math:table empty_list2[]
scoreboard players operation _ AiMath += _ AiMath
execute if score _ AiMath matches ..-1 run data modify storage ckenja.ai_raru.math:table circular[-4][-4] append value []
scoreboard players operation _ AiMath += _ AiMath
execute if score _ AiMath matches ..-1 run data modify storage ckenja.ai_raru.math:table circular[-4][-4][-4] append from storage ckenja.ai_raru.math:table empty_list2[]
scoreboard players operation _ AiMath += _ AiMath
execute if score _ AiMath matches ..-1 run data modify storage ckenja.ai_raru.math:table circular[-4][-4][-4] append value []
