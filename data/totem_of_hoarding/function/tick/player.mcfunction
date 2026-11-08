# check if player respawned with animation scheduled
execute if entity @s[tag=totem_of_hoarding.animation_scheduled] unless data entity @s {Health:0.0f} run function totem_of_hoarding:totem/play_animation

# check if player died
execute if score @s totem_of_hoarding.death matches 1.. run function totem_of_hoarding:death

# replace piglins
execute at @s if dimension minecraft:the_nether as @e[type=minecraft:piglin,tag=!totem_of_hoarding.tagged_piglin,distance=20..132] at @s run function totem_of_hoarding:piglin/init