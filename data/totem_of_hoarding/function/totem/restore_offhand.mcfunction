# summon armor stand to store player offhand item
tag @s add totem_of_hoarding.current_main
execute positioned ~ ~1000 ~ summon minecraft:armor_stand run function totem_of_hoarding:totem/set_offhand_item with storage totem_of_hoarding:master
tag @s remove totem_of_hoarding.current_main