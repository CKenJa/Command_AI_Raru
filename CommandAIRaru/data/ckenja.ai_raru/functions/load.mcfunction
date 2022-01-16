#> ckenja.ai_raru:load
#
#
#
# @within tag/function minecraft:load

scoreboard objectives add ckenja.ai_raru dummy

#>
# マジックナンバー20000/12で二進数でシンプルなヤツ
#@within function ckenja.ai_raru/gauss_rnd/expf/_
scoreboard players set #9984 ckenja.ai_raru 9984

#>
# 正負逆転用
#@within function ckenja.ai_raru/lib/expf/_
scoreboard players set #-1 ckenja.ai_raru -1

#>
# #const.scale*2
#@within function ckenja.ai_raru/lib/he.initialization/_
scoreboard players set #20000 ckenja.ai_raru 20000

scoreboard players set #const.scale ckenja.ai_raru 10000
scoreboard players set #const.sqrt.scale ckenja.ai_raru 100
