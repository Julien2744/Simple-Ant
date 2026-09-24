# tp to queen if near
$execute if data entity @s {Pos:$(previous_pos)} \
    if entity @n[type=spider,tag=simpleant.ant_queen_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..6] \ 
        run tp @s $(queen_pos_x) $(queen_pos_y) $(queen_pos_z) 0 0

# kill if queen not near
#$execute if data entity @s {Pos:$(previous_pos)} \
    unless entity @n[type=spider,tag=simpleant.ant_queen_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..6] \ 
        run say got stuck
$execute if data entity @s {Pos:$(previous_pos)} \
    unless entity @n[type=spider,tag=simpleant.ant_queen_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..6] \ 
        run return run kill @s

#fix models
execute on passengers run data merge entity @s {Rotation:[0,0]}
execute on passengers on passengers run data merge entity @s {Rotation:[0,0]}

# get previous pos
$execute unless data entity @s {Pos:$(previous_pos)} run data modify entity @s data.previous_pos set from entity @s Pos