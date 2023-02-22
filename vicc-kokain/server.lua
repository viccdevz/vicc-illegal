local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("vicckokaintoplama")
AddEventHandler("vicckokaintoplama", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.AddItem("kokain", math.random(Config.KokainMin,Config.KokainMax))
end)

RegisterNetEvent("vicckokainisleme")
AddEventHandler("vicckokainisleme", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local item = math.random(1,100)
    if xPlayer.Functions.RemoveItem("kokain", Config.KokainislemeMiktar) then
            xPlayer.Functions.AddItem("kokainislenmis", 1)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Kokain İşledin!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince Kokainin Yok!', length = 2500})
    end
end)

RegisterNetEvent("vicckokainsatis")
AddEventHandler("vicckokainsatis", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)

    if xPlayer.Functions.RemoveItem("afyonislenmis", Config.KokainsatisMiktar) then
        xPlayer.Functions.AddMoney(Config.KokainOdeme, Config.KokainFiyat)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'İşlenmiş Kokain Sattın!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince İşlenmiş Kokain Yok!', length = 2500})
    end
end)