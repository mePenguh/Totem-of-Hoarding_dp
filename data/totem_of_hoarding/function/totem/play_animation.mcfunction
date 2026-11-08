# delay by 1t
execute if score @s totem_of_hoarding.alive_timer matches 0.. run return run scoreboard players remove @s totem_of_hoarding.alive_timer 1

# store offhand item
data remove storage totem_of_hoarding:master offhand_item
data modify storage totem_of_hoarding:master offhand_item set from entity @s equipment.offhand

# play animation
item replace entity @s weapon.offhand with minecraft:totem_of_undying[minecraft:item_model="totem_of_hoarding:totem_of_hoarding"]
damage @s 10000 minecraft:dragon_breath

# give advancement
advancement grant @s only totem_of_hoarding:use_hoarding_totem

# clear effects
effect clear @s minecraft:absorption
effect clear @s minecraft:regeneration
effect clear @s minecraft:fire_resistance

# restore health
effect give @s minecraft:instant_health 1 10 true

# restore offhand
execute unless score @s totem_of_hoarding.detected_slot matches -1 if data storage totem_of_hoarding:master offhand_item run function totem_of_hoarding:totem/restore_offhand

# clear hotbar slot
execute if score @s totem_of_hoarding.detected_slot matches 0.. run function totem_of_hoarding:totem/clear_hotbar_slot/init

# remove tags
tag @s remove totem_of_hoarding.animation_scheduled