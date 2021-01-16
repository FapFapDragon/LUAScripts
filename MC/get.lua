local modem = peripheral.wrap("back")
local itemName = arg[1]
local amount = arg[2]

modem.transmit(2, 1, "get "..itemName.." " .. amount);