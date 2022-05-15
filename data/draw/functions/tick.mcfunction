
# 每天定时重置玩家的抽奖次数（默认为正午）
execute as @a at @s if predicate draw:time/is_reset_time run function draw:player/reset_chance

# 给玩家扔出的绿宝石块加tag
execute as @e[type=item,predicate=draw:entity/is_draw_item,tag=!draw_marked] at @s if data entity @s Thrower run function draw:mark/add
# 不能加在井中的谓词

# 给附近1.5格内有抽奖物品的玩家加tag
execute as @a[tag=!is_drawing] at @s if entity @e[type=item,predicate=draw:entity/is_draw_item_marked,distance=..1.5] run function draw:player/mark_add

# 在井中的有tag的并且附近两格内有玩家的绿宝石块才能进行抽奖
execute as @e[type=item,predicate=draw:entity/is_draw_item_marked,predicate=draw:structure/in_well] at @s if entity @a[tag=is_drawing,distance=..2] run function draw:misc/check_chance

# 当附近三格内没有玩家时移除绿宝石块的tag
execute as @e[type=item,predicate=draw:entity/is_draw_item] at @s unless entity @a[tag=is_drawing,distance=..3] run function draw:mark/remove
# 由于抽奖次数的检查机制，此处不能加抽奖tag的谓词

# 当附近三格内没有抽奖物品时移除玩家的tag
execute as @a[tag=is_drawing] at @s unless entity @e[type=item,predicate=draw:entity/is_draw_item_marked,distance=..3] run function draw:player/mark_remove

# 未打开过的宝箱不会被销毁
execute as @e[type=item,predicate=draw:entity/is_loot_chest_item] at @s if data entity @s Item.tag.drawMark run function draw:misc/protect
# 两种不祥的箱子和套娃之箱不会被加保护
