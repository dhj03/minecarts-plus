execute @s[tag=!min_11] ~ ~ ~ detect ~ ~ ~0.05 activator_rail 0 /event entity @s "speed_11>10"
execute @s[tag=!min_11] ~ ~ ~ detect ~0.05 ~ ~ activator_rail 1 /event entity @s "speed_11>10"
execute @s[tag=!max_11] ~ ~ ~ detect ~ ~ ~0.05 activator_rail 8 /event entity @s "speed_11>12"
execute @s[tag=!max_11] ~ ~ ~ detect ~0.05 ~ ~ activator_rail 9 /event entity @s "speed_11>12"
