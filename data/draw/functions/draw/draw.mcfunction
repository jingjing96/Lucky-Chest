
# 由misc/check_chance函数调用

# 判定满足的条件并进行抽奖

# 村庄
execute as @s at @s if predicate draw:structure/in_village if predicate draw:well/village run function draw:draw/village

# 繁花森林
execute as @s at @s if predicate draw:biome/in_flower_forest if predicate draw:well/village run function draw:draw/flower

# 废弃矿井（兼容YUNG's Better Mineshafts）
# Y0以上
execute as @s at @s if predicate draw:structure/in_mineshaft if predicate draw:layer/rock if predicate draw:well/andesite run function draw:draw/mineshaft
execute as @s at @s if predicate draw:structure/in_mineshaft if predicate draw:layer/rock if predicate draw:well/diorite run function draw:draw/mineshaft
execute as @s at @s if predicate draw:structure/in_mineshaft if predicate draw:layer/rock if predicate draw:well/granite run function draw:draw/mineshaft
# Y0以下
execute as @s at @s if predicate draw:structure/in_mineshaft if predicate draw:layer/deepslate if predicate draw:well/deepslate run function draw:draw/mineshaft

# YUNG's Better Dungeons专用
execute as @s at @s if predicate draw:structure/in_betterdungeon if predicate draw:well/betterdungeon run function draw:draw/betterdungeon

# 海洋
execute as @s at @s if predicate draw:biome/in_ocean if predicate draw:well/ocean run function draw:draw/ocean

# 沙漠神殿
execute as @s at @s if predicate draw:structure/in_desert_pyramid if predicate draw:well/desert run function draw:draw/desert

# 沙漠
execute as @s at @s if predicate draw:biome/in_desert if predicate draw:well/desert run function draw:draw/desert

# 恶地
execute as @s at @s if predicate draw:biome/in_badlands if predicate draw:well/badlands run function draw:draw/badlands

# 雪屋
execute as @s at @s if predicate draw:structure/in_igloo if predicate draw:well/snowy run function draw:draw/igloo

# 丛林神殿
execute as @s at @s if predicate draw:structure/in_jungle_pyramid if predicate draw:well/jungle run function draw:draw/jungle

# 要塞（兼容YUNG's Better Strongholds）
execute as @s at @s if predicate draw:structure/in_stronghold if predicate draw:well/stronghold run function draw:draw/stronghold

# 远古城市
execute as @s at @s if predicate draw:structure/in_ancient_city if predicate draw:well/ancient_city run function draw:draw/ancient_city

# 林地府邸
execute as @s at @s if predicate draw:structure/in_mansion if predicate draw:well/village run function draw:draw/mansion

# 掠夺者前哨站
execute as @s at @s if predicate draw:structure/in_pillager_outpost if predicate draw:well/village run function draw:draw/pillager_outpost

# 废弃传送门
execute as @s at @s if predicate draw:structure/in_ruined_portal if predicate draw:well/fortress run function draw:draw/ruined_portal

# 下界要塞
execute as @s at @s if predicate draw:structure/in_fortress if predicate draw:well/fortress run function draw:draw/fortress

# 堡垒遗迹
execute as @s at @s if predicate draw:structure/in_bastion_remnant if predicate draw:well/bastion run function draw:draw/bastion_remnant

# 末地城
execute as @s at @s if predicate draw:structure/in_endcity if predicate draw:well/endcity run function draw:draw/endcity
