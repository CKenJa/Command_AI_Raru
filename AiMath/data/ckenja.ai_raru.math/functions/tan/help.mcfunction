### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> ckenja.ai_raru.math:help/tan
# #ckenja.ai_raru.math:tanのヘルプを表示します。

tellraw @s {"translate":" === function #ckenja.ai_raru.math:%s ===","color":"aqua","with":["tan"]}
tellraw @s "tanを取得します。角度は度数法で指定します。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(ckenja.ai_raru.math: in)  ","color":"gray"},{"text":"角度","bold":true},{"text":"(int)","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(ckenja.ai_raru.math: out)","color":"gray"},{"text":"tan","bold":true},{"text":"(double)","color":"gray"}]}
