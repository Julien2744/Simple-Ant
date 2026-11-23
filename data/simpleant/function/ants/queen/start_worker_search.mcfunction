execute on passengers run tag @s remove simpleant.full_filled
$execute as @e[type=minecraft:spider,tag=simpleant.ant,nbt={data:{ant_colony_id:$(ant_colony_id)}},distance=..312,limit=412] \
    on passengers run tag @s remove simpleant.full_filled