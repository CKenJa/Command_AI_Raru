### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> ckenja.ai_raru.math:help/random
# #ckenja.ai_raru.math:randomのヘルプを表示します。

tellraw @s {"translate":" === function #ckenja.ai_raru.math:%s ===","color":"aqua","with":["random"]}
tellraw @s "0 から 2147483647 までの乱数を生成します。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(ckenja.ai_raru.math: in)  ","color":"gray"},{"text":"なし","bold":true},{"text":"(-)","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(ckenja.ai_raru.math: out)","color":"gray"},{"text":"乱数","bold":true},{"text":"(int)","color":"gray"}]}
