execute if entity @n[type=bat,tag=simpleant.queen_bait,distance=..1.25] \
    positioned as @n[type=bat,tag=simpleant.queen_bait,distance=..1.25] \
        run tp @s ~ ~ ~ 0.0 0.0

# fix model rotation
execute on passengers run data merge entity @s {Rotation:[0,0]}