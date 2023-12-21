execute @s[tag=!min_12] ~ ~ ~ detect ~ ~ ~0.1 activator_rail 0 /event entity @s "speed_12>11"
execute @s[tag=!min_12] ~ ~ ~ detect ~0.1 ~ ~ activator_rail 1 /event entity @s "speed_12>11"
execute @s[tag=!max_12] ~ ~ ~ detect ~ ~ ~0.1 activator_rail 8 /event entity @s "speed_12>13"
execute @s[tag=!max_12] ~ ~ ~ detect ~0.1 ~ ~ activator_rail 9 /event entity @s "speed_12>13"
