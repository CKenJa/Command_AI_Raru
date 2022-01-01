#> ckenja.ai_raru:lib/expf/
#
# 自然指数関数
#
# @input storage ckenja.ai_raru:lib  expf.input
#
# @output storage ckenja.ai_raru:lib  expf.output
#
# @public

#マイナスなら逆数に
data modify storage ckenja.ai_raru.arr_math:in var1 set value {dec:0,num:[0],pol:1,base:10}
data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru:lib expf.input
function ckenja.ai_raru.arr_math:call/compare
execute if data storage ckenja.ai_raru.arr_math:main out{result:1} run function ckenja.ai_raru:lib/expf/negative

data modify storage ckenja.ai_raru:lib expf.n set value {dec:0,num:[1],pol:1,base:10}
data modify storage ckenja.ai_raru:lib expf.d set value {dec:0,num:[1],pol:1,base:10}
data modify storage ckenja.ai_raru:lib expf.output set value {dec:0,num:[1],pol:1,base:10}

function ckenja.ai_raru:lib/expf/loop

execute if data storage ckenja.ai_raru:lib expf{negative:true} run function ckenja.ai_raru:lib/expf/reciprocal