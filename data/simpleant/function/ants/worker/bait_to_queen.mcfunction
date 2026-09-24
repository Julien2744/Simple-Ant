# execute as hitbox (warning super_major also use this file)

# reset queen_pos if there no queen nearby
$execute unless entity @n[type=spider,tag=simpleant.ant_queen_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..142] \
    run data merge entity @s {data:{queen_pos_x:0,queen_pos_y:0,queen_pos_z:0}}

# set queen pos if it wasn't setted for some reason
$execute if entity @s[nbt={data:{queen_pos_x:0,queen_pos_y:0,queen_pos_z:0}}] run \
    execute if entity @n[type=spider,tag=simpleant.ant_queen_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..142] \
        run return run function simpleant:ants/worker/get_queen_pos with entity @n[type=spider,tag=simpleant.ant_queen_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..142] data

# target queen
$execute positioned $(queen_pos_x) $(queen_pos_y) $(queen_pos_z) \
    if entity @n[type=spider,tag=simpleant.ant_queen_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..16] \
    if entity @s[distance=..142] \
        run function simpleant:ants/worker/target_queen with entity @s data