#adding arrays together
function ckenja.ai_raru.arr_math:ops/add_cur

#adding any carried over numbers if available
execute unless score temp= ckenja.ai_raru.arr_math.main matches 0 run function ckenja.ai_raru.arr_math:ops/write_carry_over