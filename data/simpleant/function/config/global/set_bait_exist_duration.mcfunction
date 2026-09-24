$scoreboard players set #simpleant.config simpleant.config.bait_exist_duration $(value)

# check incorrect value
execute unless score #simpleant.config simpleant.config.bait_exist_duration matches 1..1000000 \
    run function simpleant:config/error_message {msg:"Error: value must be bewteen 1 and 1 000 000 inclusive"}
execute unless score #simpleant.config simpleant.config.bait_exist_duration matches 1..1000000 \
    run scoreboard players set #simpleant.config simpleant.config.bait_exist_duration 120

function simpleant:config/global/menu