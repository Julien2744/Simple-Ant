# tp if close to home
#$execute if data entity @s {Pos:$(previous_pos)} positioned $(home_pos_x) $(home_pos_y) $(home_pos_z) \
    if entity @s[distance=..16] run say tp home
$execute if data entity @s {Pos:$(previous_pos)} positioned $(home_pos_x) $(home_pos_y) $(home_pos_z) \
    if entity @s[distance=..12] run tp @s ~ ~ ~ 0 0

# if the queen if to far from home
$execute if data entity @s {Pos:$(previous_pos)} positioned $(home_pos_x) $(home_pos_y) $(home_pos_z) \
    unless entity @s[distance=..12] run return run kill @s

#fix model
execute on passengers run data merge entity @s {Rotation:[0,0]}

# get previous pos
$execute unless data entity @s {Pos:$(previous_pos)} run data modify entity @s data.previous_pos set from entity @s Pos