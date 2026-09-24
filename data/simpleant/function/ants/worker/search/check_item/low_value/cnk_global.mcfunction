# check if item is a crop and kettle ingredient/food and has nutrition field
execute if data entity @s Item.components."minecraft:custom_data".cnk.ingredient \
        if data entity @s Item.components."minecraft:food".nutrition \
            run execute store result score @s simpleant.queen.nutrition run data get entity @s Item.components."minecraft:food".nutrition

# check if nutrition match the corresponding values (yes I'm re-using the scoreboard simpleant.queen.nutrition)
execute if score @s simpleant.queen.nutrition matches 1..3 \
    run function simpleant:ants/worker/search/check_item/tag_item_value {value:"low"}