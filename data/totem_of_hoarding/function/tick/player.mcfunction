# check if player respawned with animation scheduled
execute if entity @s[tag=totem_of_hoarding.animation_scheduled] unless data entity @s {Health:0.0f} run function totem_of_hoarding:totem/play_animation

# check if player died
execute if score @s totem_of_hoarding.death matches 1.. run function totem_of_hoarding:death