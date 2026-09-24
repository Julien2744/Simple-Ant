execute if entity @s[\
    nbt={Item:{\
        id:"minecraft:stick",\
        components:{"minecraft:custom_data":{"simpleant":"test_component"}}\
    }}\
] run function simpleant:ants/worker/search/check_item/tag_item_value {value:"medium"}