execute on vehicle unless entity @s[nbt={attributes:[{id:"minecraft:follow_range","modifiers":[{id:"simpleant:passify"}]}]}] \
    unless predicate simpleant:has_target \
        run attribute @s minecraft:follow_range modifier add simpleant:passify -2042 add_value

# search if any entity is targetting the queen
execute on vehicle unless predicate simpleant:has_target run function simpleant:ants/super_major/search_danger with entity @s data

# if the ant is near the queen but can't get to it because of spider terrible pathfinding
execute on vehicle at @s positioned ~ ~-1 ~ if predicate simpleant:has_target_queen run function simpleant:ants/worker/tp_check_queen_near with entity @s data