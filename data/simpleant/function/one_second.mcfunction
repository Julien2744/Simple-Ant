## ants
# workers
execute if entity @e[type=item_display,tag=simpleant.ant_model,limit=1] run \
    execute as @e[type=item_display,tag=simpleant.ant_model,limit=200] at @s run function simpleant:ants/worker/one_second

# super majors
execute if entity @e[type=item_display,tag=simpleant.super_major_model,limit=1] run \
    execute as @e[type=item_display,tag=simpleant.super_major_model,limit=150] at @s run function simpleant:ants/super_major/one_second

# queen
execute if entity @e[type=item_display,tag=simpleant.ant_queen_model,limit=1] run \
    execute as @e[type=item_display,tag=simpleant.ant_queen_model,limit=100] at @s run function simpleant:ants/queen/one_second

# baits
execute if entity @e[type=bat,tag=simpleant.bait,limit=1] \
    run execute as @e[type=bat,tag=simpleant.bait,limit=100] at @s run function simpleant:ants/bait_one_second

# structure marker
execute if score #simpleant.config simpleant.config.stop_marker_tick matches 0 run \
    execute at @r if entity @n[type=marker,tag=simpleant.ant_mound_marker,distance=..32] run \
        execute as @n[type=marker,tag=simpleant.ant_mound_marker,distance=..32] at @s run function simpleant:structures/summon_colony

# keep at end
schedule function simpleant:one_second 1s