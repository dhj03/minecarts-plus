execute @s[tag=!limit_10] ~ ~ ~ detect ~ ~ ~ rail -1 function minecart_rail_inspector_s10_
execute @s[tag=limit_10] ~ ~ ~ function minecart_block_detector_s10s
execute @s[tag=!no_actv,tag=!vanilla_actv] ~ ~ ~ detect ~-0.25 ~ ~-0.25 activator_rail -1 function minecart_actv_neg_s10_
execute @s[tag=!no_actv,tag=!vanilla_actv] ~ ~ ~ detect ~0.25 ~ ~0.25 activator_rail -1 function minecart_actv_pos_s10_
