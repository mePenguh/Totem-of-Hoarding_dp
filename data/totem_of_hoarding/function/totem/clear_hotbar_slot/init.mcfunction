# store slot in storage, then clear it
execute store result storage totem_of_hoarding:master slot int 1 run scoreboard players get @s totem_of_hoarding.detected_slot
function totem_of_hoarding:totem/clear_hotbar_slot/clear with storage totem_of_hoarding:master