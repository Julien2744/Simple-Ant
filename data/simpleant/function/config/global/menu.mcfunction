tellraw @s [{"text":" "}]
tellraw @s {"text":"🛠 Global Config 🛠"}
tellraw @s [{"text":" "}]

# stop colony marker ticking
execute if score #simpleant.config simpleant.config.stop_marker_tick matches 0 \
    run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🚫 "},{"color":"white","text":"Stop Marker ticking : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function simpleant:config/global/set_marker_ticking {value:1}"},"color":"white","sprite":"widget/checkbox_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Stop marker used in the datapack (ex. ant mount structure marker) from ticking"}]},"text":"ⓘ"}]
execute if score #simpleant.config simpleant.config.stop_marker_tick matches 1 \
    run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🚫 "},{"color":"white","text":"Stop Marker ticking : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function simpleant:config/global/set_marker_ticking {value:0}"},"color":"white","sprite":"widget/checkbox_selected_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Stop marker used in the datapack (ex. ant mount structure marker) from ticking"}]},"text":"ⓘ"}]

# show bait location
execute if score #simpleant.config simpleant.config.show_bait_location matches 0 \
    run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🪱 "},{"color":"white","text":"Show bait location : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function simpleant:config/global/set_show_bait_location {value:1}"},"color":"white","sprite":"widget/checkbox_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Show the location of bait (used to manipulate ant pathfinding) with minecraft:note particle"}]},"text":"ⓘ"}]
execute if score #simpleant.config simpleant.config.show_bait_location matches 1 \
    run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🪱 "},{"color":"white","text":"Show bait location : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function simpleant:config/global/set_show_bait_location {value:0}"},"color":"white","sprite":"widget/checkbox_selected_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Show the location of bait (used to manipulate ant pathfinding) with minecraft:note particle"}]},"text":"ⓘ"}]

# bait exist duration
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🕒 "},{"color":"white","text":"Bait exist duration : "},{"click_event":{"action":"suggest_command","command":"/function simpleant:config/global/set_bait_exist_duration {value:...}"},"color":"#005FEE","score":{"name":"#simpleant.config","objective":"simpleant.config.bait_exist_duration"},"underlined":true},{"color":"#005FEE","italic":false,"text":"s  "},{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Duration in second for how long a bait (used to manipulate ant pathfinding) can exist\ndefault 120"}]},"text":"ⓘ"}]

# keet at end
function simpleant:config/back_to_main