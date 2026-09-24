## ants
# worker
execute if entity @e[type=item_display,tag=simpleant.ant_model,limit=1] run \
    execute as @e[type=item_display,tag=simpleant.ant_model,limit=200] at @s run function simpleant:ants/worker/ten_minute

# super major
execute if entity @e[type=item_display,tag=simpleant.super_major_model,limit=1] run \
    execute as @e[type=item_display,tag=simpleant.super_major_model,limit=150] at @s run function simpleant:ants/super_major/ten_minute

# queen
execute if entity @e[type=item_display,tag=simpleant.ant_queen_model,limit=1] run \
    execute as @e[type=item_display,tag=simpleant.ant_queen_model,limit=100] at @s run function simpleant:ants/queen/ten_minute

#keep at end
schedule function simpleant:ten_minute 600s