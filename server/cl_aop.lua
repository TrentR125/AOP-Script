local aop = "None Set"

AddEventHandler('onClientMapStart', function()
    TriggerServerEvent('drpaop:sync_sv')
end)

---------------------------------------------------------------------------
-- AOP Text Shit
---------------------------------------------------------------------------
RegisterNetEvent('drpaop:sync_cl')
AddEventHandler('drpaop:sync_cl', function(exampleaop)
    aop = exampleaop
end)