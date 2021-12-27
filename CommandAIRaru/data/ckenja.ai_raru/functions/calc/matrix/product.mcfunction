#> ckenja.ai_raru:calc/matrix/product
#
#
#
# @within function ckenja.ai_raru:calc/matrix/

data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].weight[-1]
data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru.__temp__:calc/node matrix[-1]
function ckenja.ai_raru.arr_math:call/multiply
#say multiply
#tellraw @a {"nbt":"var1","storage":"ckenja.ai_raru.arr_math:in"}
#say *
#tellraw @a {"nbt":"var2","storage":"ckenja.ai_raru.arr_math:in"}
#say =
#tellraw @a {"nbt":"out","storage":"ckenja.ai_raru.arr_math:main"}

data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.arr_math:main out
data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru.__temp__:calc/matrix output
function ckenja.ai_raru.arr_math:call/add
#say add
#tellraw @a {"nbt":"var1","storage":"ckenja.ai_raru.arr_math:in"}
#say +
#tellraw @a {"nbt":"var2","storage":"ckenja.ai_raru.arr_math:in"}
#say =
#tellraw @a {"nbt":"out","storage":"ckenja.ai_raru.arr_math:main"}

data modify storage ckenja.ai_raru.__temp__:calc/matrix output set from storage ckenja.ai_raru.arr_math:main out