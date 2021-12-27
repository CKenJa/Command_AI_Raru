execute if score gv= ckenja.ai_raru.arr_math.main matches 1 if data storage ckenja.ai_raru.arr_math:in {var1:{pol:1},var2:{pol:-1}} run data modify storage ckenja.ai_raru.arr_math:main out.pol set value 1

execute if score gv= ckenja.ai_raru.arr_math.main matches 1 if data storage ckenja.ai_raru.arr_math:in {var1:{pol:-1},var2:{pol:1}} run data modify storage ckenja.ai_raru.arr_math:main out.pol set value -1


execute if score gv= ckenja.ai_raru.arr_math.main matches 2 if data storage ckenja.ai_raru.arr_math:in {var1:{pol:1},var2:{pol:-1}} run data modify storage ckenja.ai_raru.arr_math:main out.pol set value -1

execute if score gv= ckenja.ai_raru.arr_math.main matches 2 if data storage ckenja.ai_raru.arr_math:in {var1:{pol:-1},var2:{pol:1}} run data modify storage ckenja.ai_raru.arr_math:main out.pol set value 1