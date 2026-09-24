tellraw @s [{"text":" "}]
tellraw @s {"text":"👑 Queen ant Config 👑"}
tellraw @s [{"text":" "}]

# max worker
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"⛏ "},{"color":"white","text":"Max worker : "},{"click_event":{"action":"suggest_command","command":"/function simpleant:config/queen/set_max_worker {value:...}"},"color":"#005FEE","score":{"name":"#simpleant.config","objective":"simpleant.config.max_worker"},"underlined":true},{"color":"#005FEE","italic":false,"text":"  "},{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Maximum number of Worker that a queen ant can have\ndefault 16"}]},"text":"ⓘ"}]

# worker wost
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"⛀ "},{"color":"white","text":"Worker cost : "},{"click_event":{"action":"suggest_command","command":"/function simpleant:config/queen/set_worker_cost {value:...}"},"color":"#005FEE","score":{"name":"#simpleant.config","objective":"simpleant.config.worker_cost"},"underlined":true},{"color":"#005FEE","italic":false,"text":"  "},{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Nutrition cost of a Worker\ndefault 2"}]},"text":"ⓘ"}]

# max super major
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🗡 "},{"color":"white","text":"Max super major : "},{"click_event":{"action":"suggest_command","command":"/function simpleant:config/queen/set_max_super_major {value:...}"},"color":"#005FEE","score":{"name":"#simpleant.config","objective":"simpleant.config.max_super_major"},"underlined":true},{"color":"#005FEE","italic":false,"text":"  "},{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Maximum number of Super Major that a queen ant can have\ndefault 8"}]},"text":"ⓘ"}]

# super major wost
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"⛁ "},{"color":"white","text":"Super Major cost : "},{"click_event":{"action":"suggest_command","command":"/function simpleant:config/queen/set_super_major_cost {value:...}"},"color":"#005FEE","score":{"name":"#simpleant.config","objective":"simpleant.config.super_major_cost"},"underlined":true},{"color":"#005FEE","italic":false,"text":"  "},{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Nutrition cost of a Super Major\ndefault 5"}]},"text":"ⓘ"}]

# keet at end
function simpleant:config/back_to_main