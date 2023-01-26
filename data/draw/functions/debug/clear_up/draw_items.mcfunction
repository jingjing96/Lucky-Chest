
# 清除所有抽奖物品
# 此函数需要手动执行
# 调试用
kill @e[type=item,tag=draw_marked]

# 给出执行提示（不检查配置文件）
tellraw @s {"text":"OP：已清除抽奖物品实体","color":"golden"}
