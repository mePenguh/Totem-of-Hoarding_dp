# apply random motion to experience
$data modify entity @s Value set value $(xp)
execute store result entity @s Motion[0] float 0.00005 run random value -10000..10000
execute store result entity @s Motion[1] float 0.00005 run random value -10000..10000
execute store result entity @s Motion[2] float 0.00005 run random value -10000..10000