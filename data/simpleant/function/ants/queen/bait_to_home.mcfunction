execute unless entity @n[type=bat,tag=simpleant.queen_bait,distance=..1] run \
    summon bat ~ ~ ~ {\
        PersistenceRequired:1b,\
        NoAI:1b,\
        Silent:1b,\
        Glowing:0b,\
        Tags:["simpleant.bait","simpleant.queen_bait","smithed.strict"],\
        active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:5,duration:-1,show_particles:0b}],\
        attributes:[{id:"minecraft:scale",base:0.065}]\
    }

execute as @n[type=bat,tag=simpleant.queen_bait,distance=..1] run function simpleant:compability_tags

tag @s add simpleant.home_baited
damage @s 0 simpleant:bait_aggro by @n[type=bat,tag=simpleant.queen_bait,distance=..1]
attribute @s minecraft:follow_range modifier add simpleant:go_home 128 add_value

# teleport the bait to home
$data modify entity @n[type=bat,tag=simpleant.queen_bait,distance=..1] Pos set value [$(home_pos_x), $(home_pos_y), $(home_pos_z)]