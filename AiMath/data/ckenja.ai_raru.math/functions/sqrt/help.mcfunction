### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> ckenja.ai_raru.math:help/sqrt
# #ckenja.ai_raru.math:sqrtのヘルプを表示します。

tellraw @s {"translate":" === function #ckenja.ai_raru.math:%s ===","color":"aqua","with":["sqrt"]}
tellraw @s "平方根を求めます。入力は0.00000001(一億分の一)から100000000(一億)まで。結果は有効数字4桁です。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(ckenja.ai_raru.math: in)  ","color":"gray"},{"text":"実数","bold":true},{"text":"(double)","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(ckenja.ai_raru.math: out)","color":"gray"},{"text":"平方根","bold":true},{"text":"(double)","color":"gray"}]}
