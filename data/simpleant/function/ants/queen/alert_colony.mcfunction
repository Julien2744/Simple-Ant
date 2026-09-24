#say alert colony

# alert worker
$execute as @e[type=spider,tag=simpleant.ant_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..24,predicate=!simpleant:has_target] \
    run damage @s 0 simpleant:bait_aggro by @n[tag=simpleant.hurt_queen,distance=..8]

# alert super  major
$execute as @e[type=spider,tag=simpleant.super_major_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..42,predicate=!simpleant:has_target] \
    run damage @s 0 simpleant:bait_aggro by @n[tag=simpleant.hurt_queen,distance=..8]
# give speed boost to super major
$effect give @e[type=spider,tag=simpleant.super_major_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..42] \
    minecraft:speed 5 0 false