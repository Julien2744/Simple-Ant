$execute on passengers if entity @s[type=item_display,tag=simpleant.ant_queen_model] store result score @s simpleant.queen.worker_count run \
    execute if entity @e[type=spider,tag=simpleant.ant_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..180]

$execute on passengers if entity @s[type=item_display,tag=simpleant.ant_queen_model] store result score @s simpleant.queen.super_major_count run \
    execute if entity @e[type=spider,tag=simpleant.super_major_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..180]