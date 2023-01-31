# Buy amount has be less than 64!
execute if score @s ps_buy_2 matches 65.. run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "aqua"}, {"text": "] ", "color": "white"}, {"text": "Error, you can only buy 64 items or less!", "color": "red"}]
execute if score @s ps_buy_2 matches 65.. run playsound minecraft:item.firecharge.use master @s ~ ~ ~ 1 0.8


# Count how many items the shop has to "Sell":
execute if score @s ps_buy_2 matches ..64 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:24b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:25b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:26b}]} store result score @s ps_sell_2 run data get block ~ ~-1 ~ Items[{Slot:26b}].Count
execute if score @s ps_buy_2 matches ..64 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:24b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:25b}]} store result score @s ps_sell_2 run data get block ~ ~-1 ~ Items[{Slot:25b}].Count
execute if score @s ps_buy_2 matches ..64 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:24b}]} store result score @s ps_sell_2 run data get block ~ ~-1 ~ Items[{Slot:24b}].Count
execute if score @s ps_buy_2 matches ..64 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} store result score @s ps_sell_2 run data get block ~ ~-1 ~ Items[{Slot:17b}].Count
execute if score @s ps_buy_2 matches ..64 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} store result score @s ps_sell_2 run data get block ~ ~-1 ~ Items[{Slot:16b}].Count
execute if score @s ps_buy_2 matches ..64 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} store result score @s ps_sell_2 run data get block ~ ~-1 ~ Items[{Slot:15b}].Count
execute if score @s ps_buy_2 matches ..64 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} store result score @s ps_sell_2 run data get block ~ ~-1 ~ Items[{Slot:8b}].Count


# Not Enough Stock in Shop!
execute if score @s ps_buy_2 matches ..64 if score @s ps_buy_2 > @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_2 run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "aqua"}, {"text": "] ", "color": "white"}, {"text": "Error, there's not enough stock in the shop!", "color": "red"}]
execute if score @s ps_buy_2 matches ..64 if score @s ps_buy_2 > @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_2 run playsound minecraft:item.firecharge.use master @s ~ ~ ~ 1 0.8


# Match Sell Price to Buy Price:
execute if score @s ps_buy_2 matches ..64 if score @s ps_buy_2 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_2 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s store result score @s ps_buying_2 run data get block ~ ~-1 ~ Items[{Slot:6b}].Count
execute if score @s ps_buy_2 matches ..64 if score @s ps_buy_2 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_2 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s store result block ~ ~-1 ~ Items[{Slot:6b}].Count byte 1 run execute as @p at @s run scoreboard players get @s ps_buy_2


# change to sell <amount>:
execute if score @s ps_buy_2 matches ..64 if score @s ps_buy_2 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_2 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:24b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:25b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:26b}]} store result block ~ ~-1 ~ Items[{Slot:26b}].Count byte 1 run execute as @p at @s run scoreboard players get @s ps_buy_2
execute if score @s ps_buy_2 matches ..64 if score @s ps_buy_2 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_2 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:24b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:25b}]} store result block ~ ~-1 ~ Items[{Slot:25b}].Count byte 1 run execute as @p at @s run scoreboard players get @s ps_buy_2
execute if score @s ps_buy_2 matches ..64 if score @s ps_buy_2 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_2 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:24b}]} store result block ~ ~-1 ~ Items[{Slot:24b}].Count byte 1 run execute as @p at @s run scoreboard players get @s ps_buy_2
execute if score @s ps_buy_2 matches ..64 if score @s ps_buy_2 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_2 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} store result block ~ ~-1 ~ Items[{Slot:17b}].Count byte 1 run execute as @p at @s run scoreboard players get @s ps_buy_2
execute if score @s ps_buy_2 matches ..64 if score @s ps_buy_2 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_2 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} store result block ~ ~-1 ~ Items[{Slot:16b}].Count byte 1 run execute as @p at @s run scoreboard players get @s ps_buy_2
execute if score @s ps_buy_2 matches ..64 if score @s ps_buy_2 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_2 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} store result block ~ ~-1 ~ Items[{Slot:15b}].Count byte 1 run execute as @p at @s run scoreboard players get @s ps_buy_2
execute if score @s ps_buy_2 matches ..64 if score @s ps_buy_2 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_2 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} store result block ~ ~-1 ~ Items[{Slot:8b}].Count byte 1 run execute as @p at @s run scoreboard players get @s ps_buy_2


# Remaining Stock:
execute if score @s ps_buy_2 matches ..64 if score @s ps_buy_2 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_2 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s run scoreboard players operation @s ps_sell_2 -= @p ps_buy_2

# Reset
scoreboard players set @s ps_buy_2 0