$scoreboard players set #simpleant.config simpleant.config.max_nutrition $(value)

# check incorrect value
execute unless score #simpleant.config simpleant.config.max_nutrition matches 10..10000 \
    run function simpleant:config/error_message {msg:"Error: value must be bewteen 10 and 10 000 inclusive"}
execute unless score #simpleant.config simpleant.config.max_nutrition matches 10..10000 \
    run scoreboard players set #simpleant.config simpleant.config.max_nutrition 255

function simpleant:config/queen/menu