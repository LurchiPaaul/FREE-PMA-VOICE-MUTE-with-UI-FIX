RegisterNetEvent('sv_mute:show')
AddEventHandler('sv_mute:show', function()
    local src = source
    MumbleSetPlayerMuted(src, true)
end)

RegisterNetEvent('sv_mute:hide')
AddEventHandler('sv_mute:hide', function()
    local src = source
    MumbleSetPlayerMuted(src, false)
end)


