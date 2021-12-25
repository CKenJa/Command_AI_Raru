#decimal point handling
function ckenja.ai_raru.arr_math:ops/dec_move

#adding arrays together
function ckenja.ai_raru.arr_math:ops/add_cur

#adding any carried over numbers if available
execute unless score temp= ckenja.ai_raru.arr_math.main matches 0 run function ckenja.ai_raru.arr_math:ops/write_carry_over
execute if data storage ckenja.ai_raru.arr_math:main {v1:{pol:-1},v2:{pol:-1}} run data modify storage ckenja.ai_raru.arr_math:main out.pol set value -1