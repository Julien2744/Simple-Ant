# link color : #005FEE
# ⓘ

function simpleant:config/filler

# title
tellraw @s [{"bold":true,"color":"#765143","text":"🐜"},{"bold":true,"color":"#765143","text":" Simple Ant config"},{"bold":false,"color":"gray","text":" beta-2"},{"bold":true,"color":"#765143","text":" 🐜"}]
tellraw @s [{"text":" "}]

# links
tellraw @s ["   ",{"shadow_color":-16752658,"text":"Links :"},"     ",{"click_event":{"action":"open_url","url":"https://smithed.net/packs"},"shadow_color":-14989116,"text":"[smithed]"},"   ",{"click_event":{"action":"open_url","url":"https://modrinth.com/datapack/simple-ant"},"shadow_color":-16732324,"text":"[modrinth]"},"   ",{"click_event":{"action":"open_url","url":"https://www.curseforge.com/members/creeperj2_0/projects"},"shadow_color":-1351125,"text":"[curseforge]"}]
#tellraw @s ["   ",{"color":"#005FEE","text":"Links :"},"     ",{"click_event":{"action":"open_url","url":"https://smithed.net/packs"},"color":"#1b48c4","text":"[smithed]"},"   ",{"click_event":{"action":"open_url","url":"https://modrinth.com/datapack/simple-ant"},"color":"#00AF5C","text":"[modrinth]"},"   ",{"click_event":{"action":"open_url","url":"https://www.curseforge.com/minecraft/mc-mods/the-ice-warrior"},"color":"#eb622b","text":"[curseforge]"}]
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