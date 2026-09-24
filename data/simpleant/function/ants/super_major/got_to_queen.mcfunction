#say got to queen

# forget target
attribute @s minecraft:follow_range modifier add simpleant:forget_target -99999 add_value
tag @s add simpleant.cant_target

# remove follow range buff
attribute @s minecraft:follow_range modifier remove simpleant:woker_go_queen
attribute @s minecraft:attack_damage modifier remove simpleant:queen_baited