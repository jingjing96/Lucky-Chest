[TOC]

# 幸运宝箱（Lucky-Chest）

This file is written in Chinese.

这是一个Minecraft数据包，主要功能是以抽奖的方式让一些原版不可再生的资源变为可再生资源。

本数据包没有修改任何原版物品和方块的模型及贴图，尽最大可能利用原版机制实现稀有资源的可再生获取途径。

### 开源协议

本数据包采用[GNU GPL v3.0](http://www.gnu.org/licenses/gpl-3.0.en.html)协议发布，在遵守本协议并注明原作者的前提下，你可以自由使用和修改本数据包的源代码和发布的成品。

### 兼容的游戏版本和MOD

本数据包在1.18.1原版环境中开发，理论上兼容1.18及以上版本的**原版**客户端和服务端，在任何插件端、模组端、其他数据包环境下发生的原版不能复现的BUG均不会得到支持。

本数据包中提及的所有“群系”和“结构”，除特殊标注外，均指原版的群系和结构，任何由其他模组/数据包添加的群系和结构都无法被本数据包识别。

目前只兼容以下模组：YUNG的更好的矿井、YUNG的更好的地牢、YUNG的更好的要塞。

可能不兼容：命名空间draw、计分项前缀draw。

### 基本玩法

玩家首先需要搭建许愿井，然后站在井沿上向井里丢入青金石块来抽奖，当许愿井的结构被正确搭建并且所处位置满足特定的条件后，游戏将为玩家自动生成宝箱，宝箱会以掉落物的形态出现在玩家附近。每名玩家每天有5次抽奖机会，抽奖次数将在每天正午时分重置。首次进入存档的玩家可以立即获得当天的抽奖机会。

**注意事项：玩家抽奖时需要站在井沿上，如果距离过远可能导致抽奖失败，并且距离井中心两格范围内尽量不要有其他玩家，否则抽奖机会的扣除可能会判定到其他人身上。每次抽奖只允许丢出一个青金石块，同时丢出多个将无法抽奖，且只有玩家丢出的青金石块才能进行抽奖。**

参与抽奖的青金石块和未打开过的战利品箱**物品实体**会被暂时设定为无敌状态，这些物品不会受到除虚空以外的任何伤害，也不会自然消失（除非离开许愿井或玩家离开超过3格）。安装了某些优化模组后，无敌物品在“受到伤害”后可能会变得不可见，但其实物品还是存在的，玩家走过去仍然可以正常捡起来，或者重新进入存档物品就会正常显示。

为防止掉落物堆积，OP玩家可以输入命令/function draw:op/clear_up/draw_items清除所有正在参与抽奖的青金石块物品实体，输入命令/function draw:op/clear_up/chest_items清除所有宝箱物品实体，输入命令/function draw:op/clear_up/clear_all清除所有残留实体。

许愿井的结构如下表所示，层数为由下至上（此处以村庄许愿井为例，其他井的搭建材料可能会有变化，将在下文逐一列出）：

注意：所有台阶必须为下半砖，所有墙不能与周围的方块相连，所有可以含水的方块均不能含水，否则判定为无效结构。

|      | 第一层  |      |
| :--: | :--: | :--: |
|  砖块  |  砖块  |  砖块  |
|  砖块  |  磁石  |  砖块  |
|  砖块  |  砖块  |  砖块  |

|      | 第二层  |      |
| :--: | :--: | :--: |
|  砖块  |  砖块  |  砖块  |
|  砖块  |  水源  |  砖块  |
|  砖块  |  砖块  |  砖块  |

|      | 第三层  |      |
| :--: | :--: | :--: |
|  砖块  | 砖台阶  |  砖块  |
| 砖台阶  |  空气  | 砖台阶  |
|  砖块  | 砖台阶  |  砖块  |

|      | 第四层  |      |
| :--: | :--: | :--: |
| 砖块墙  |  空气  | 砖块墙  |
|  空气  |  空气  |  空气  |
| 砖块墙  |  空气  | 砖块墙  |

|      | 第五层  |      |
| :--: | :--: | :--: |
| 砖台阶  | 砖台阶  | 砖台阶  |
| 砖台阶  |  砖块  | 砖台阶  |
| 砖台阶  | 砖台阶  | 砖台阶  |

许愿井目前共有15个变种，每种井的搭建材料和适用的群系/结构已在下表中列出：

| 种类    | 基础材料                 | 井底中心方块 | 井内流体 | 适用群系/结构                          |
| ----- | -------------------- | ------ | ---- | -------------------------------- |
| 村庄井   | 砖块                   | 磁石     | 水源   | 村庄[注1]、林地府邸、掠夺者前哨站、繁花森林          |
| 岩石井1  | 花岗岩                  | 磁石     | 水源   | 废弃矿井（Y0以上）<br/>兼容YUNG的更好的矿井      |
| 岩石井2  | 闪长岩                  | 磁石     | 水源   | 废弃矿井（Y0以上）<br/>兼容YUNG的更好的矿井      |
| 岩石井3  | 安山岩                  | 磁石     | 水源   | 废弃矿井（Y0以上）<br/>兼容YUNG的更好的矿井      |
| 深层井   | 深板岩圆石                | 磁石     | 水源   | 废弃矿井（Y0以下）<br/>兼容YUNG的更好的矿井      |
| 海洋井   | 海晶石                  | 磁石     | 水源   | 海洋类群系、海底废墟、海底神殿                  |
| 沙漠井   | 砂岩                   | 磁石     | 水源   | 沙漠、沙漠神殿                          |
| 恶地井   | 红砂岩                  | 磁石     | 水源   | 恶地类群系                            |
| 苔石井1  | 苔石                   | 磁石     | 水源   | 丛林神庙、YUNG的更好的地牢<br/>（原版地牢不行[注2]） |
| 苔石井2  | 苔石                   | 磁石     | 细雪   | 雪屋                               |
| 要塞井   | 苔石砖                  | 磁石     | 水源   | 要塞、YUNG的更好的要塞                    |
| 古城井   | 深板岩砖<br/>（或裂纹深板岩砖）   | 磁石     | 水源   | 远古城市                             |
| 下界要塞井 | 下界砖<br/>（或裂纹下界砖）     | 磁石     | 熔岩源  | 下界要塞                             |
| 堡垒遗迹井 | 磨制黑石砖<br/>（或裂纹磨制黑石砖） | 磁石     | 熔岩源  | 堡垒遗迹                             |
| 末地城井  | 末地砖                  | 磁石     | 水源   | 末地城                              |

注1：只能是自然生成的村庄（即可以使用/locate指令定位到的），玩家建造的村庄不行。

注2：由于原版地牢不属于“结构”，无法使用/locate指令定位，所以无法方便地判断玩家是否处于地牢中。

注3：许愿井只能使用“基础材料”一列中写明的方块搭建，使用其他变种（例如切制砂岩）则不行。

### 原版修改

* 将“战猪”进度改为只能在堡垒遗迹中获得（原版在任何地方打开带有堡垒遗迹战利品表的箱子都可以获得此进度）。

### 关于宝箱

利用本数据包你可以抽到原版全部41个宝箱（1.19），以及我们添加的32种额外宝箱，每种宝箱根据其价值会有不同的抽中几率。使用不同的许愿井在不同的群系和结构中可以抽到不同的宝箱，有时还会有意外的惊喜（惊吓）。

#### 每种宝箱的抽中几率和所需条件

* 随着版本更新，下表的内容可能会发生比较大的变化。
* 可以使用BBOR或者MiniHUD模组查看结构边界，只有在结构边界内的许愿井才能抽中对应结构特有的宝箱。
* 某些宝箱必须在特定的地点**打开**才能获得额外奖励（比如岩石箱只有在主世界合适的高度才能开出矿石，在其他维度或者高度不合适时则只能开出石头，下界岩石箱同理）。

*（待完善）*

### 其他说明

所有宝箱的抽中几率和自定义宝箱的内容都是作者凭感觉写的，并没有经过严格的计算，可能会有不合理之处，欢迎大家多提意见，我会逐渐完善这个数据包。

### 联系作者

GitHub：@jingjing96 ，MCBBS：@京京1996 ，bilibili：@京京2016 ，MCMOD：@京京1996