$execute if entity @n[type=spider,tag=simpleant.ant_queen_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..1.25] \
    positioned as @n[type=spider,tag=simpleant.ant_queen_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..1.25] \
        run tp @s ~ ~ ~ 0.0 0.0

# fix model rotation
execute on passengers run data merge entity @s {Rotation:[0,0]}
# fix model rotation (check tag because super major also use this file)
execute if entity @s[tag=simpleant.ant_hitbox] on passengers on passengers run data merge entity @s {Rotation:[0,0]}