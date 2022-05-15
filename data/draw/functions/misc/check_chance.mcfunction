
# 由tick函数调用

# 检查玩家的抽奖次数
# 如果成功则执行抽奖
execute as @s at @s if score @p[tag=is_drawing,distance=..2,limit=1] drawChance matches 1..5 run function draw:draw/draw
# 如果不成功则跳转到检查失败函数
execute as @s at @s unless score @p[tag=is_drawing,distance=..2,limit=1] drawChance matches 1..5 run function draw:misc/check_failed
