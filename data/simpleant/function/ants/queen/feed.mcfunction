playsound minecraft:entity.armadillo.eat hostile @a[distance=..8] ~ ~ ~
$particle minecraft:composter ~ ~ ~ 0.2 0.2 0.2 1 $(amount) normal

#$execute on passengers if entity @s[type=item_display,tag=simpleant.ant_queen_model] run say $(amount)
$execute on passengers if entity @s[type=item_display,tag=simpleant.ant_queen_model] run scoreboard players add @s simpleant.queen.nutrition $(amount)

# give hp
execute store result score @s simpleant.queen.health run data get entity @s Health
$scoreboard players add @s simpleant.queen.health $(amount)
execute store result entity @s Health float 1 run scoreboard players get @s simpleant.queen.health