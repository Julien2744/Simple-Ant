execute if entity @s[tag=simpleant.has_item] on passengers unless entity @s[nbt={view_range:0f}] \
    run function simpleant:ants/worker/pop_held_item

kill @n[type=item_display,tag=simpleant.ant_inventory,distance=..1]

kill @s