local aop = "None Set"

---------------------------------------------------------------------------
RegisterCommand("aop", function(source, args, rawCommand)
    TriggerClientEvent("chatMessage", source, "^*^1[AOP]: ^7"..aop)
 end)
---------------------------------------------------------------------------
RegisterCommand("changeaop", function(source, args, rawCommand)
    if args[1] ~= nil then
            aop = table.concat(args, " ")
            TriggerEvent("mgnaop:sync_sv")
            TriggerClientEvent("chatMessage", -1,"^*^1AOP Changed: ^7"..aop..".^8 ("..GetPlayerName(source)..")", {255, 255, 255})
        elseif args[1] == "" then
            TriggerEvent("mgnaop:sync_sv")
            aop = "Sandy Shores/Harmony/Grapeseed"
    else
        TriggerClientEvent("chatMessage", source, "^*^1AOP: ^3Invalid Input", {255, 255, 255})
    end
 end)
 --------------------------------------------------------------------------
--AOP Shit
--------------------------------------------------------------------------
RegisterServerEvent("drpaop:sync_sv")
AddEventHandler("drpaop:sync_sv", function()
    TriggerClientEvent("drpaop:sync_cl", -1, aop)
end)