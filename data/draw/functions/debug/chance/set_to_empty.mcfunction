
# 此函数需要手动执行
# 将玩家抽奖次数设置为0
# 调试用
scoreboard players set @s drawChance 0

# 给出执行提示（不检查配置文件）
tellraw @s {"text":"OP：抽奖次数已清零","color":"golden"}
