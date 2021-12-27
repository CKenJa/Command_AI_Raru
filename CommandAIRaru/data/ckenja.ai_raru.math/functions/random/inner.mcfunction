### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> ckenja.ai_raru.math:random/inner
# 0 から 2147483647 までの乱数を生成します。
# ライブラリ内部で利用する時用。

#define storage ckenja.ai_raru.math:_

execute store result storage ckenja.ai_raru.math:_ random int -2 if predicate ckenja.ai_raru.math:0.5
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2

execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2

execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2

execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 2
execute unless data storage ckenja.ai_raru.math:_ {random:0} if predicate ckenja.ai_raru.math:0.5 store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random 1.0000000001
execute if data storage ckenja.ai_raru.math:_ {random:0} store result storage ckenja.ai_raru.math:_ random int -1 if predicate ckenja.ai_raru.math:0.5

execute if data storage ckenja.ai_raru.math:_ {random:-2147483648} run data modify storage ckenja.ai_raru.math:_ random set value 0
execute store result storage ckenja.ai_raru.math:_ random int 1 run data get storage ckenja.ai_raru.math:_ random -1
