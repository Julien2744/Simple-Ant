# set ant rotation
data modify entity @s Rotation[0] set from entity @n[type=spider,tag=simpleant.ant_queen_hitbox,distance=..1] Rotation[0]

#https://bugs.mojang.com/browse/MC/issues/MC-305396 && https://bugs.mojang.com/browse/MC/issues/MC-236303
# attack (cooldown in tick)
execute on vehicle if predicate simpleant:queen_has_target_near \
    if score @s simpleant.attack_cooldown matches 0 run function simpleant:ants/queen/attack_target

# keep at end
# check death
execute unless predicate simpleant:check_queen_hitbox run function simpleant:ants/queen/death