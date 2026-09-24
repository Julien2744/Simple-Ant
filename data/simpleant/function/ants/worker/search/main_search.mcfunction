scoreboard players add @s simpleant.worker.search_count 1

### block ###
# random x
execute on vehicle store result entity @s data.poi_pos.x int 1 run random value -6..6
# random z
execute on vehicle store result entity @s data.poi_pos.z int 1 run random value -6..6
execute on vehicle run function simpleant:ants/worker/search/lookat_block with entity @s data.poi_pos
# stop the search if got something
execute if entity @s[tag=simpleant.has_bait] run return run function simpleant:ants/worker/search/stop_search

### item ###
execute if score @s simpleant.worker.search_count >= #simpleant.config simpleant.config.worker_search_count \
    if entity @n[type=item,distance=..12] \
        run function simpleant:ants/worker/search/main_search_item

# bait to tagged item
execute if entity @n[type=item,distance=..12,tag=simpleant.valuable_item] \
        at @n[type=item,distance=..12,tag=simpleant.valuable_item] \
            on vehicle run function simpleant:ants/worker/bait_here {baitType:"item"}

# end search
execute if score @s simpleant.worker.search_count >= #simpleant.config simpleant.config.worker_search_count \
    run function simpleant:ants/worker/search/stop_search