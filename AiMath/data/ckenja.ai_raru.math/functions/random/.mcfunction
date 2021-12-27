### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> ckenja.ai_raru.math:random/
# 0 から 2147483647 までの乱数を生成します。
## 入力: なし
## 出力: 乱数 => storage ckenja.ai_raru.math: out

## 0 から 2147483647 までの乱数をckenja.ai_raru.math: outに入れます

data modify storage ckenja.ai_raru.math: {} merge value {in:[],out:0}
execute store result storage ckenja.ai_raru.math: out int 1 run function ckenja.ai_raru.math:random/inner
