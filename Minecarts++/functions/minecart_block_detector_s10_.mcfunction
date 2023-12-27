execute as @s[tag=!limit_10] at @s if block ~ ~ ~ rail run function minecart_rail_inspector_s10_
execute as @s[tag=limit_10] at @s run function minecart_block_detector_s10s
execute as @s[tag=!no_actv,tag=!vanilla_actv] at @s if block ~-0.25 ~-0.5 ~-0.25 activator_rail run function minecart_actv_neg_low_s10_
execute as @s[tag=!no_actv,tag=!vanilla_actv] at @s if block ~-0.25 ~0.5 ~-0.25 activator_rail run function minecart_actv_neg_high_s10_
execute as @s[tag=!no_actv,tag=!vanilla_actv] at @s if block ~0.25 ~-0.5 ~0.25 activator_rail run function minecart_actv_pos_low_s10_
execute as @s[tag=!no_actv,tag=!vanilla_actv] at @s if block ~0.25 ~0.5 ~0.25 activator_rail run function minecart_actv_pos_high_s10_
