# order is a bit important

execute positioned ^ ^ ^1 if block ~ ~ ~ #minecraft:leaves align xyz run return run tp ~0.5 ~0.5 ~0.5
execute positioned ^1 ^ ^1 if block ~ ~ ~ #minecraft:air align xyz run return run tp ~0.5 ~0.5 ~0.5
execute positioned ^-1 ^ ^1 if block ~ ~ ~ #minecraft:air align xyz run return run tp ~0.5 ~0.5 ~0.5
execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:leaves align xyz run return run tp ~0.5 ~0.5 ~0.5
execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:leaves align xyz run return run tp ~0.5 ~0.5 ~0.5