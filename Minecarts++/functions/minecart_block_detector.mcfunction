execute as @s[family=s10_] at @s run function minecart_block_detector_s10_
execute as @s[tag=!no_light] at @s if block ~ ~1 ~ light_block run function minecart_light_inspector
fill ~-2 ~ ~-2 ~2 ~ ~2 snow_layer ["height"=0] replace snow_layer
