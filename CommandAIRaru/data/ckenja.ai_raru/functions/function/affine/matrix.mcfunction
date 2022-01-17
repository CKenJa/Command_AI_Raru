#> ckenja.ai_raru:function/affine/matrix
#
#行列の積ループ
#
# @within function ckenja.ai_raru:layer/_

#計算
    execute store result score #affine.input ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:neural_network/node matrix[-1]
    execute store result score #affine.weight ckenja.ai_raru run data get storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1].node[-1].affine.weight[-1]

    say multiply input
    tellraw @a {"score":{"name":"#affine.input","objective":"ckenja.ai_raru"}}
    say *重み
    tellraw @a {"score":{"name":"#affine.weight","objective":"ckenja.ai_raru"}}

    scoreboard players operation #affine.input ckenja.ai_raru *= #affine.weight ckenja.ai_raru
    scoreboard players operation #affine.input ckenja.ai_raru /= #const.scale ckenja.ai_raru

    say =
    tellraw @a {"score":{"name":"#affine.input","objective":"ckenja.ai_raru"}}

    say add 合計
    tellraw @a {"score":{"name":"#affine.output","objective":"ckenja.ai_raru"}}
    say +さっきの
    tellraw @a {"score":{"name":"#affine.input","objective":"ckenja.ai_raru"}}

    scoreboard players operation #affine.output ckenja.ai_raru += #affine.input ckenja.ai_raru
    say =

    tellraw @a {"score":{"name":"#affine.output","objective":"ckenja.ai_raru"}}

#ループ
    data remove storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1].node[-1].affine.weight[-1]
    data remove storage ckenja.ai_raru.__temp__:neural_network/node matrix[-1]

    execute if data storage ckenja.ai_raru.__temp__:neural_network model.module[-1].layer[-1].node[-1].affine.weight[-1] run function ckenja.ai_raru:function/affine/matrix