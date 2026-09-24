# go back home if went to far
execute on vehicle unless predicate simpleant:has_target run function simpleant:ants/queen/check_home_distance with entity @s data

# if the queen ever get stuck on top of the ant mound because of spider horrible pathfinding
execute on vehicle if entity @s[tag=simpleant.home_baited] at @s positioned ~ ~-1.5 ~ if predicate simpleant:has_bait_target_near run function simpleant:ants/queen/unstuck_on_roof