-- AuctionHouse.lua
local AuctionHouse = {}

AuctionHouse.items = {}

-- Function to list an item for sale
function AuctionHouse:listItem(id, name, startingPrice, seller)
    self.items[id] = {
        name = name,
        price = startingPrice,
        highestBidder = nil,
        seller = seller
    }
    print("Item listed: " .. name .. " for " .. startingPrice .. " currency units.")
end

-- Function to place a bid on an item
function AuctionHouse:placeBid(id, bidder, bidAmount)
    local item = self.items[id]
    if item then
        if bidAmount > item.price then
            item.price = bidAmount
            item.highestBidder = bidder
            print(bidder .. " placed a bid of " .. bidAmount .. " currency units on " .. item.name)
        else
            print("Bid too low! Current price: " .. item.price)
        end
    else
        print("Item not found.")
    end
end

-- Function to finalize an auction and sell the item to the highest bidder
function AuctionHouse:finalizeAuction(id)
    local item = self.items[id]
    if item then
        if item.highestBidder then
            print("Item " .. item.name .. " sold to " .. item.highestBidder .. " for " .. item.price .. " currency units!")
            self.items[id] = nil -- Remove item from auction house
        else
            print("No bids were placed on " .. item.name .. ".")
        end
    else
        print("Item not found.")
    end
end

return AuctionHouse
