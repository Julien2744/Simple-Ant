## ants
# worker
execute if entity @e[type=item_display,tag=simpleant.ant_model,limit=1] run \
    execute as @e[type=item_display,tag=simpleant.ant_model,limit=100] at @s run function simpleant:ants/worker/one_minute

# super major
execute if entity @e[type=item_display,tag=simpleant.super_major_model,limit=1] run \
    execute as @e[type=item_display,tag=simpleant.super_major_model,limit=150] at @s run function simpleant:ants/super_major/one_minute

# queen
#execute if entity @e[type=item_display,tag=simpleant.ant_queen_model,limit=1] run \
    execute as @e[type=item_display,tag=simpleant.ant_queen_model,limit=100] at @s run function simpleant:ants/queen/one_minute

#keep at end
schedule function simpleant:one_minute 60s