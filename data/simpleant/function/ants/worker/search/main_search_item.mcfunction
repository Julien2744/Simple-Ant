## using componant ## (priority on component)
    # for every item ID that is in #valuable_item_component tag
        # run the function tag by value
        # check if any one of them actually has a valuable component
execute if entity @n[type=item,distance=..10,predicate=simpleant:valuable_item_component_all] \
        run function simpleant:ants/worker/search/check_item/check_value

# bait to tagged item
execute if entity @n[type=item,distance=..10,tag=simpleant.valuable_item] \
        at @n[type=item,distance=..10,tag=simpleant.valuable_item] \
            on vehicle run function simpleant:ants/worker/bait_here {baitType:"item"}

# stop the search if got something
execute if entity @s[tag=simpleant.has_bait] run return run function simpleant:ants/worker/search/stop_search

## using ID ##
# search item using ID and tag it
execute if entity @n[type=item,distance=..10,predicate=simpleant:valuable_item] \
        as @n[type=item,distance=..10,predicate=simpleant:valuable_item] \
            run tag @s add simpleant.valuable_item

# bait to tagged item
execute if entity @n[type=item,distance=..10,tag=simpleant.valuable_item] \
        at @n[type=item,distance=..10,tag=simpleant.valuable_item] \
            on vehicle run function simpleant:ants/worker/bait_here {baitType:"item"}