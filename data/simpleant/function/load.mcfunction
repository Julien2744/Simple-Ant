## ------ Simple ants Datapack ------ ##
# Minecraft version: 26.2
# datapack version: beta-1
# resourcepack version: v1
# 
# scoreboard version: 1
##

scoreboard objectives add simpleant.load_scoreboard dummy

## auto update ##
scoreboard objectives add simpleant.scoreboard_version dummy

execute if score #simpleant.global simpleant.load_scoreboard matches 1 \
    run execute unless score #simpleant.global simpleant.scoreboard_version matches 1 \
        run function simpleant:initialisation/init_scoreboards

execute unless score #simpleant.global simpleant.load_scoreboard matches 1 run function simpleant:initialisation/init_scoreboards

## check for missing mod ##
scoreboard objectives add simpleant.depedency_check dummy
scoreboard players set #simpleant.global simpleant.depedency_check 0
function simpleant:check_depedency
# mod isn't added
execute unless score #simpleant.global simpleant.depedency_check matches 1 \
    run function simpleant:no_depedency_warning

#say simpleant reloaded