$scoreboard players set #simpleant.config simpleant.config.worker_search_count $(value)

# check incorrect value
execute unless score #simpleant.config simpleant.config.worker_search_count matches 1..127 \
    run function simpleant:config/error_message {msg:"Error: value must be bewteen 1 and 127 inclusive"}
execute unless score #simpleant.config simpleant.config.worker_search_count matches 1..127 \
    run scoreboard players set #simpleant.config simpleant.config.worker_search_count 6

function simpleant:config/worker/menu