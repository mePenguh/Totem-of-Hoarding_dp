# multiply motion
data modify storage totem_of_hoarding:master motion set from entity @s Motion
data modify entity @s Motion[0] set compute default float {"type":"minecraft:mul",inputs:[2,{type:"minecraft:storage",path:"motion[0]",storage:"totem_of_hoarding:master",fallback:0}]}
data modify entity @s Motion[1] set compute default float {"type":"minecraft:mul",inputs:[1.5,{type:"minecraft:storage",path:"motion[1]",storage:"totem_of_hoarding:master",fallback:0}]}
data modify entity @s Motion[2] set compute default float {"type":"minecraft:mul",inputs:[2,{type:"minecraft:storage",path:"motion[2]",storage:"totem_of_hoarding:master",fallback:0}]}