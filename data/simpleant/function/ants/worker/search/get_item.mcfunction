data modify entity @n[type=item_display,tag=simpleant.ant_inventory,distance=..2] item set from entity @s Item
data merge entity @n[type=item_display,tag=simpleant.ant_inventory,distance=..2] {item:{count:1},view_range: 1.0f}
#say got item

# # set item value using then component (priority on component)
execute if entity @s[tag=simpleant.value.low] \
    run data modify entity @n[type=spider,tag=simpleant.ant_hitbox,distance=..2] data.held_food_value set value 1
execute if entity @s[tag=simpleant.value.medium] \
    run data modify entity @n[type=spider,tag=simpleant.ant_hitbox,distance=..2] data.held_food_value set value 2
execute if entity @s[tag=simpleant.value.high] \
    run data modify entity @n[type=spider,tag=simpleant.ant_hitbox,distance=..2] data.held_food_value set value 3

# kill if Item.count = 1
execute if entity @s[nbt={Item:{count:1}}] run return run kill @s

# remove 1 from Item.count
scoreboard players set @s simpleant.math.item_count 1
execute store result score @s simpleant.math.item_count run data get entity @s Item.count

execute if score @s simpleant.math.item_count matches 2.. \ 
    run scoreboard players remove @s simpleant.math.item_count 1

execute store result entity @s Item.count int 1 run scoreboard players get @s simpleant.math.item_count