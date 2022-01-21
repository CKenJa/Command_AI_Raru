#> ckenja.ai_raru:callback/affine/backward/main
#
#
#
# @within function ckenja.ai_raru:callback/affine/backward/_

#入力の勾配=前レイヤの微分*転置した重み

#重みの勾配=前レイヤの微分*転置した入力

#バイアスの勾配=前レイヤの微分