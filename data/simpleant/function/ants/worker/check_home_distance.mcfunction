# $execute positioned $(queen_pos_x) $(queen_pos_y) $(queen_pos_z) \
#     unless entity @s[distance=..32] run say too far

# tag model to prevent one_second.mcfunction from messing with the others tag
$execute positioned $(queen_pos_x) $(queen_pos_y) $(queen_pos_z) \
    unless entity @s[distance=..32] on passengers run tag @s add simpleant.far_from_home

# target queen if too far
$execute positioned $(queen_pos_x) $(queen_pos_y) $(queen_pos_z) \
    unless entity @s[distance=..32] positioned as @s run function simpleant:ants/worker/bait_to_queen with entity @s data