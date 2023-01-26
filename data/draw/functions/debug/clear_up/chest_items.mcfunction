
# 清除所有宝箱物品
# 此函数需要手动执行
# 调试用
kill @e[type=item,nbt={Item:{tag:{drawMark:"loot_chest"}}}]

# 给出执行提示（不检查配置文件）
tellraw @s {"text":"OP：已清除宝箱物品实体","color":"golden"}
