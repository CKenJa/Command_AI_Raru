### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> ckenja.ai_raru.math:help/dice
# #ckenja.ai_raru.math:diceのヘルプを表示します。

tellraw @s {"translate":" === function #ckenja.ai_raru.math:%s ===","color":"aqua","with":["dice"]}
tellraw @s "ダイスを振った結果を返します。ダイスは1024面くらいまで推奨です。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(ckenja.ai_raru.math: in)       ","color":"gray"},{"text":"N個のX面ダイス[N,X]","bold":true},{"text":"([int, int])","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(ckenja.ai_raru.math: out.dice)","color":"gray"},{"text":"出目[1個目, 2個目, ...]","bold":true},{"text":"([int, int, ...])","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(ckenja.ai_raru.math: out.sum)","color":"gray"},{"text":"合計値","bold":true},{"text":"(int)","color":"gray"}]}
