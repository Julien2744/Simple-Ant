# execute as hitbox

scoreboard players set @s simpleant.attack_cooldown 20

# if target was queen feed
execute if predicate simpleant:has_target_queen run return run function simpleant:ants/worker/got_to_queen with entity @s data

execute store result entity @s data.attack_damage float 1 run attribute @s attack_damage get
execute on target run tag @s[distance=..2] add simpleant.target
function simpleant:ants/worker/deal_damage_target with entity @s data
tag @n[tag=simpleant.target,distance=..3] remove simpleant.target