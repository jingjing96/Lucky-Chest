
# 由draw/*函数调用

# 生成战利品箱之后的后续处理

# 给出抽奖成功的提示（检查配置文件）
execute as @s at @s if score #drawMark drawDisplay matches 1 run tellraw @p[tag=is_drawing,distance=..2,limit=1] {"text":"抽奖成功！","color":"green"}

# 玩家抽奖次数减一
scoreboard players remove @p[tag=is_drawing,distance=..2,limit=1] drawChance 1

# 检查抽奖次数是否用完，如果用完则给出提示（检查配置文件）
execute as @s at @s if score @p[tag=is_drawing,distance=..2,limit=1] drawChance matches ..0 if score #drawMark drawDisplay matches 1 run tellraw @p[tag=is_drawing,distance=..2,limit=1] {"text":"今天的抽奖次数已用完，明天再来试试吧","color":"light_purple"}

# 移除玩家的抽奖tag
execute at @s as @p[tag=is_drawing,distance=..2,limit=1,tag=is_drawing] run function draw:player/mark_remove
# 某些特定情况下不会自动移除tag

# 销毁抽奖物品
kill @s
