#> ckenja.ai_raru:calc/node/calc
#
# ノード全部にやる処理
#
# @within function ckenja.ai_raru:calc/node/

scoreboard players add #test ckenja.ai_raru 1

#とりまインプットのループ回して行列の積を求める
data modify storage ckenja.ai_raru.__temp__:calc/matrix output set value {dec:0,num:[0],pol:1,base:10}
function ckenja.ai_raru:calc/matrix/

#それからバイアスを減算して
data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1]
data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru.__temp__:calc/matrix output
function ckenja.ai_raru.arr_math:call/subtract
data modify storage ckenja.ai_raru.__temp__:calc/matrix output set from storage ckenja.ai_raru.arr_math:main out

#んで活性化関数の適用。ここでは単純なReLU
data modify storage ckenja.ai_raru.arr_math:in var1 set value {dec:0,num:[0],pol:1,base:10}
data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru.__temp__:calc/matrix output
function ckenja.ai_raru.arr_math:call/compare
execute if data storage ckenja.ai_raru.arr_math:main out{result:2} run data modify storage ckenja.ai_raru.__temp__:calc/matrix output set from storage ckenja.ai_raru.arr_math:main out.result
execute unless data storage ckenja.ai_raru.arr_math:main out{result:2} run data modify storage ckenja.ai_raru.__temp__:calc/matrix output set value {dec:0,num:[0],pol:1,base:10}

#アウトプットにぶち込めー
#ここはappendでもinisertでも統一されていれば問題ない
data modify storage ckenja.ai_raru.__temp__:calc/layer output append from storage ckenja.ai_raru.__temp__:calc/matrix output

#say node/calc