# summon
summon spider ~ ~ ~ { \
    PersistenceRequired:1b, \
    Silent:1b, \
    Health:5f, \
    DeathLootTable:"simpleant:empty", \
    Tags:["simpleant.entity","simpleant.ant","simpleant.ant_hitbox"], \
    CustomName:"Ant", \
    data:{ \
        queen_pos_x:0, queen_pos_y:0, queen_pos_z:0,\
        previous_pos:[0.0f,0.0f,0.0f],\
        poi_pos:{x:0,z:0},\
        ant_colony_id:0,\
        attack_damage:1.0f,\
        held_food_value:0\
    }, \
    active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}], \
    attributes:[{id:"minecraft:scale",base:0.52},{id:"minecraft:follow_range",base:14},{id:"minecraft:attack_damage",base:1.0f},{id:"minecraft:max_health",base:5}], \
    Passengers:[ \
        { \
            id:"minecraft:item_display", \
            Tags:["simpleant.ant","simpleant.ant_model"], \
            CustomName:"ant_model", \
            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[1f,1f,1f]}, \
            item:{id:"minecraft:brown_dye",count:1,components:{"minecraft:item_model":"simpleant:ant"}}, \
            Passengers:[ \
                { \
                    id:"minecraft:item_display", \
                    Tags:["simpleant.ant","simpleant.ant_inventory"], \
                    transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.175f,0.6f],scale:[0.25f,0.25f,0.25f]}, \
                    CustomName:"ant_inventory", \
                    item:{id:"minecraft:dirt",count:1}, \
                    view_range: 0f \
                } \
            ] \
        } \
    ] \
}

# modify ant colony ID
$data merge entity @n[type=item_display,tag=simpleant.ant_model,distance=..1] {item:{components:{"minecraft:dyed_color": $(ant_colony_id) }}}
$data modify entity @n[type=spider,tag=simpleant.ant_hitbox,distance=..1] data.ant_colony_id set value $(ant_colony_id)

execute as @n[type=item_display,tag=simpleant.ant_model,distance=..1] at @s run function simpleant:ants/worker/set_scoreboard