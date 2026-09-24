# $execute positioned $(home_pos_x) $(home_pos_y) $(home_pos_z) \
    unless entity @s[distance=..8] run say too far
$execute positioned $(home_pos_x) $(home_pos_y) $(home_pos_z) \
    unless entity @s[distance=..8] positioned as @s run function simpleant:ants/queen/bait_to_home with entity @s data