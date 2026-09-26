# Simple Ant datapack

## Description

### Minecraft Datapack that adds ants with simplistic behavior to your world !

> [!WARNING]
> This datapack require a resourcepack [link](https://modrinth.com/datapack/simple-ant/versions)
>
> Current version work for `Minecraft 1.21.11 to 26.3`

## Features

**This datapack has a config wich you can access it via `/function simpleant:_admin/_set_config`**

**The datapack feature 3 types of ants ! Which have randomized colors !**
Ants of the same color mean they are from the same colony

- **Worker ant** :
This ant is responsible to scavenge food and give it to the queen
<p align="center">
  <img src="https://github.com/Julien2744/Simple-Ant/blob/main/github_asset/worker.jpg?raw=true" alt="worker image" width="500">
</p>


- **Super Major ant** :
They are the one who's main job is to protect the queen and workers. They only attack when aggro or when they detect a mob that is targeting an ant queen
<p align="center">
  <img src="https://github.com/Julien2744/Simple-Ant/blob/main/github_asset/super_major.jpg?raw=true" alt="worker image" width="500">
</p>

- **Queen ant** :
The most important ant in the colony
<p align="center">
  <img src="https://github.com/Julien2744/Simple-Ant/blob/main/github_asset/ant_queen.jpg?raw=true" alt="worker image" width="500">
</p>

You can find a starting colony inside an **ant mound**, wich generate frequently around the world
<p align="center">
  <img src="https://github.com/Julien2744/Simple-Ant/blob/main/github_asset/ant_mound.jpg?raw=true" alt="worker image" width="750">
</p>

### About Optimization

Optimization wise, the datapack is pretty perfoment, here a screenshot where I have a queen with 500 ants without any others mods (note: my system specs are far from the greatest):

<details>
<summary>screenshot</summary>

![screenshot](https://github.com/Julien2744/Simple-Ant/blob/main/github_asset/stress_test.jpg)

</details>

> [!NOTE]
> Only 200 workers can be ticked at once, this can only be change by modifying the files
>
> Every queens have a max amount of Workers and Super Majors, this can be change in the config

## Other Informations

> [!NOTE]
> Because I'm using a Spider as the base for the ant, *spiders no longer have their eyes glow and no longer appear when the spider is invisible*.

Also because I'm using a Spider as the base for the ant, **any mod/datapack that modify the behavior of spiders will affect the ants**, except if those allowed me to blacklist the ant from guetting any modification.

And also because of Spider behavior, the ants pathfiding are absolutly horrendous, and they tend to be aggresive at night if you get too close to them.

<details>
<summary>List of mods/datapacks where I-ve made the datapack compatible with</summary>

    - Crop & Kettle (workers can pick items from the datapack)
    - Farmer's Delight Refabricated [REQUIRE ADDON] (workers can pick items from the mod)
    - Hostile Mobs Improve Over Time (ants will not affected)
    - Random Mob Sizes (ant wills not be affected)
</details>

_

<details>
<summary>List of mods/datapacks that I know cause issues</summary>

    - Mob AI Tweaks (IF gamerule mob-ai-tweaks:crazy_mobs true)
    - Spiders Produce Webs
</details>