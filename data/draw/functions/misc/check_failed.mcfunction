
# 由misc/check_chance函数调用

# 给出抽奖机会用完的提示（检查配置文件）
execute as @s at @s if score @p[tag=is_drawing,distance=..2,limit=1] drawChance matches 0.. if score #drawMark drawDisplay matches 1 run tellraw @p[tag=is_drawing,distance=..2,limit=1] {"text":"今天的抽奖次数已用完，明天再来试试吧","color":"light_purple"}
# 加一个检查抽奖机会是否为0的判断条件，防止聊天栏刷屏
# 此消息只会显示一次

# 将玩家抽奖次数设置为-1
scoreboard players set @p[tag=is_drawing,distance=..2,limit=1] drawChance -1

# 移除抽奖物品的tag
tag @s remove draw_marked

# 移除玩家的抽奖tag
execute at @s as @p[tag=is_drawing,distance=..2,limit=1,tag=is_drawing] run function draw:player/mark_remove
# 某些特定情况下不会自动移除tag

# 五秒后将玩家计分板重新设置为0
# execute as @a[scores={drawChance=-1}] at @a[scores={drawChance=-1}] run schedule function draw:op/chance/set_to_empty 100t
# 防止聊天栏刷屏
# 此函数无效
