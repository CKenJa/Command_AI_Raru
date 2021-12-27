### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> ckenja.ai_raru.math:dice/
# サイコロを振った結果を返します。ダイスは1024面くらいまで推奨です。
## 入力: NdX(N個のX面ダイス) => storage ckenja.ai_raru.math: in:[N,X]
## 出力: 出目と合計値 => storage ckenja.ai_raru.math: out:{dice:[出目1,出目2,...],sum:合計値}

# 一時的なスコアボード
scoreboard objectives add AiMath dummy

# サイコロの数
data modify storage ckenja.ai_raru.math:_ count set from storage ckenja.ai_raru.math: in[0]
# サイコロの最大値
execute store result score Max AiMath run data get storage ckenja.ai_raru.math: in[1]
# 結果を初期化
scoreboard players set Sum AiMath 0
data modify storage ckenja.ai_raru.math: out set value {dice:[],sum:0}
# サイコロ振る
function ckenja.ai_raru.math:dice/loop

# スコアボード削除
scoreboard objectives remove AiMath
