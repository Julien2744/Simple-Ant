execute on vehicle run tag @s add simpleant.has_item

# set item value first using ID then component (priority on component)
#ID
execute if items entity @s contents #simpleant:high_value \
    on vehicle on vehicle if entity @s[nbt={data:{held_food_value:0}}] run data modify entity @s data.held_food_value set value 3
execute if items entity @s contents #simpleant:medium_value \
    on vehicle on vehicle if entity @s[nbt={data:{held_food_value:0}}] run data modify entity @s data.held_food_value set value 2
execute if items entity @s contents #simpleant:low_value \
    on vehicle on vehicle if entity @s[nbt={data:{held_food_value:0}}] run data modify entity @s data.held_food_value set value 1
# #component in worker/search/get_item
