
# 由tick函数调用
# 或玩家首次进入游戏时通过进度触发

# 重置玩家的抽奖次数（根据配置文件）
scoreboard players operation @s drawChance = #drawMark drawChance

# 给出重置抽奖机会的提示（检查配置文件）
execute as @s at @s if score #drawMark drawDisplay matches 1 run tellraw @s {"text":"今天的抽奖次数已更新，快去试试手气吧 ^_^","color":"green"}
