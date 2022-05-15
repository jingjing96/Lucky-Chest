
# 由进度调用

# 撤销玩家的进度
advancement revoke @s only draw:chest/curse

# 玩家打开海底神殿“神秘宝藏”箱子后将给予附近50格内的玩家“挖掘疲劳III”效果5分钟
execute as @a[distance=..50] at @s run effect give @s minecraft:mining_fatigue 300
execute as @a[distance=..50] at @s run particle minecraft:elder_guardian 
execute as @a[distance=..50] at @s run playsound minecraft:entity.elder_guardian.curse hostile @s
