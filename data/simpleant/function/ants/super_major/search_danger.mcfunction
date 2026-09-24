#$execute if entity @n[predicate=simpleant:has_target_queen,nbt=!{data:{ant_colony_id:$(ant_colony_id)}},distance=..12] \
    run say found danger

$execute if entity @n[predicate=simpleant:has_target_queen,nbt=!{data:{ant_colony_id:$(ant_colony_id)}},distance=..12] \
    run damage @s 0 simpleant:bait_aggro by @n[predicate=simpleant:has_target_queen,nbt=!{data:{ant_colony_id:$(ant_colony_id)}},distance=..12]