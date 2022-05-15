
# 此函数需要手动执行
# 重置玩家的抽奖次数（根据配置文件）
# 调试用
scoreboard players operation @s drawChance = #drawMark drawChance

# 给出执行提示（不检查配置文件）
tellraw @s {"text":"OP：抽奖次数已重置","color":"golden"}
