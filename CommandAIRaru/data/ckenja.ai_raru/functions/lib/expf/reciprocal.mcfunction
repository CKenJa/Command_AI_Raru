#> ckenja.ai_raru:lib/expf/reciprocal
#
# 負の値のinputなら逆数にします
#
# @within function ckenja.ai_raru:lib/expf/

data modify storage ckenja.ai_raru.arr_math:in var1 set value {dec:0,num:[1],pol:1,base:10}
data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru.arr_math:main out
function ckenja.ai_raru.arr_math:call/divide