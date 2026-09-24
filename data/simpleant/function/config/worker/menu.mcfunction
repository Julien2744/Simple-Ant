tellraw @s [{"text":" "}]
tellraw @s {"text":"⛏ Worker ant Config ⛏"}
tellraw @s [{"text":" "}]

# stop search
execute if score #simpleant.config simpleant.config.worker_stop_search matches 0 \
    run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🚫 "},{"color":"white","text":"Stop search : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function simpleant:config/worker/set_stop_search {value:1}"},"color":"white","sprite":"widget/checkbox_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Stop worker from searching block"}]},"text":"ⓘ"}]
execute if score #simpleant.config simpleant.config.worker_stop_search matches 1 \
    run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🚫 "},{"color":"white","text":"Stop search : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function simpleant:config/worker/set_stop_search {value:0}"},"color":"white","sprite":"widget/checkbox_selected_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Stop worker from searching block"}]},"text":"ⓘ"}]

# search cooldown
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🕒 "},{"color":"white","text":"Search cooldown : "},{"click_event":{"action":"suggest_command","command":"/function simpleant:config/worker/set_search_cooldown {value:...}"},"color":"#005FEE","score":{"name":"#simpleant.config","objective":"simpleant.config.worker_search_cooldown"},"underlined":true},{"color":"#005FEE","italic":false,"text":"t  "},{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Cooldown in tick for when the ant will search for block/item to gather\ndefault 150"}]},"text":"ⓘ"}]

# search count
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🔎 "},{"color":"white","text":"Search count : "},{"click_event":{"action":"suggest_command","command":"/function simpleant:config/worker/set_search_count {value:...}"},"color":"#005FEE","score":{"name":"#simpleant.config","objective":"simpleant.config.worker_search_count"},"underlined":true},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Number of blocks the ant will search\nNote: For optimisation reason the ant can only search 1block evry 4ticks\ndefault 6"}]},"text":"ⓘ"}]

# keet at end
function simpleant:config/back_to_main