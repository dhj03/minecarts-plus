execute @s[family=s10_] ~ ~ ~ function minecart_block_detector_s10_
execute @s[tag=!no_light] ~ ~ ~ detect ~ ~1 ~ light_block -1 function minecart_light_inspector
fill ~-2 ~ ~-2 ~2 ~ ~2 snow_layer 0 replace snow_layer -1
