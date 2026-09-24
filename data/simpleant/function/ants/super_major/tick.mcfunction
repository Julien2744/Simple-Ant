# hurt
execute on vehicle if entity @s[nbt={HurtTime:9s}] run function simpleant:ants/super_major/hurt with entity @s data

#https://bugs.mojang.com/browse/MC/issues/MC-305396 && https://bugs.mojang.com/browse/MC/issues/MC-236303
# attack
execute on vehicle unless score @s simpleant.attack_cooldown matches 0 \
    run scoreboard players remove @s simpleant.attack_cooldown 1