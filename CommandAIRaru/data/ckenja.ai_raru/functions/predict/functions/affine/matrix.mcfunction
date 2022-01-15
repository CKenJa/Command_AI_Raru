#> ckenja.ai_raru:predict/functions/affine/matrix
#
#行列の積ループ
#
# @within function ckenja.ai_raru:predict/layer/_

#計算
    execute store result score #predict.matrix.input ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:predict/node matrix[-1]
    execute store result score #predict.matrix.weight ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:predict model.module[-1].layer[-1].node[-1].affine.weight[-1]

    say multiply input
    tellraw @a {"score":{"name":"#predict.matrix.input","objective":"ckenja.ai_raru"}}
    say *重み
    tellraw @a {"score":{"name":"#predict.matrix.weight","objective":"ckenja.ai_raru"}}

    scoreboard players operation #predict.matrix.input ckenja.ai_raru *= #predict.matrix.weight ckenja.ai_raru
    scoreboard players operation #predict.matrix.input ckenja.ai_raru /= #const.scale ckenja.ai_raru

    say =
    tellraw @a {"score":{"name":"#predict.matrix.input","objective":"ckenja.ai_raru"}}

    say add 合計
    tellraw @a {"score":{"name":"#predict.node.output","objective":"ckenja.ai_raru"}}
    say +さっきの
    tellraw @a {"score":{"name":"#predict.matrix.input","objective":"ckenja.ai_raru"}}

    scoreboard players operation #predict.node.output ckenja.ai_raru += #predict.matrix.input ckenja.ai_raru
    say =

    tellraw @a {"score":{"name":"#predict.node.output","objective":"ckenja.ai_raru"}}

#ループ
    data remove storage ckenja.ai_raru.__temp__:predict model.module[-1].layer[-1].node[-1].affine.weight[-1]
    data remove storage ckenja.ai_raru.__temp__:predict/node matrix[-1]

    execute if data storage ckenja.ai_raru.__temp__:predict model.module[-1].layer[-1].node[-1].affine.weight[-1] run function ckenja.ai_raru:predict/functions/affine/matrix