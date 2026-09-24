playsound minecraft:entity.silverfish.hurt hostile @a[distance=..8] ~ ~ ~ 1 0.6

# re-gain invis if it lost it
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run effect give @s invisibility infinite 1 true

# alarm colony
execute on attacker if entity @s[tag=!simpleant.bait] run tag @s[distance=..8] add simpleant.hurt_queen
execute if entity @n[tag=simpleant.hurt_queen,distance=..8] run function simpleant:ants/queen/alert_colony with entity @s data
tag @n[tag=simpleant.hurt_queen,distance=..8] remove simpleant.hurt_queen

# removed home baited tag
execute unless entity @s[tag=simpleant.home_baited] run tag @s remove simpleant.home_baited