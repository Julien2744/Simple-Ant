# execute as model

execute as @e[type=item,distance=..10,predicate=simpleant:valuable_item_component_high,limit=8,sort=random] at @s \ 
    run function #simpleant:get_item_high_value

execute as @e[type=item,distance=..10,predicate=simpleant:valuable_item_component_medium,limit=8,sort=random] at @s \ 
            run function #simpleant:get_item_medium_value

execute as @e[type=item,distance=..10,predicate=simpleant:valuable_item_component_low,limit=8,sort=random] at @s \ 
            run function #simpleant:get_item_low_value