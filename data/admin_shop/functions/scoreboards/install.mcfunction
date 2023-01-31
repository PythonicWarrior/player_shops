#
team add ps_admin

# Display "Name":
team modify ps_admin displayName "Shops Admin"

# "Name" Colors:
team modify ps_admin color gray

# Update prefix:
team modify ps_admin prefix [{"text": "[", "color": "white"}, {"text": "Admin Shops", "color": "#DD0303"}, {"text": "] ", "color": "white"}]

#
scoreboard objectives add adminps_create trigger
scoreboard objectives add adminps_remove trigger
