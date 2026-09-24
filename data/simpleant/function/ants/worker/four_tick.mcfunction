# set ant rotation
data modify entity @s Rotation[0] set from entity @n[type=spider,tag=simpleant.ant_hitbox,distance=..1] Rotation[0]
# execute on the inventory item display
execute on passengers run data modify entity @s Rotation[0] set from entity @n[type=spider,tag=simpleant.ant_hitbox,distance=..1] Rotation[0]

# search cooldown
execute if entity @s[tag=!simpleant.has_bait,tag=!simpleant.has_item] \
    unless score @s simpleant.worker.search_cooldown >= #simpleant.config simpleant.config.worker_search_cooldown \
    run scoreboard players add @s simpleant.worker.search_cooldown 4
# search
    # if ant doesn't already have an item
    # if ant isn't aggro on something
    # if search cooldown >= config
    # if search count != config
execute unless score #simpleant.config simpleant.config.worker_stop_search matches 1 \
    unless entity @s[tag=simpleant.has_item] unless predicate simpleant:has_vehicle_target \
    if score @s simpleant.worker.search_cooldown >= #simpleant.config simpleant.config.worker_search_cooldown \
    unless score @s simpleant.worker.search_count = #simpleant.config simpleant.config.worker_search_count \
        run function simpleant:ants/worker/search/main_search

# check if near bait
execute if entity @s[tag=simpleant.has_bait] on vehicle if predicate simpleant:has_bait_target_near \
    run function simpleant:ants/worker/got_bait

#https://bugs.mojang.com/browse/MC/issues/MC-305396 && https://bugs.mojang.com/browse/MC/issues/MC-236303
# attack (cooldown in tick)
execute on vehicle if predicate simpleant:has_target_near \
    if score @s simpleant.attack_cooldown matches 0 run function simpleant:ants/worker/attack_target

# keep at end
# check death
execute unless predicate simpleant:check_woker_hitbox run function simpleant:ants/worker/death