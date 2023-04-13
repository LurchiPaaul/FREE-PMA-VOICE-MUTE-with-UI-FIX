--[[
RegisterNetEvent('sv_mute:show')
AddEventHandler('sv_mute:show', function()
    SendNUIMessage({
        type = "enableui"
    })
end)

RegisterNetEvent('sv_mute:hide')
AddEventHandler('sv_mute:hide', function()
    SendNUIMessage({
        type = "disableui"
    })
end)]]



RegisterKeyMapping('mute', 'Stummschalten', 'keyboard', 'm')
muteme = false
RegisterCommand('mute', function(source)
    local src = source
    if not muteme then
        TriggerServerEvent('sv_mute:show', src)
        muteme = true
        Wait(100)
        SendNUIMessage({
            type = "enableui"
        })
    else
        TriggerServerEvent('sv_mute:hide', src)
        muteme = false
        Wait(100)
        SendNUIMessage({
            type = "disableui"
        })
    end
end)
