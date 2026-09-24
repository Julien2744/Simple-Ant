scoreboard players set @s simpleant.attack_cooldown 20

# ant wandered too far
$execute on target if entity @s[type=spider,tag=simpleant.ant_queen_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}}] \
    as @n[type=spider,tag=simpleant.super_major_hitbox,distance=..1,nbt={data:{ant_colony_id:$(ant_colony_id)}}] \
        run return run function simpleant:ants/super_major/got_to_queen

execute store result entity @s data.attack_damage float 1 run attribute @s attack_damage get

execute on target run tag @s[distance=..2] add simpleant.target
function simpleant:ants/super_major/deal_damage_target with entity @s data
tag @n[tag=simpleant.target,distance=..3] remove simpleant.target