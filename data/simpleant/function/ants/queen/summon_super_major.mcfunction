#say summoned super_major

# summon
$function simpleant:_admin/summon_super_major {ant_colony_id:$(ant_colony_id)}
data modify entity @n[type=spider,tag=simpleant.super_major_hitbox,distance=..1] data.queen_pos_x set from entity @s data.home_pos_x
data modify entity @n[type=spider,tag=simpleant.super_major_hitbox,distance=..1] data.queen_pos_y set from entity @s data.home_pos_y
data modify entity @n[type=spider,tag=simpleant.super_major_hitbox,distance=..1] data.queen_pos_z set from entity @s data.home_pos_z
execute on passengers if entity @s[tag=simpleant.enchanted] as @n[type=item_display,tag=simpleant.super_major_model,distance=..1] \
    run function simpleant:ants/enchant

# change scoreboard
execute on passengers if entity @s[type=item_display,tag=simpleant.ant_queen_model] \
    run scoreboard players operation @s simpleant.queen.nutrition -= #simpleant.config simpleant.config.super_major_cost
execute on passengers if entity @s[type=item_display,tag=simpleant.ant_queen_model] \
    run scoreboard players add @s simpleant.queen.super_major_count 1
    
execute on passengers if entity @s[type=item_display,tag=simpleant.ant_queen_model] \
    run tag @s remove simpleant.queen_choose.major

# effect
playsound minecraft:entity.chicken.egg hostile @a[distance=..8] ~ ~ ~
particle minecraft:egg_crack