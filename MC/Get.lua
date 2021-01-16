local side = 5
local itemName = arg[1]
local amount = arg[2]
test = refinedstorage.getItem({name=itemName})

function checkStorage (item)
    if (item.count == nil) then
        print("Sorry, we don't have any of that")
        return false
    elseif (item.count < amount) then
        print("Sorry we only have" .. item.count .. " " .. itemName .. " avalible")
        return false
    else 
        return true
    end
    --print(item.name .. " : " .. item.count)
end

function 

refinedstorage.extractItem({name="minecraft:diamond"}, 2, 1)
checkStorage(test)