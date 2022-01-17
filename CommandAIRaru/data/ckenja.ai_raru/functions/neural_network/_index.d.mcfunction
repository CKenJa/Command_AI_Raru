#> ckenja.ai_raru:neural_network/_index.d
#
#
#
# @private

#> neural_network
#@within function
#   ckenja.ai_raru:neural_network/*
#   ckenja.ai_raru:function/*
    #declare storage ckenja.ai_raru.__temp__:neural_network/
    #declare storage ckenja.ai_raru.__temp__:neural_network/layer

#> node
#@within ckenja.ai_raru:neural_network/node
    #declare storage ckenja.ai_raru.__temp__:neural_network/node

#> node
#@public
    #declare storage ckenja.ai_raru:neural_network/node

#> score
#@within function
#   ckenja.ai_raru:function/**
#   ckenja.ai_raru:neural_network/node
    #declare score_holder #node.output
