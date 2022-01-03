#> ckenja.ai_raru:lib/expf/
#
# 自然指数関数
#
# @input storage ckenja.ai_raru:lib  expf.input
#
# @output storage ckenja.ai_raru:lib  expf.output
#
# @public

#負ならいったん正に
execute if data storage ckenja.ai_raru:lib expf.input{pol:-1} run data modify storage ckenja.ai_raru:lib expf.input.pol set value 1

# テイラー展開(3次)
    #powもいつか最適化したいよね
    data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru:lib expf.input
    data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru:lib expf.input
    function ckenja.ai_raru.arr_math:call/multiply
    data modify storage ckenja.ai_raru.__temp__:lib expf.2 set from storage ckenja.ai_raru.arr_math:main out

    data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.__temp__:lib expf.2
    data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru:lib expf.input
    function ckenja.ai_raru.arr_math:call/multiply

    data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.arr_math:main out
    data modify storage ckenja.ai_raru.arr_math:in var2 set value {dec:0,num:[6],pol:1,base:10}
    function ckenja.ai_raru.arr_math:call/divide
    data modify storage ckenja.ai_raru.__temp__:lib expf.3 set from storage ckenja.ai_raru.arr_math:main out

    data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.__temp__:lib expf.2
    data modify storage ckenja.ai_raru.arr_math:in var2 set value {dec:0,num:[2],pol:1,base:10}
    function ckenja.ai_raru.arr_math:call/divide
    data modify storage ckenja.ai_raru.__temp__:lib expf.2 set from storage ckenja.ai_raru.arr_math:main out

    data modify storage ckenja.ai_raru.arr_math:in var1 set value {dec:0,num:[1],pol:1,base:10}
    data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru:lib expf.input
    function ckenja.ai_raru.arr_math:call/add

    data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.__temp__:lib expf.2
    data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru.arr_math:main out
    function ckenja.ai_raru.arr_math:call/add

    data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.__temp__:lib expf.3
    data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru.arr_math:main out
    function ckenja.ai_raru.arr_math:call/add

#負なら逆数
execute if data storage ckenja.ai_raru:lib expf.input{pol:-1} run function ckenja.ai_raru:lib/expf/reciprocal

data modify storage ckenja.ai_raru:lib expf.output set from storage ckenja.ai_raru.arr_math:main out
