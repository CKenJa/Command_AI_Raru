### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> ckenja.ai_raru.math:tan/_
# tanを取得します。角度は度数法で指定します。
## 入力: 角度(int) => storage ckenja.ai_raru.math: in
## 出力: tan(double) => storage ckenja.ai_raru.math: out

# 一時的なスコアボード
scoreboard objectives add AiMath dummy

# 値取得
function ckenja.ai_raru.math:circular/common

# 値を返す
data modify storage ckenja.ai_raru.math: out set from storage ckenja.ai_raru.math:table circular[-4][-4][-4][-4][4]

# スコアボード削除
scoreboard objectives remove AiMath
