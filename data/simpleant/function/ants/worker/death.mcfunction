execute if entity @s[tag=simpleant.has_item] on passengers unless entity @s[nbt={view_range:0f}] \
    run function simpleant:ants/worker/pop_held_item

execute on passengers run kill @s

kill @s