## check if in bastion
execute unless predicate totem_of_hoarding:in_bastion run return run function totem_of_hoarding:piglin/apply_tag

## check position
data modify storage totem_of_hoarding:master position.pos set from entity @s Pos
data modify storage totem_of_hoarding:master position.x set compute entity @s float {type:"minecraft:abs",input:{type:"minecraft:mod",left:{type:"minecraft:storage",path:"position.pos[0]",storage:"totem_of_hoarding:master",fallback:0.0},right:1.0}}
data modify storage totem_of_hoarding:master position.y set compute entity @s float {type:"minecraft:abs",input:{type:"minecraft:mod",left:{type:"minecraft:storage",path:"position.pos[1]",storage:"totem_of_hoarding:master",fallback:0.0},right:1.0}}
data modify storage totem_of_hoarding:master position.z set compute entity @s float {type:"minecraft:abs",input:{type:"minecraft:mod",left:{type:"minecraft:storage",path:"position.pos[2]",storage:"totem_of_hoarding:master",fallback:0.0},right:1.0}}

execute unless data storage totem_of_hoarding:master {position:{x:0.5f,y:0.0f,z:0.5f}} run return run function totem_of_hoarding:piglin/apply_tag

## check spawn proofing
# custom name
execute if data entity @s CustomName run return run function totem_of_hoarding:piglin/apply_tag

# vehicle
tag @s add totem_of_hoarding.current_main
execute on vehicle on passengers if entity @s[tag=totem_of_hoarding.current_main] run function totem_of_hoarding:piglin/apply_tag
tag @s remove totem_of_hoarding.current_main

# persistence (also items)
execute if data entity @s {PersistenceRequired:1b} run return run function totem_of_hoarding:piglin/apply_tag

## check data
execute if data entity @s ticks_since_last_hurt_by_mob run return run function totem_of_hoarding:piglin/apply_tag

## chance
execute unless predicate totem_of_hoarding:piglin_brute_chance run return run function totem_of_hoarding:piglin/apply_tag

## turn into piglin brute
function totem_of_hoarding:piglin/turn_into_piglin