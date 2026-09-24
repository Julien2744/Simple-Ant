scoreboard players add @s simpleant.exist 1
execute if score @s simpleant.exist >= #simpleant.config simpleant.config.bait_exist_duration run function simpleant:ants/kill_bait

# remove bait if in air
#execute if block ~ ~-1 ~ #air run say remove bait
execute if block ~ ~-1 ~ #air run function simpleant:ants/kill_bait