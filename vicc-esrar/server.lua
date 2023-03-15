local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("viccesrartoplama")
AddEventHandler("viccesrartoplama", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.AddItem("esrar", math.random(Config.EsrarMin,Config.EsrarMax))
end)

RegisterNetEvent("viccesrarisleme")
AddEventHandler("viccesrarisleme", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local item = math.random(1,100)
    if xPlayer.Functions.RemoveItem("esrar", Config.EsrarIslemeMiktar) then
            xPlayer.Functions.AddItem("esrarislenmis", 1)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Esrar İşledin!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince Esrarın Yok!', length = 2500})
    end
end)

RegisterNetEvent("viccesrarsatis")
AddEventHandler("viccesrarsatis", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)

    if xPlayer.Functions.RemoveItem("esrarislenmis", Config.EsrarSatisMiktar) then
        xPlayer.Functions.AddMoney(Config.EsrarOdeme, Config.EsrarFiyat)
-- KARA PARA SİSTEMİNİ AÇMAK İÇİN YORUM SATIRINI KALDIRIN-- xPlayer.Functions.AddItem("markedbills", Config.KaraParaFiyat)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'İşlenmiş Esrar Sattın!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince İşlenmiş Esrarın Yok!', length = 2500})
    end
end)
