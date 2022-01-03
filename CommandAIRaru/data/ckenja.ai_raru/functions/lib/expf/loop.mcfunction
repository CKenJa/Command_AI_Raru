#> ckenja.ai_raru:lib/expf/loop
#
#
#
# @within function ckenja.ai_raru:lib/expf/

data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru:lib expf.d
data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru:lib expf.input
function ckenja.ai_raru.arr_math:call/multiply

data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.arr_math:main out
data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru:lib expf.n
function ckenja.ai_raru.arr_math:call/divide
data modify storage ckenja.ai_raru:lib expf.d set from storage ckenja.ai_raru.arr_math:main out

data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru:lib expf.d
data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru:lib expf.output
function ckenja.ai_raru.arr_math:call/add
data modify storage ckenja.ai_raru:lib expf.output set from storage ckenja.ai_raru.arr_math:main out

data modify storage ckenja.ai_raru.arr_math:in var1 set value {dec:0,num:[1],pol:1,base:10}
data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru:lib expf.n
function ckenja.ai_raru.arr_math:call/add
data modify storage ckenja.ai_raru:lib expf.n set from storage ckenja.ai_raru.arr_math:main out

execute if data storage ckenja.ai_raru.arr_math:main out{result:2} run function ckenja.ai_raru:lib/expf/loop