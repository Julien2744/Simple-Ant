# summon queen and 2 worker
function simpleant:_admin/summon_ant_queen_random

execute as @n[type=spider,tag=simpleant.ant_queen_hitbox,distance=..1] positioned ~1 ~ ~ \
    run function simpleant:_admin/summon_ant with entity @s data

execute as @n[type=spider,tag=simpleant.ant_queen_hitbox,distance=..1] positioned ~-1 ~ ~ \
    run function simpleant:_admin/summon_ant with entity @s data

# kill marker
execute if entity @s[type=marker,tag=simpleant.ant_mound_marker] run kill @s