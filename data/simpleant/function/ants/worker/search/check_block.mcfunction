#particle angry_villager ~ ~ ~

execute if block ~ ~ ~ #simpleant:high_value run return run function simpleant:ants/worker/bait_here {baitType:"block"}
execute if block ~ ~-0.5 ~ #simpleant:high_value run return run function simpleant:ants/worker/bait_here {baitType:"block"}

execute if block ~ ~ ~ #simpleant:medium_value run return run function simpleant:ants/worker/bait_here {baitType:"block"}
execute if block ~ ~0.5 ~ #simpleant:medium_value run return run function simpleant:ants/worker/bait_here {baitType:"block"}

execute if block ~ ~ ~ #simpleant:low_value run return run function simpleant:ants/worker/bait_here {baitType:"block"}
execute if block ~ ~0.5 ~ #simpleant:low_value run return run function simpleant:ants/worker/bait_here {baitType:"block"}