
# 由load函数调用

# 保存了本数据包的一些配置信息

# 一些不能在这里修改的配置项：
# 修改井底方块：draw:well/bottom（方块标签）（默认值：磁石）
# 修改抽奖物品：draw:entity/is_draw_item和is_draw_item_marked（谓词）（默认值：绿宝石块）
# 修改重置抽奖次数的时间：draw:time/is_reset_time（谓词）（默认值：每天正午）

# 每日抽奖次数上限（默认值：5）
scoreboard players set #drawMark drawChance 5

# 是否显示抽奖次数提示（默认值：1）
scoreboard players set #drawMark drawDisplay 1
