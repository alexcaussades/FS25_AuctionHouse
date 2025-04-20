-- main.lua
local AuctionHouse = require("mods.AuctionHouse.AuctionHouse")
local config = require("mods.AuctionHouse.config")

-- Exemple de mise en vente
AuctionHouse:listItem(1, "Golden Sword", 500, "Player1")

-- Exemple d'enchère
AuctionHouse:placeBid(1, "Player2", 600)

-- Finaliser l'enchère
AuctionHouse:finalizeAuction(1)

-- Afficher les paramètres de configuration
print("Default Auction Duration: " .. config.defaultAuctionDuration)
print("Currency Symbol: " .. config.currencySymbol)
