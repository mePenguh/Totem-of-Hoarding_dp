# set own offhand item
data modify entity @s equipment.offhand set from storage totem_of_hoarding:master offhand_item

# set player offhand item to offhand item
item replace entity @p[tag=totem_of_hoarding.current_main] weapon.offhand from entity @s weapon.offhand

# clean kill
tp @s ~ ~-500 ~
kill @s