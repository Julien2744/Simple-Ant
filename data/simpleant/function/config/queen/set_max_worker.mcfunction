$scoreboard players set #simpleant.config simpleant.config.max_worker $(value)

# check incorrect value
execute unless score #simpleant.config simpleant.config.max_worker matches 0..10000 \
    run function simpleant:config/error_message {msg:"Error: value must be bewteen 0 and 10 000 inclusive"}
execute unless score #simpleant.config simpleant.config.max_worker matches 0..10000 \
    run scoreboard players set #simpleant.config simpleant.config.max_worker 16

function simpleant:config/queen/menu