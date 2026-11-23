tellraw @s [{"text":" "}]
tellraw @s {"text":"🗡 Super Major ant Config 🗡"}
tellraw @s [{"text":" "}]

# check_danger
execute if score #simpleant.config simpleant.config.check_danger matches 0 \
    run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"👀 "},{"color":"white","text":"Check for danger : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function simpleant:config/super_major/set_check_danger {value:1}"},"color":"white","sprite":"widget/checkbox_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Every second check if there is something that is targeting an Ant Queen"}]},"text":"ⓘ"}]
execute if score #simpleant.config simpleant.config.check_danger matches 1 \
    run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"👀 "},{"color":"white","text":"Check for danger : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function simpleant:config/super_major/set_check_danger {value:0}"},"color":"white","sprite":"widget/checkbox_selected_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Every second check if there is something that is targeting an Ant Queen"}]},"text":"ⓘ"}]


# keet at end
function simpleant:config/back_to_main