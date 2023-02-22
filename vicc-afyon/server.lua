local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("viccafyontoplama")
AddEventHandler("viccafyontoplama", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.AddItem("afyon", math.random(Config.AfyonMin,Config.AfyonMax))
end)

RegisterNetEvent("viccafyonisleme")
AddEventHandler("viccafyonisleme", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local item = math.random(1,100)
    if xPlayer.Functions.RemoveItem("afyon", Config.AfyonislemeMiktar) then
            xPlayer.Functions.AddItem("afyonislenmis", 1)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Afyon İşledin!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince Afyonun Yok!', length = 2500})
    end
end)

RegisterNetEvent("viccafyonsatis")
AddEventHandler("viccafyonsatis", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)

    if xPlayer.Functions.RemoveItem("afyonislenmis", Config.AfyonsatisMiktar) then
        xPlayer.Functions.AddMoney(Config.AfyonOdeme, Config.AfyonFiyat)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'İşlenmiş Afyon Sattın!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince İşlenmiş Afyon Yok!', length = 2500})
    end
end)