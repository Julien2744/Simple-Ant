execute if block ~ ~ ~ farmersdelight:sweet_berry_cheesecake \
    run data merge entity @n[type=item_display,tag=simpleant.ant_inventory,distance=..2] \
        {item:{id:"farmersdelight:sweet_berry_cheesecake",count:1}, view_range: 1.0f}

execute if block ~ ~ ~ farmersdelight:sweet_berry_cheesecake run setblock ~ ~ ~ minecraft:air destroy

tag @s add simpleant.bait_used