ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("G_Barber:buy")
AddEventHandler("G_Barber:buy", function(price)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local xMoney = xPlayer.getMoney()
    if xMoney >= price then
		xPlayer.removeMoney(price)
		TriggerClientEvent('esx:showNotification', _source, "Vous avez payé ~g~50$")
	else
		TriggerClientEvent('esx:showNotification', _source, "Vous n'avez pas assez d'argent")
	end
end)
