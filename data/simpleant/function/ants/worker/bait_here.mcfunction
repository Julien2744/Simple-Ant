# execute as hitbox

execute on passengers run tag @s add simpleant.has_bait
$execute on passengers run tag @s add simpleant.bait_type.$(baitType)
#$say got bait (simpleant.bait_type.$(baitType))

execute unless entity @n[type=bat,tag=simpleant.bait,distance=..2] run \
    summon bat ~ ~-0.5 ~ {\
        PersistenceRequired:1b,\
        NoAI:1b,\
        Silent:1b,\
        Glowing:0b,\
        Tags:["simpleant.entity","simpleant.bait","smithed.strict"],\
        active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:5,duration:-1,show_particles:0b}],\
        attributes:[{id:"minecraft:scale",base:0.065}]\
    }

execute as @n[type=bat,tag=simpleant.bait,distance=..1] run function simpleant:compability_tags

$tag @n[type=bat,tag=simpleant.bait,distance=..2] add simpleant.bait.$(baitType)
#tag @s add simpleant.bait_hurt
damage @s 0 simpleant:bait_aggro by @n[type=bat,tag=simpleant.bait,distance=..2]