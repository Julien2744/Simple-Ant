scoreboard players set @s simpleant.attack_cooldown 25
data modify entity @s data.home_pos_x set from entity @s Pos[0]
data modify entity @s data.home_pos_y set from entity @s Pos[1]
data modify entity @s data.home_pos_z set from entity @s Pos[2]
function simpleant:compability_tags
# data modify entity @s home_pos set from entity @s Pos
# data modify entity @s home_radius set value 8