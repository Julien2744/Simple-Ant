tag @s remove simpleant.home_baited
attribute @s minecraft:follow_range modifier remove simpleant:go_home
execute on target if entity @s[type=bat,tag=simpleant.queen_bait,distance=..2] run return run function simpleant:ants/kill_bait