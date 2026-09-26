execute on vehicle run scoreboard players set @s simpleant.attack_cooldown 20
execute on vehicle run function simpleant:compability_tags
scoreboard players set @s simpleant.worker.search_cooldown 0
scoreboard players set @s simpleant.worker.search_count 0

# tag that prevent "bugged ant"
tag @s remove simpleant.newborn