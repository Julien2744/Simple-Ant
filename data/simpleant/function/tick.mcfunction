## ants
# workers
execute if entity @e[type=item_display,tag=simpleant.ant_model,limit=1] \
    run execute as @e[type=item_display,tag=simpleant.ant_model,limit=200] at @s run function simpleant:ants/worker/tick

# super major
execute if entity @e[type=item_display,tag=simpleant.super_major_model,limit=1] \
    run execute as @e[type=item_display,tag=simpleant.super_major_model,limit=150] at @s run function simpleant:ants/super_major/tick

# queen
execute if entity @e[type=item_display,tag=simpleant.ant_queen_model,limit=1] \
    run execute as @e[type=item_display,tag=simpleant.ant_queen_model,limit=100] at @s run function simpleant:ants/queen/tick