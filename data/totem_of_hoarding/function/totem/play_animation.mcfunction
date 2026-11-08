# skip in creative and spectator
execute if entity @s[gamemode=!survival,gamemode=!adventure] run return run tag @s remove totem_of_hoarding.animation_scheduled

# revoke advanement
advancement revoke @s only totem_of_hoarding:totem_of_hoarding

# store offhand item
data remove storage totem_of_hoarding:master offhand_item
data modify storage totem_of_hoarding:master offhand_item set from entity @s equipment.offhand

# play animation
tag @s add totem_of_hoarding.block_advancement
item replace entity @s weapon.offhand with minecraft:totem_of_undying[minecraft:item_model="totem_of_hoarding:totem_of_hoarding"]
execute store success storage totem_of_hoarding:master success byte 1 run damage @s 10000 minecraft:dragon_breath
tag @s remove totem_of_hoarding.block_advancement

# clear effects
effect clear @s minecraft:absorption
effect clear @s minecraft:regeneration
effect clear @s minecraft:fire_resistance

# restore health
effect give @s minecraft:instant_health 1 10 true

# restore offhand
execute unless score @s totem_of_hoarding.detected_slot matches -1 if data storage totem_of_hoarding:master offhand_item run function totem_of_hoarding:totem/restore_offhand

# check success
execute if data storage totem_of_hoarding:master {success:0b} run return fail

# give advancement
advancement grant @s only totem_of_hoarding:use_hoarding_totem

# clear hotbar slot
execute if score @s totem_of_hoarding.detected_slot matches 0.. run function totem_of_hoarding:totem/clear_hotbar_slot/init

# remove tags
tag @s remove totem_of_hoarding.animation_scheduled