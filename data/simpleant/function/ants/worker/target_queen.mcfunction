# execute as hitbox
attribute @s minecraft:follow_range modifier add simpleant:woker_go_queen 128 add_value
attribute @s minecraft:attack_damage modifier add simpleant:queen_baited -999 add_value
$damage @s 0 simpleant:bait_aggro by @n[type=spider,tag=simpleant.ant_queen_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..16]

execute on passengers run tag @s add simpleant.has_bait