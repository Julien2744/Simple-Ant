execute if block ~ ~ ~ minecraft:honeycomb_block \
    run data merge entity @n[type=item_display,tag=simpleant.ant_inventory,distance=..2] \
        {item:{id:"minecraft:honeycomb",count:1}, view_range: 1.0f}

tag @s add simpleant.bait_used