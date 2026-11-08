# reset score
scoreboard players reset @s totem_of_hoarding.death

# check if player has totem
execute if items entity @s weapon.* minecraft:poisonous_potato[minecraft:item_model="totem_of_hoarding:totem_of_hoarding"] run return run function totem_of_hoarding:totem/apply_death_data

# drop inventory
function totem_of_hoarding:drop_inventory/init