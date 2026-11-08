# store items in bundle, then kill it to spread them
$summon minecraft:item ~ ~ ~ {Item:{components:{bundle_contents:$(inventory)},id:"minecraft:bundle"},Tags:["totem_of_hoarding.current_main"]}
execute as @e[type=minecraft:item,distance=..1,tag=totem_of_hoarding.current_main] run damage @s 1000 minecraft:cactus

# increase motion of items
execute as @e[type=minecraft:item,distance=..1,nbt={Age:0s}] run function totem_of_hoarding:drop_inventory/change_motion