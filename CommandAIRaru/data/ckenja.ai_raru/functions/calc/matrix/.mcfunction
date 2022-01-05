#> ckenja.ai_raru:calc/matrix/
#
#行列の積ループ
#
# @within function ckenja.ai_raru:calc/layer/

#計算
execute store result score #calc.matrix.input ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:calc/node matrix[-1]
execute store result score #calc.matrix.weight ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].weight[-1]
scoreboard players operation #calc.matrix.input ckenja.ai_raru *= #calc.matrix.weight ckenja.ai_raru
scoreboard players operation #calc.matrix.input ckenja.ai_raru /= #const.shift.multiply ckenja.ai_raru
#say multiply
#tellraw @a {"nbt":"var1","storage":"ckenja.ai_raru.arr_math:in"}
#say *
#tellraw @a {"nbt":"var2","storage":"ckenja.ai_raru.arr_math:in"}
#say =
#tellraw @a {"nbt":"out","storage":"ckenja.ai_raru.arr_math:main"}

scoreboard players operation #calc.node.output ckenja.ai_raru *= #calc.matrix.input ckenja.ai_raru
#say add
#tellraw @a {"nbt":"var1","storage":"ckenja.ai_raru.arr_math:in"}
#say +
#tellraw @a {"nbt":"var2","storage":"ckenja.ai_raru.arr_math:in"}
#say =
#tellraw @a {"nbt":"out","storage":"ckenja.ai_raru.arr_math:main"}

#ループ
data remove storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].weight[-1]
data remove storage ckenja.ai_raru.__temp__:calc/node matrix[-1]
#execute store result score #calc.matrix.number ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].weight
#execute if score #calc.matrix.number ckenja.ai_raru matches 1.. run function ckenja.ai_raru:calc/matrix/
execute if data storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].weight[{}] run function ckenja.ai_raru:calc/matrix/