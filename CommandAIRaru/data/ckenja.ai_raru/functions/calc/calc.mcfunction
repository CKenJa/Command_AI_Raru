#> ckenja.ai_raru:calc/calc
#
#
#
# @within function ckenja.ai_raru:calc/node/

scoreboard players add #test ckenja.ai_raru 1
data get storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1]
data modify storage ckenja.ai_raru.__temp__:calc matrix.output.fpa set value {dec:0,num:[0],pol:1,base:10}
#とりまインプットのループ回して行列の積を求める
function ckenja.ai_raru:calc/matrix/
data get storage ckenja.ai_raru.__temp__:calc matrix.output

#それからバイアスを減算して
data modify storage ckenja.ai_raru.arr_math:in var1 set from storage ckenja.ai_raru.__temp__:calc model.module[-1].layer[-1].node[-1].fpa
data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru.__temp__:calc matrix.output.fpa
function ckenja.ai_raru.arr_math:call/subtract
data modify storage ckenja.ai_raru.__temp__:calc matrix.output.fpa set from storage ckenja.ai_raru.arr_math:main out

#んで活性化関数の適用
data modify storage ckenja.ai_raru.arr_math:in var1 set value {dec:0,num:[0],pol:1,base:10}
data modify storage ckenja.ai_raru.arr_math:in var2 set from storage ckenja.ai_raru.__temp__:calc matrix.output.fpa
function ckenja.ai_raru.arr_math:call/compare
execute unless data storage ckenja.ai_raru.arr_math:main out{result:0} run data modify storage ckenja.ai_raru.__temp__:calc matrix.output.fpa set from storage ckenja.ai_raru.arr_math:main out.result
execute if data storage ckenja.ai_raru.arr_math:main out{result:0} run data modify storage ckenja.ai_raru.__temp__:calc matrix.output.fpa set value {dec:0,num:[0],pol:1,base:10}

#アウトプットを次のインプットにぶち込めー

#タスク:この辺の処理を次のレイヤーいくときにやること