local side = 5
local itemName = arg[1]
local amount = tonumber(arg[2])


function checkStorage (itemName)
    item = refinedstorage.getItem({name=itemName})
    if (item.count == nil) then
        print("Sorry, we don't have any of that")
        return false
    elseif (item.count < amount) then
        print("Sorry we only have " .. item.count .. " " .. itemName .. " avalible")
        return false
    else 
        return true
    end
    --print(item.name .. " : " .. item.count)
end

function getItem(id)
    if (checkStorage(id)) then
        refinedstorage.extractItem({name=id}, amount, side)
    else
        return false
    end
end


getItem(itemName)