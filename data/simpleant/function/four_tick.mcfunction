## ants
# workers
execute if entity @e[type=item_display,tag=simpleant.ant_model,limit=1] run \
    execute as @e[type=item_display,tag=simpleant.ant_model,limit=200] at @s run function simpleant:ants/worker/four_tick

# super major
execute if entity @e[type=item_display,tag=simpleant.super_major_model,limit=1] run \
    execute as @e[type=item_display,tag=simpleant.super_major_model,limit=150] at @s run function simpleant:ants/super_major/four_tick

# queen
execute if entity @e[type=item_display,tag=simpleant.ant_queen_model,limit=1] run \
    execute as @e[type=item_display,tag=simpleant.ant_queen_model,limit=100] at @s run function simpleant:ants/queen/four_tick

# config.show_bait_location
execute if score #simpleant.config simpleant.config.show_bait_location matches 1 run \
    execute at @e[type=bat,tag=simpleant.bait,limit=50] run particle minecraft:note ~ ~ ~ 0 0 0 0 0 normal @a[distance=..16]

# keep at end
schedule function simpleant:four_tick 4t