summon item ~ ~ ~ {Tags:["simpleant.ant_dropped_inventory"],Item:{count:1,id:"brown_dye"}}

data modify entity @n[type=item,tag=simpleant.ant_dropped_inventory,distance=..1] Item set from entity @s item
data modify entity @s view_range set value 0f

playsound ui.hud.bubble_pop hostile @a[distance=..8] ~ ~ ~

execute on vehicle run tag @s remove simpleant.has_item
execute on vehicle on vehicle run data modify entity @s data.held_food_value set value 0