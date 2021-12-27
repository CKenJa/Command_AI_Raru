#clears previous outputs
data modify storage ckenja.ai_raru.base_conv:main out set value []

#init
function ckenja.ai_raru.base_conv:convert/start
execute if score in= ckenja.ai_raru.base_conv.num matches 1.. run function ckenja.ai_raru.base_conv:convert