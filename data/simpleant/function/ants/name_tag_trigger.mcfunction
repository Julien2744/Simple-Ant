advancement revoke @s only simpleant:nametag_ant

# set custome name tag visble
execute anchored eyes positioned ^ ^ ^1 \
    as @n[type=minecraft:spider,tag=simpleant.entity,distance=..8] at @s on passengers run \
        function simpleant:ants/show_custom_name