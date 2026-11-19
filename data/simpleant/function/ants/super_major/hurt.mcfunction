playsound minecraft:entity.silverfish.hurt hostile @a[distance=..8] ~ ~ ~ 1 0.6

# de-passify the ant
execute if entity @s[nbt={attributes:[{id:"minecraft:follow_range","modifiers":[{id:"simpleant:passify"}]}]}] \
    run attribute @s minecraft:follow_range modifier remove simpleant:passify

# re-gain invis if it lost it
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run effect give @s invisibility infinite 1 true

# not hurt by bait or queen
execute on attacker if entity @s[type=bat,tag=simpleant.bait] run return 0
$execute on attacker if entity @s[type=spider,tag=simpleant.ant_queen_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}}] \
    run return 0

# alert nearest worker and another super major if attacker isn't bait or queen
$execute on attacker run damage @n[type=spider,tag=simpleant.ant_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..8,tag=!simpleant.has_bait] 0 simpleant:bait_aggro by @s
$execute on attacker run damage @n[type=spider,tag=simpleant.super_major_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=0.5..8,predicate=!simpleant:has_target] 0 simpleant:bait_aggro by @s

# if ant was targeting a queen
execute if entity @s[nbt={attributes:[{id:"minecraft:follow_range","modifiers":[{id:"simpleant:woker_go_queen"}]}]}] \
    run attribute @s minecraft:follow_range modifier remove simpleant:woker_go_queen