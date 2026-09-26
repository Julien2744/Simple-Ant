execute if entity @s[\
    nbt={Item:{\
        components:{"minecraft:custom_data":{myriad:{id:"resin_candy"}}}\
    }}\
] run function simpleant:ants/worker/search/check_item/tag_item_value {value:"high"}