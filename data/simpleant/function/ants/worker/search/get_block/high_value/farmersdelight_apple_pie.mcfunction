execute if block ~ ~ ~ farmersdelight:apple_pie \
    run data merge entity @n[type=item_display,tag=simpleant.ant_inventory,distance=..2] \
        {item:{id:"farmersdelight:apple_pie",count:1}, view_range: 1.0f}

execute if block ~ ~ ~ farmersdelight:apple_pie run setblock ~ ~ ~ minecraft:air destroy

tag @s add simpleant.bait_used