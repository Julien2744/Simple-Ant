## --- global --- ##
scoreboard objectives add simpleant.math.item_count dummy

## --- config --- ##
# bool
scoreboard objectives add simpleant.config.show_bait_location dummy
# bool
scoreboard objectives add simpleant.config.stop_marker_tick dummy
scoreboard objectives add simpleant.config.bait_exist_duration dummy
scoreboard objectives add simpleant.config.max_worker dummy
scoreboard objectives add simpleant.config.max_super_major dummy
scoreboard objectives add simpleant.config.worker_cost dummy
scoreboard objectives add simpleant.config.super_major_cost dummy
scoreboard objectives add simpleant.config.worker_search_cooldown dummy
scoreboard objectives add simpleant.config.worker_search_count dummy
# bool
scoreboard objectives add simpleant.config.worker_stop_search dummy

## --- ants --- ##
# - global
scoreboard objectives add simpleant.attack_cooldown dummy
# - queen
scoreboard objectives add simpleant.queen.nutrition dummy
scoreboard objectives add simpleant.queen.health dummy
scoreboard objectives add simpleant.queen.worker_count dummy
scoreboard objectives add simpleant.queen.super_major_count dummy
# - super major
# - worker
scoreboard objectives add simpleant.worker.search_cooldown dummy
scoreboard objectives add simpleant.worker.search_count dummy
# - bait
scoreboard objectives add simpleant.exist dummy

## --- initialisation --- ##
# - global
# - config
scoreboard players set #simpleant.config simpleant.config.show_bait_location 0
scoreboard players set #simpleant.config simpleant.config.stop_marker_tick 0
scoreboard players set #simpleant.config simpleant.config.bait_exist_duration 120
scoreboard players set #simpleant.config simpleant.config.max_worker 16
scoreboard players set #simpleant.config simpleant.config.max_super_major 8
scoreboard players set #simpleant.config simpleant.config.worker_cost 2
scoreboard players set #simpleant.config simpleant.config.super_major_cost 5
scoreboard players set #simpleant.config simpleant.config.worker_search_cooldown 150
scoreboard players set #simpleant.config simpleant.config.worker_search_count 6
scoreboard players set #simpleant.config simpleant.config.worker_stop_search 0

## --- scoreboard version --- ##
scoreboard players set #simpleant.global simpleant.scoreboard_version 1

# schedules
execute unless score #simpleant.global simpleant.load_scoreboard matches 1 run schedule function simpleant:four_tick 4t
execute unless score #simpleant.global simpleant.load_scoreboard matches 1 run schedule function simpleant:one_second 1s
execute unless score #simpleant.global simpleant.load_scoreboard matches 1 run schedule function simpleant:one_minute 60s
execute unless score #simpleant.global simpleant.load_scoreboard matches 1 run schedule function simpleant:ten_minute 600s

# mark initialisation has done
scoreboard players set #simpleant.global simpleant.load_scoreboard 1