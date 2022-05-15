
# 由draw/draw函数调用

# 确保开始抽奖的物品不会再被玩家捡起来，防止白嫖
data merge entity @s {PickupDelay:32767}

# 生成宝箱
loot spawn ~ ~1.25 ~ loot draw:gameplay/draw/fortress
#生成的宝箱应具有自定义名称和无敌属性并且不会自然消失（已在战利品表和protect函数中实现）

# 执行后续处理
execute as @s at @s run function draw:draw/after
