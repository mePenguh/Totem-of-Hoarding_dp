# store inventory
data modify storage totem_of_hoarding:master inventory set value []
data modify storage totem_of_hoarding:master inventory set from entity @s Inventory
execute if items entity @s weapon.offhand * run data modify storage totem_of_hoarding:master inventory append from entity @s equipment.offhand
execute if items entity @s saddle * run data modify storage totem_of_hoarding:master inventory append from entity @s equipment.saddle
execute if items entity @s armor.body * run data modify storage totem_of_hoarding:master inventory append from entity @s equipment.body
execute if items entity @s armor.head * run data modify storage totem_of_hoarding:master inventory append from entity @s equipment.head
execute if items entity @s armor.chest * run data modify storage totem_of_hoarding:master inventory append from entity @s equipment.chest
execute if items entity @s armor.legs * run data modify storage totem_of_hoarding:master inventory append from entity @s equipment.legs
execute if items entity @s armor.feet * run data modify storage totem_of_hoarding:master inventory append from entity @s equipment.feet

# delete curse of vanishing items
data remove storage totem_of_hoarding:master inventory[{components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1}}}]

# get xp
execute store result storage totem_of_hoarding:master level int 1 run xp query @s levels
data modify storage totem_of_hoarding:master xp set compute default integer {type:"min",inputs:[100,{type:"minecraft:mul",inputs:[7,{type:"minecraft:storage",path:"level",storage:"totem_of_hoarding:master",fallback:0}]}]}

# reset xp
xp set @s 0 levels
xp set @s 0 points

# drop inventory
clear @s
function totem_of_hoarding:drop_inventory/drop_inventory with storage totem_of_hoarding:master

# drop xp
execute summon minecraft:experience_orb run function totem_of_hoarding:drop_inventory/drop_experience with storage totem_of_hoarding:master