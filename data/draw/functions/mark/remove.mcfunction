
# 由tick函数调用

# 移除当前抽奖物品加tag
tag @s remove draw_marked

# 移除抽奖物品的无敌状态
data merge entity @s {Age:0s,Invulnerable:0b}
