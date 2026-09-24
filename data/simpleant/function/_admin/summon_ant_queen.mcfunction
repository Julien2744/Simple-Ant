# summon
summon spider ~ ~ ~ { \
    PersistenceRequired:1b, \
    Silent:1b, \
    Health:20f, \
    DeathLootTable:"simpleant:empty", \
    Tags:["simpleant.entity","simpleant.ant_queen","simpleant.ant_queen_hitbox"], \
    CustomName:"Ant Queen", \
    data:{\
        home_pos_x:0, home_pos_y:0, home_pos_z:0,\
        previous_pos:[0.0f,0.0f,0.0f],\
        ant_colony_id:0,\
        attack_damage:2.0f\
    }, \
    active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}], \
    attributes:[{id:"minecraft:scale",base:0.75},{id:"minecraft:follow_range",base:8},{id:"minecraft:attack_damage",base:2.0f},{id:"minecraft:max_health",base:20},{id:"movement_speed",base:0.275f}], \
    Passengers:[ \
        { \
            id:"minecraft:item_display", \
            Tags:["simpleant.ant_queen","simpleant.ant_queen_model"], \
            CustomName:"ant_queen_model", \
            transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.08,0f],scale:[1f,1f,1f]}, \
            item:{id:"minecraft:brown_dye",count:1,components:{"minecraft:item_model":"simpleant:ant_queen"}} \
        } \
    ] \
}

# modify ant colony ID
$data merge entity @n[type=item_display,tag=simpleant.ant_queen_model,distance=..1] {item:{components:{"minecraft:dyed_color": $(ant_colony_id) }}}
$data modify entity @n[type=spider,tag=simpleant.ant_queen_hitbox,distance=..1] data.ant_colony_id set value $(ant_colony_id)

# random chance to be enchanted
execute if predicate simpleant:random/1_2048 as @n[type=item_display,tag=simpleant.ant_queen_model,distance=..1] at @s \
    run function simpleant:ants/enchant

execute as @n[type=item_display,tag=simpleant.ant_queen_model,distance=..1] at @s run function simpleant:ants/queen/set_scoreboard