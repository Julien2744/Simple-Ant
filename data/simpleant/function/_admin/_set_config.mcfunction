
# ⓘ

function simpleant:config/filler
playsound minecraft:ui.button.click neutral @s

# title
tellraw @s [{"bold":true,"color":"#765143","text":"🐜"},{"bold":true,"color":"#765143","text":" Simple Ant config"},{"bold":false,"color":"gray","text":" beta-0.1"},{"bold":true,"color":"#765143","text":" 🐜"}]
tellraw @s [{"text":" "}]

# global
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🛠 "},{"click_event":{"action":"run_command","command":"function simpleant:config/global/menu"},"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Global config of the datapack"}]},"text":"Global"}]
tellraw @s [{"text":" "}]

# worker
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"⛏ "},{"click_event":{"action":"run_command","command":"function simpleant:config/worker/menu"},"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Config for the worker type ant"}]},"text":"Worker"}]
tellraw @s [{"text":" "}]

# super major
tellraw @p [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🗡 "},{"click_event":{"action":"run_command","command":"function simpleant:config/super_major/menu"},"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Config for the super major type ant"}]},"text":"Super Major"}]
tellraw @s [{"text":" "}]

# queen
tellraw @p [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"👑 "},{"click_event":{"action":"run_command","command":"function simpleant:config/queen/menu"},"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Config for the queen type ant"}]},"text":"Queen"}]
tellraw @s [{"text":" "}]