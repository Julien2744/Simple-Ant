data modify entity @s CustomName set from entity @n[type=minecraft:spider,tag=simpleant.entity,distance=..0.25] CustomName 
data modify entity @s CustomNameVisible set value 1b

# easter egg
execute if entity @s[tag=simpleant.ant_model,nbt=!{CustomName:"Antenna"},nbt={item:{components:{"minecraft:item_model":"simpleant:antenna"}}}] run return run data modify entity @s item.components."minecraft:item_model" set value "simpleant:ant"
execute if entity @s[tag=simpleant.ant_model,nbt={CustomName:"Antenna"}] run data modify entity @s item.components."minecraft:item_model" set value "simpleant:antenna"