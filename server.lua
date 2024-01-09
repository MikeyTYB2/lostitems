ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('lostitems', function()
    local source = source -- Get the source inside the event function

    local xPlayer = ESX.GetPlayerFromId(source)
    local itemNames = xPlayer.getInventory() -- Use the correct ESX inventory function

    local currentDate = os.date("%x")
    local currentTime = os.date("%I:%M %p")

    local chatHeader = "^1[" .. currentDate .. " at " .. currentTime .. "] "
    local whiteText = "^0"
    
    TriggerClientEvent('chat:addMessage', source, { template = whiteText .. '^1[!] ^0Your Lost Items:', args = {} })
    
    for _, item in ipairs(itemNames) do
        local itemName = item.name
        local itemCount = item.count
        local itemLabel = ESX.GetItemLabel(itemName) or itemName
        
        local message = "^1[" .. currentDate .. " at " .. currentTime .. "] " .. "^0" .. itemCount .. 'x ' .. itemLabel
        TriggerClientEvent('chat:addMessage', source, { template = whiteText .. message, args = {} })
    end
end)

RegisterNetEvent('lostitemsnotdead', function()
    TriggerClientEvent('chat:addMessage', source, { template = '^1[!] ^0You Are Not Dead', args = {} })

end)


