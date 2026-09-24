# execute as model

# warning order is very important

# passify the hitbox if there isn't a target (prevent auto-aggro at low light level)
execute on vehicle unless entity @s[nbt={attributes:[{id:"minecraft:follow_range","modifiers":[{id:"simpleant:passify"}]}]}] \
    unless predicate simpleant:has_target \
        run attribute @s minecraft:follow_range modifier add simpleant:passify -2042 add_value

# if the ant has an item but his not targetting the queen passify him
execute if entity @s[tag=simpleant.has_item] on vehicle unless predicate simpleant:has_target_queen \
    run attribute @s minecraft:follow_range modifier add simpleant:passify -2042 add_value

# check if ant loose aggro on queen for some reason
# execute if entity @s[tag=simpleant.queen_baited] unless predicate simpleant:has_vehicle_target \
#     run say remove simpleant.queen_baited
execute if entity @s[tag=simpleant.queen_baited] unless predicate simpleant:has_vehicle_target \
    run tag @s remove simpleant.queen_baited

# tag ant as queen_baited
execute if entity @s[tag=!simpleant.queen_baited] on vehicle if predicate simpleant:has_target_queen \
    on passengers run tag @s add simpleant.queen_baited

# recheck if ant loose the bait
# execute if entity @s[tag=simpleant.has_bait,tag=!simpleant.queen_baited,tag=!simpleant.far_from_home] unless predicate simpleant:has_vehicle_target_bait \
#     run say remove bait tag
execute if entity @s[tag=simpleant.has_bait,tag=!simpleant.queen_baited,tag=!simpleant.far_from_home] unless predicate simpleant:has_vehicle_target_bait \
    run function simpleant:ants/worker/remove_bait_tag

# tag added if the ant is too far from home (added because this .mcfunction file can mess has_bait tag
execute if entity @s[tag=simpleant.far_from_home] run tag @s remove simpleant.far_from_home

# re-enable the ant to target (got_to_queen.mcfunction)
execute unless entity @s[tag=simpleant.queen_baited] on vehicle if entity @s[tag=simpleant.cant_target] unless predicate simpleant:has_target \
    run function simpleant:ants/worker/remove_inability_to_target

# bait ant to the queen
execute if entity @s[tag=simpleant.has_item,tag=!simpleant.has_bait,tag=!simpleant.queen_baited] \
    on vehicle unless predicate simpleant:has_target run function simpleant:ants/worker/bait_to_queen with entity @s data

# if the ant is near the queen but can't get to it because of spider terrible pathfinding
execute on vehicle at @s positioned ~ ~-1 ~ if predicate simpleant:has_target_queen run function simpleant:ants/worker/tp_check_queen_near with entity @s data