setblock ~ ~ ~ air destroy

tag @n[type=item_display,tag=simpleant.ant_model,distance=..2] remove simpleant.bait_type.block

# search dropped item
execute as @n[type=item_display,tag=simpleant.ant_model,distance=..2] at @s run function simpleant:ants/worker/search/main_search_item
execute if entity @n[type=item,distance=..4,predicate=simpleant:valuable_item] \
        run tag @n[type=item_display,tag=simpleant.ant_model,distance=..2] add simpleant.bait_type.item