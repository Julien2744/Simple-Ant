# check in a 116 horizontal distance is a player is near
execute at @p[distance=..512] unless predicate simpleant:player_near run return 0

# go back home if went to far
execute on vehicle unless predicate simpleant:has_target run function simpleant:ants/super_major/check_home_distance

# because of check home distance
execute if entity @s[tag=simpleant.has_bait] run tag @s remove simpleant.has_bait

# attempt to unstuck the ant
execute on vehicle if predicate simpleant:has_target if entity @s[nbt={OnGround:0b}] run function simpleant:ants/worker/try_unstuck_1m