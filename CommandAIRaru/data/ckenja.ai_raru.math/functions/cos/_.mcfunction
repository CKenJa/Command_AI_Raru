### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> ckenja.ai_raru.math:cos/_
# cosを取得します。角度は度数法で指定します。
## 入力: 角度(int) => storage ckenja.ai_raru.math: in
## 出力: cos(double) => storage ckenja.ai_raru.math: out

# 一時的なスコアボード
scoreboard objectives add AiMath dummy

# 値取得
function ckenja.ai_raru.math:circular/common

# 値を返す
execute if score Angle360 AiMath matches ..179 run data modify storage ckenja.ai_raru.math: out set from storage ckenja.ai_raru.math:table circular[-4][-4][-4][-4][2]
execute if score Angle360 AiMath matches 180.. run data modify storage ckenja.ai_raru.math: out set from storage ckenja.ai_raru.math:table circular[-4][-4][-4][-4][3]

# スコアボード削除
scoreboard objectives remove AiMath
