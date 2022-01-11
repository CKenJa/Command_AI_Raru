#> ckenja.ai_raru:calc/functions/affine/matrix
#
#行列の積ループ
#
# @within function ckenja.ai_raru:calc/layer/

#計算
    execute store result score #calc.matrix.input ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:calc/node matrix[-1]
    execute store result score #calc.matrix.weight ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].affine.weight[-1]

    say multiply input
    tellraw @a {"score":{"name":"#calc.matrix.input","objective":"ckenja.ai_raru"}}
    say *重み
    tellraw @a {"score":{"name":"#calc.matrix.weight","objective":"ckenja.ai_raru"}}

    scoreboard players operation #calc.matrix.input ckenja.ai_raru *= #calc.matrix.weight ckenja.ai_raru
    scoreboard players operation #calc.matrix.input ckenja.ai_raru /= #const.shift.multiply ckenja.ai_raru

    say =
    tellraw @a {"score":{"name":"#calc.matrix.input","objective":"ckenja.ai_raru"}}

    say add 合計
    tellraw @a {"score":{"name":"#calc.node.output","objective":"ckenja.ai_raru"}}
    say +さっきの
    tellraw @a {"score":{"name":"#calc.matrix.input","objective":"ckenja.ai_raru"}}

    scoreboard players operation #calc.node.output ckenja.ai_raru += #calc.matrix.input ckenja.ai_raru
    say =

    tellraw @a {"score":{"name":"#calc.node.output","objective":"ckenja.ai_raru"}}

#ループ
    data remove storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].affine.weight[-1]
    data remove storage ckenja.ai_raru.__temp__:calc/node matrix[-1]

    execute if data storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].affine.weight[-1] run function ckenja.ai_raru:calc/functions/affine/matrix