# set ant rotation
data modify entity @s Rotation[0] set from entity @n[type=spider,tag=simpleant.super_major_hitbox,distance=..1] Rotation[0]

# remove inability to target (got_to_queen.mcfunction)
execute on vehicle if entity @s[tag=simpleant.cant_target] unless predicate simpleant:has_target \
    run function simpleant:ants/super_major/remove_inability_to_target

#https://bugs.mojang.com/browse/MC/issues/MC-305396 && https://bugs.mojang.com/browse/MC/issues/MC-236303
# attack (cooldown in tick)
execute on vehicle if predicate simpleant:super_major_has_target_near \
    if score @s simpleant.attack_cooldown matches 0 run function simpleant:ants/super_major/attack_target with entity @s data

# keep at end
# check death
execute unless predicate simpleant:check_super_major_hitbox run function simpleant:ants/super_major/death