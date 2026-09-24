# summon
summon spider ~ ~ ~ { \
    PersistenceRequired:1b, \
    Silent:1b, \
    Health:15f, \
    DeathLootTable:"simpleant:empty", \
    Tags:["simpleant.entity","simpleant.super_major","simpleant.super_major_hitbox"], \
    CustomName:"Super Major", \
    data:{\
        queen_pos_x:0, queen_pos_y:0, queen_pos_z:0,\
        previous_pos:[0.0f,0.0f,0.0f],\
        ant_colony_id:0,\
        attack_damage:4.0f\
    }, \
    active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}], \
    attributes:[{id:"minecraft:scale",base:0.65},{id:"minecraft:follow_range",base:16},{id:"minecraft:attack_damage",base:4.0f},{id:"minecraft:max_health",base:15}], \
    Passengers:[ \
        { \
            id:"minecraft:item_display", \
            Tags:["simpleant.super_major","simpleant.super_major_model"], \
            CustomName:"super_major_model", \
            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.07,0f],scale:[1f,1f,1f]}, \
            item:{id:"minecraft:brown_dye",count:1,components:{"minecraft:item_model":"simpleant:super_major"}} \
        } \
    ] \
}

# modify ant colony ID
$data merge entity @n[type=item_display,tag=simpleant.super_major_model,distance=..1] {item:{components:{"minecraft:dyed_color": $(ant_colony_id) }}}
$data modify entity @n[type=spider,tag=simpleant.super_major_hitbox,distance=..1] data.ant_colony_id set value $(ant_colony_id)

execute as @n[type=item_display,tag=simpleant.super_major_model,distance=..1] at @s run function simpleant:ants/super_major/set_scoreboard