# order is a bit important

execute align xz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 if block ~ ~ ~ #minecraft:leaves run return run tp ~ ~-0.5 ~
execute align xz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 if block ~ ~ ~ #minecraft:air run return run tp ~ ~-0.5 ~
execute align xz positioned ~0.5 ~0.5 ~0.5 positioned ^1 ^ ^1 if block ~ ~ ~ #minecraft:air run return run tp ~ ~-0.5 ~
execute align xz positioned ~0.5 ~0.5 ~0.5 positioned ^-1 ^ ^1 if block ~ ~ ~ #minecraft:air run return run tp ~ ~-0.5 ~
execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:leaves run return run tp ~ ~ ~
execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:leaves run return run tp ~ ~ ~