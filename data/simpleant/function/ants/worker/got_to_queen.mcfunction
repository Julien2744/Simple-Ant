#say got to queen

# forget target
attribute @s minecraft:follow_range modifier add simpleant:forget_target -99999 add_value
tag @s add simpleant.cant_target
execute on passengers run tag @s remove simpleant.queen_baited

# remove follow range buff
attribute @s minecraft:follow_range modifier remove simpleant:woker_go_queen
attribute @s minecraft:attack_damage modifier remove simpleant:queen_baited

# if ant got an item
execute on passengers unless entity @s[tag=simpleant.has_item] run return 0

#say feed queen
$execute as @n[type=spider,tag=simpleant.ant_queen_hitbox,distance=..2,nbt={data:{ant_colony_id:$(ant_colony_id)}}] at @s \
        run function simpleant:ants/queen/feed {amount:$(held_food_value)}

execute on passengers on passengers run data modify entity @s view_range set value 0f

data modify entity @s data.held_food_value set value 0
execute on passengers run tag @s remove simpleant.has_item