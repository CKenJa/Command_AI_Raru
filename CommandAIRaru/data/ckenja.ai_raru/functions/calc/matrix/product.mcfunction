#> ckenja.ai_raru:calc/matrix/product
#
#
#
# @within function ckenja.ai_raru:calc/matrix/

data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].weight[-1].fpa
data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru.__temp___:calc matrix.matrix[-1].fpa
function ckenja.ai_raru.arr_math:call/multiply

data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.arr_math:main out
data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru.__temp__:calc matrix.output.fpa
function ckenja.ai_raru.arr_math:call/add

data modify storage ckenja.ai_raru.__temp__:calc matrix.output.fpa set from storage ckenja.ai_raru.arr_math:main out