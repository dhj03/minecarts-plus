execute as @s[family=s11,tag=!min_11] at @s if block ~0.05 ~-0.5 ~0.05 activator_rail ["rail_data_bit"=false] run event entity @s "speed_11>10"
execute as @s[family=s11,tag=!max_11] at @s if block ~0.05 ~-0.5 ~0.05 activator_rail ["rail_data_bit"=true] run event entity @s "speed_11>12"
execute as @s[family=s12,tag=!min_12] at @s if block ~0.1 ~-0.5 ~0.1 activator_rail ["rail_data_bit"=false] run event entity @s "speed_12>11"
execute as @s[family=s12,tag=!max_12] at @s if block ~0.1 ~-0.5 ~0.1 activator_rail ["rail_data_bit"=true] run event entity @s "speed_12>13"
execute as @s[family=s13,tag=!min_13] at @s if block ~0.15 ~-0.5 ~0.15 activator_rail ["rail_data_bit"=false] run event entity @s "speed_13>12"
execute as @s[family=s13,tag=!max_13] at @s if block ~0.15 ~-0.5 ~0.15 activator_rail ["rail_data_bit"=true] run event entity @s "speed_13>14"
execute as @s[family=s14,tag=!min_14] at @s if block ~0.2 ~-0.5 ~0.2 activator_rail ["rail_data_bit"=false] run event entity @s "speed_14>13"
execute as @s[family=s14,tag=!max_14] at @s if block ~0.2 ~-0.5 ~0.2 activator_rail ["rail_data_bit"=true] run event entity @s "speed_14>15"
execute as @s[family=s15,tag=!min_15] at @s if block ~0.25 ~-0.5 ~0.25 activator_rail ["rail_data_bit"=false] run event entity @s "speed_15>14"
