
# 由tick函数调用

# 给当前抽奖物品加tag
tag @s add draw_marked

# 给抽奖物品加保护，确保不会被岩浆烧毁
data merge entity @s {Age:-32768s,Invulnerable:1b}
