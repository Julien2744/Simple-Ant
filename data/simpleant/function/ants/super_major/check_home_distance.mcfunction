# execute unless entity @n[type=minecraft:spider,tag=simpleant.ant_queen_hitbox,distance=..14] \
#     run say too far

execute unless entity @n[type=minecraft:spider,tag=simpleant.ant_queen_hitbox,distance=..14] \
    run function simpleant:ants/worker/bait_to_queen with entity @s data