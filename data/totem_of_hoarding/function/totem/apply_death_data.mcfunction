# add detection for totem death
tag @s add totem_of_hoarding.animation_scheduled
scoreboard players set @s totem_of_hoarding.alive_timer 2

# check for hand
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:item_model="totem_of_hoarding:totem_of_hoarding"] run return run execute store result score @s totem_of_hoarding.detected_slot run data get entity @s SelectedItemSlot
scoreboard players set @s totem_of_hoarding.detected_slot -1