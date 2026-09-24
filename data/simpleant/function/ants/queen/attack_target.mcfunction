execute store result entity @s data.attack_damage float 1 run attribute @s attack_damage get
scoreboard players set @s simpleant.attack_cooldown 25

# if target was home_bait - remove extended follow range
execute if entity @s[tag=simpleant.home_baited] if entity @n[type=bat,tag=simpleant.queen_bait,distance=..2] \
    run return run function simpleant:ants/queen/got_home

execute on target run tag @s[distance=..2] add simpleant.target
function simpleant:ants/queen/deal_damage_target with entity @s data
tag @n[tag=simpleant.target,distance=..3] remove simpleant.target

# alert colony
execute on target run tag @s[distance=..8] add simpleant.hurt_queen
function simpleant:ants/queen/alert_colony with entity @s data
tag @n[tag=simpleant.hurt_queen,distance=..8] remove simpleant.hurt_queen