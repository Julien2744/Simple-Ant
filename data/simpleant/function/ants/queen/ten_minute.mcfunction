#say 10min

# re-calculate colony
execute on vehicle run function simpleant:ants/queen/count_colony with entity @s data

# if super major was chosen, but the worker numbers decreased, remove tag
execute if entity @s[tag=simpleant.queen_choose.major] \
    if score @s simpleant.queen.worker_count matches ..2 \
        run tag @s remove simpleant.queen_choose.major

# choose super major for the next ant 50% chance
execute if score @s simpleant.queen.super_major_count < #simpleant.config simpleant.config.max_super_major \
    if score @s simpleant.queen.worker_count matches 3.. \
    if score @s simpleant.queen.nutrition >= #simpleant.config simpleant.config.worker_cost \
    if predicate simpleant:random/50 \
        run tag @s add simpleant.queen_choose.major
#execute if entity @s[tag=simpleant.queen_choose.major] run say choose_major

# summon worker
execute if entity @s[tag=!simpleant.queen_choose.major] \
    if score @s simpleant.queen.worker_count < #simpleant.config simpleant.config.max_worker \
    if score @s simpleant.queen.nutrition >= #simpleant.config simpleant.config.worker_cost \
    on vehicle run function simpleant:ants/queen/summon_worker with entity @s data

# summon super_major
execute if entity @s[tag=simpleant.queen_choose.major] if score @s simpleant.queen.nutrition >= #simpleant.config simpleant.config.super_major_cost \
    on vehicle run function simpleant:ants/queen/summon_super_major with entity @s data

# buff colony if it's maxed out
execute if score @s simpleant.queen.worker_count >= #simpleant.config simpleant.config.max_worker \
    if score @s simpleant.queen.super_major_count >= #simpleant.config simpleant.config.max_super_major \
        on vehicle run function simpleant:ants/queen/buff_colony with entity @s data

# check if queen is stuck because of terrible spider pathfinding
execute on vehicle unless block ~ ~1 ~ #air run function simpleant:ants/queen/check_if_stuck with entity @s data

# regulary consume nutrition
execute unless score @s simpleant.queen.nutrition matches ..0 \ 
    run scoreboard players remove @s simpleant.queen.nutrition 1
# starve if no nutrition
execute if score @s simpleant.queen.nutrition matches ..0 on vehicle run damage @s 1 minecraft:starve