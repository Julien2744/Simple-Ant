# execute as model

tag @s remove simpleant.has_bait
#say check_poi_bait

# I wish I could use function macro by getting the block name but the "minecraft:" is preventing this
## do stuff depending on the bait
## - block | using block tag | break_on_pick
execute if entity @s[tag=simpleant.bait_type.block] \
    on vehicle on target at @s if block ~ ~ ~ #simpleant:break_on_pick run function simpleant:ants/worker/search/drop_block
execute if entity @s[tag=simpleant.bait_type.block] \
    on vehicle on target at @s positioned ~ ~0.5 ~ if block ~ ~ ~ #simpleant:break_on_pick run function simpleant:ants/worker/search/drop_block
    
## - block | using function tags
execute if entity @s[tag=simpleant.bait_type.block] \
    on vehicle on target at @s run function simpleant:ants/worker/search/get_block/check_value

## - item | using entity tag
execute if entity @s[tag=simpleant.bait_type.item] \
    on vehicle on target at @s if entity @n[type=item,distance=..2,tag=simpleant.valuable_item] \
    as @n[type=item,distance=..2,tag=simpleant.valuable_item] at @s \
        run function simpleant:ants/worker/search/get_item
##

# set held item value
#execute on passengers if entity @s[nbt={view_range:1.0f}] on vehicle run say got thing
execute on passengers if entity @s[nbt={view_range:1.0f}] run function simpleant:ants/worker/set_held_item_value



function simpleant:ants/worker/remove_bait_tag