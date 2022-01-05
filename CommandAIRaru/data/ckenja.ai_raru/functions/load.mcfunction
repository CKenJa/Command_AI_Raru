#> ckenja.ai_raru:load
#
#
#
# @within tag/function minecraft:load

scoreboard objectives add ckenja.ai_raru dummy
function ckenja.ai_raru.arr_math:setup
scoreboard players set #3072 ckenja.ai_raru 3072

scoreboard players set #const.shift.multiply objective 32768
scoreboard players set #const.shift.division objective 32768
