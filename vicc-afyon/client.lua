local availableActions = {}
local cord = Config.Afyontoplama
-- Afyon toplama

Citizen.CreateThread(function()
    local sleep = 1000
    while true do
        local player = PlayerPedId()
        local playercoords = GetEntityCoords(player)
        local distance = GetDistanceBetweenCoords(playercoords, cord.x, cord.y, cord.z, true)
        if distance < 10 then
            sleep = 0
            DrawMarker(2,cord.x, cord.y, cord.z,0.0, 0.0, 0.0, 0.0, 0, 0.0, Config.markerboyutu, Config.markerboyutu, Config.markerboyutu, 255, 255, 0, 50, false, true, 2, nil, nil, false)
            if distance < 2 then
                DrawText3D(cord.x,cord.y,cord.z, '[E] Afyon Topla')
                if IsControlJustReleased(0, 38) then
                    exports['progressbar']:Progress({
                        name = "Afyon",
                        duration = 5000,
                        label = "Afyon Topluyorsun",
                        useWhileDead = false,
                        canCancel = true,
                        controlDisables = {
                            disableMovement = true,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        },
                        animation = {
                            animDict = "amb@prop_human_bum_shopping_cart@male@idle_a",
                            anim = "idle_c",
                            flags = 49,
                        },
                    }, function(status)
                        if not status then
                            TriggerServerEvent("viccafyontoplama")
                        end
                    end)
                end
            else
                sleep = 1000
            end
        end
        Wait(sleep)
    end
end)


local sonafyon = 1

Citizen.CreateThread(function()
    while true do
        local sleep = 2000
        local player = PlayerPedId()
        local playercoords = GetEntityCoords(player)
        local dst = GetDistanceBetweenCoords(playercoords, Config.Afyontoplama[sonafyon].x, Config.Afyontoplama[sonafyon].y, Config.Afyontoplama[sonafyon].z, true)
        local dst2 = GetDistanceBetweenCoords(playercoords, Config.Afyontoplama[sonafyon].x, Config.Afyontoplama[sonafyon].y, Config.Afyontoplama[sonafyon].z, true)
        if dst2 < 4 then
            sleep = 2
            DrawMarker(2, Config.Afyontoplama[sonafyon].x, Config.Afyontoplama[sonafyon].y, Config.Afyontoplama[sonafyon].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 100, 0, 254, 150, 0, 0, 0, 0, 0, 0, 0)
            DrawText3Ds(Config.Afyontoplama[sonafyon].x, Config.Afyontoplama[sonafyon].y, Config.Afyontoplama[sonafyon].z + 0.3, '[E] Afyon Topla')
            if dst2 < 1 then
                if IsControlJustReleased(0, 38) then
                    sonafyon = math.random(1, #Config.Afyontoplama)
                    afyontopla()
                end
            end
        end
        Citizen.Wait(sleep)
    end
end)


function afyontopla()
    if not topluyormu then
        topluyormu = true
        exports['progressbar']:Progress({
            name = "afyontopla",
            duration = 2000,
            label = 'Afyon topluyorsun...',
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            animation = {
                animDict = "mp_arresting",
                anim = "a_uncuff",
                flags = 49,
            },
        }, function(cancelled)
            if not cancelled then
                TriggerServerEvent('viccafyontoplama')
                topluyormu = false
            else
            end
        end)
    end
end

--isleme

local cord = Config.Afyonisleme

Citizen.CreateThread(function()
    local sleep = 2000
    while true do
        local player = PlayerPedId()
        local playercoords = GetEntityCoords(player)
        local distance = GetDistanceBetweenCoords(playercoords, cord.x, cord.y, cord.z, true)
        if distance < 5 then
            sleep = 0
            DrawMarker(2,cord.x, cord.y, cord.z,0.0, 0.0, 0.0, 0.0, 0, 0.0, Config.markerboyutu, Config.markerboyutu, Config.markerboyutu, 255, 255, 0, 50, false, true, 2, nil, nil, false)
            if distance < 2 then
                DrawText3D(cord.x,cord.y,cord.z, '[E] Afyonlarını İşle')
                if IsControlJustReleased(0, 38) then
                    exports['ps-ui']:Circle(function(success)
                        if success then
                            TriggerServerEvent("viccafyonisleme")
                        end
                    end)
                end
            else
                sleep = 1000
            end
        end
        Wait(sleep)
    end
end)

-- Satış

local cord = Config.Afyonsatis


Citizen.CreateThread(function()
    local sleep = 2000
    while true do
        Wait(sleep)
        local player = PlayerPedId()
        local playercoords = GetEntityCoords(player)
        local distance = GetDistanceBetweenCoords(playercoords, cord.x, cord.y, cord.z, true)
                if distance < 2 then
                    sleep = 0
                    DrawText3D(cord.x,cord.y,cord.z, '[E] İşlenmiş Afyonlarını Sat')
                        if IsControlJustReleased(0, 38) then
                            TriggerEvent("progressbar:client:progress", {
                    name = "Afyon",
                    duration = 5000,
                    label = "Afyon Satıyorsun",
                    useWhileDead = false,
                    canCancel = true,
                    controlDisables = {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    },
                    animation = {
                        animDict = "amb@prop_human_bum_shopping_cart@male@idle_a",
                        anim = "idle_c",
                        flags = 49,
                    },
                }, function(status)
                    if not status then
                        TriggerServerEvent("viccafyonsatis")
                    end
                end)
            end
        else
            sleep = 2000
        end
    end
end)

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.30, 0.30)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 250
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 75)
end

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.30, 0.30)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 250
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 75)
end
--blips

if Config.viccblipac then
    CreateThread(function()
        local blip = AddBlipForCoord(Config.AfyontoplamaBlip.x, Config.AfyontoplamaBlip.y, Config.AfyontoplamaBlip.z)
        SetBlipSprite(blip, 403)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, 1)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.AfyontoplamaBlipAd)
        EndTextCommandSetBlipName(blip)
    end)
    CreateThread(function()
        local blip = AddBlipForCoord(Config.AfyonislemeBlip.x, Config.AfyonislemeBlip.y, Config.AfyonislemeBlip.z)
        SetBlipSprite(blip, 403)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, 1)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.AfyonislemeBlipAd)
        EndTextCommandSetBlipName(blip)
    end)
    CreateThread(function()
        local blip = AddBlipForCoord(Config.AfyonsatisBlip.x, Config.AfyonsatisBlip.y, Config.AfyonsatisBlip.z)
        SetBlipSprite(blip, 403)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, 1)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.AfyonsatisBlipAd)
        EndTextCommandSetBlipName(blip)
    end)
end


-- NPC

local NPC = Config.NPC
Citizen.CreateThread(function()
    RequestModel(GetHashKey("s_m_m_autoshop_01")) -- ped kodu
    npc = CreatePed(1, GetHashKey("s_m_m_autoshop_01"), NPC.x, NPC.y, NPC.z -1, false, true) -- ped kodu ve kordinatı
    SetEntityHeading(npc, NPC.w)
    SetPedCombatAttributes(npc, 46, true)              
    SetPedFleeAttributes(npc, 0, 0)              
    SetBlockingOfNonTemporaryEvents(npc, true)
    SetEntityAsMissionEntity(npc, true, true)
    SetEntityInvincible(npc, true)
    FreezeEntityPosition(npc, true)
end)