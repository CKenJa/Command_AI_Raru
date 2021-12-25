#setting base val to input base value
scoreboard players operation base= ckenja.ai_raru.arr_math.main = v1base= ckenja.ai_raru.arr_math.main
scoreboard players reset v1base= ckenja.ai_raru.arr_math.main
scoreboard players reset v2base= ckenja.ai_raru.arr_math.main
execute store result storage ckenja.ai_raru.arr_math:main out.base int 1 run scoreboard players get base= ckenja.ai_raru.arr_math.main

#doing subtraction if one val is negative
execute if data storage ckenja.ai_raru.arr_math:main {v1:{pol:-1},v2:{pol:1}} run function ckenja.ai_raru.arr_math:ops/sub_from_add
execute if data storage ckenja.ai_raru.arr_math:main {v1:{pol:1},v2:{pol:-1}} run function ckenja.ai_raru.arr_math:ops/sub_from_add

#doing addition if both values are positive or negative
execute if data storage ckenja.ai_raru.arr_math:main {v1:{pol:1},v2:{pol:1}} run function ckenja.ai_raru.arr_math:ops/do_add
execute if data storage ckenja.ai_raru.arr_math:main {v1:{pol:-1},v2:{pol:-1}} run function ckenja.ai_raru.arr_math:ops/do_add

function ckenja.ai_raru.arr_math:ops/red_dec