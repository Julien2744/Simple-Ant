execute if block ~ ~ ~ minecraft:cake \
    run data merge entity @n[type=item_display,tag=simpleant.ant_inventory,distance=..2] \
        {item:{id:"minecraft:cake",count:1}, view_range: 1.0f}

execute if block ~ ~ ~ minecraft:cake run setblock ~ ~ ~ minecraft:air destroy

tag @s add simpleant.bait_used