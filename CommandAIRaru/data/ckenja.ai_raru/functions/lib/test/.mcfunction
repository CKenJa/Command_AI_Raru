#> ckenja.ai_raru:lib/test/
#
#
#
# @public

data modify storage ckenja.ai_raru.math: in set value [6,1024]
function #ckenja.ai_raru.math:dice
execute store result score in= ckenja.ai_raru.arr_math.main run data get storage ckenja.ai_raru.math: out.sum
tellraw @a {"nbt":"out.sum","storage":"ckenja.ai_raru.math:"}
function ckenja.ai_raru.arr_math:call/scoreboard/import
tellraw @a {"nbt":"out","storage":"ckenja.ai_raru.arr_math:main"}
#data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.arr_math:main out
#data modify storage ckenja.ai_raru.arr_math:in var2 set value {dec:0,num:[2,5,6],pol:1,base:10}
#function ckenja.ai_raru.arr_math:call/divide
#tellraw @a {"nbt":"out","storage":"ckenja.ai_raru.arr_math:main"}

summon minecraft:falling_block 0 100 0 {BlockState:{Name:"minecraft:smooth_stone"},Time:1,Tags:["ckenja.ai_raru.test"]}
data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.arr_math:main out
#function ckenja.ai_raru.arr_math:call/convert/flatten
function ckenja.ai_raru.arr_math:call/scoreboard/export
scoreboard players set #test ckenja.ai_raru 256
scoreboard players operation out= ckenja.ai_raru.arr_math.main /= #test ckenja.ai_raru
#data modify entity @e[tag=ckenja.ai_raru.test,limit=1] Pos[0] set from storage ckenja.ai_raru.arr_math:main out.num
execute store result entity @e[tag=ckenja.ai_raru.test,limit=1] Pos[0] double 2 run scoreboard players get out= ckenja.ai_raru.arr_math.main
tag @e[tag=ckenja.ai_raru.test,limit=1] remove ckenja.ai_raru.test