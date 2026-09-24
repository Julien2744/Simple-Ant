$scoreboard players set #simpleant.config simpleant.config.worker_cost $(value)

# check incorrect value
execute unless score #simpleant.config simpleant.config.worker_cost matches 0..100000 \
    run function simpleant:config/error_message {msg:"Error: value must be bewteen 0 and 100 000 inclusive"}
execute unless score #simpleant.config simpleant.config.worker_cost matches 0..100000 \
    run scoreboard players set #simpleant.config simpleant.config.worker_cost 2

function simpleant:config/queen/menu