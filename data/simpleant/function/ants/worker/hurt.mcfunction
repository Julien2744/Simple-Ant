playsound minecraft:entity.parrot.imitate.silverfish hostile @a[distance=..8] ~ ~ ~

# de-passify the ant
execute if entity @s[nbt={attributes:[{id:"minecraft:follow_range","modifiers":[{id:"simpleant:passify"}]}]}] \
    run attribute @s minecraft:follow_range modifier remove simpleant:passify

# re-gain invis if it lost it
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run effect give @s invisibility infinite 1 true

# pop item unless attackerer is bait or queen
$execute on attacker unless entity @s[type=bat,tag=simpleant.bait] unless entity @s[type=spider,tag=simpleant.ant_queen_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}}] \
    as @n[type=spider,tag=simpleant.ant_hitbox,distance=..0.5] on passengers if entity @s[tag=simpleant.has_item] \
    on passengers unless entity @s[nbt={view_range:0f}] run function simpleant:ants/worker/pop_held_item

# alert nearest super major and another worker if attacker isn't bait or queen
$execute on attacker unless entity @s[type=bat,tag=simpleant.bait] unless entity @s[type=spider,tag=simpleant.ant_queen_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}}] \
    run damage @n[type=spider,tag=simpleant.super_major_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..8,predicate=!simpleant:has_target] 0 simpleant:bait_aggro by @s

$execute on attacker unless entity @s[type=bat,tag=simpleant.bait] unless entity @s[type=spider,tag=simpleant.ant_queen_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}}] \
    run damage @n[type=spider,tag=simpleant.ant_hitbox,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=0.5..8,tag=!simpleant.has_bait] 0 simpleant:bait_aggro by @s