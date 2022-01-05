#> ckenja.ai_raru:calc/matrix/
#
#行列の積ループ
#
# @within function ckenja.ai_raru:calc/layer/

#計算
    #say multiply input
    #tellraw @a {"score":{"name":"ckenja.ai_raru","objective":"#calc.matrix.input"}}
    #say *重み
    #tellraw @a {"score":{"name":"ckenja.ai_raru","objective":"#calc.matrix.weight"}}
    execute store result score #calc.matrix.input ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:calc/node matrix[-1]
    execute store result score #calc.matrix.weight ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].weight[-1]
    scoreboard players operation #calc.matrix.input ckenja.ai_raru *= #calc.matrix.weight ckenja.ai_raru
    scoreboard players operation #calc.matrix.input ckenja.ai_raru /= #const.shift.multiply ckenja.ai_raru
    #say =
    #tellraw @a {"score":{"name":"ckenja.ai_raru","objective":"#calc.matrix.input"}}

    #say add 合計
    #tellraw @a {"score":{"name":"ckenja.ai_raru","objective":"#calc.node.output"}}
    #say +さっきの
    #tellraw @a {"score":{"name":"ckenja.ai_raru","objective":"#calc.matrix.input"}}
    scoreboard players operation #calc.node.output ckenja.ai_raru += #calc.matrix.input ckenja.ai_raru
    #say =
    #tellraw @a {"score":{"name":"ckenja.ai_raru","objective":"#calc.node.output"}}

#ループ
    data remove storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].weight[-1]
    data remove storage ckenja.ai_raru.__temp__:calc/node matrix[-1]
    #execute store result score #calc.matrix.number ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].weight
    #execute if score #calc.matrix.number ckenja.ai_raru matches 1.. run function ckenja.ai_raru:calc/matrix/
    execute if data storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].weight[{}] run function ckenja.ai_raru:calc/matrix/