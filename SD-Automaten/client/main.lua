

RegisterNetEvent("SD-Automaten:client:open:WaterAutomaat")
AddEventHandler("SD-Automaten:client:open:WaterAutomaat", function(Data)
	exports.ox_inventory:openInventory('shop', {type = 'WaterAutomaat'})
Citizen.Wait(800)
	TriggerEvent('animations:client:EmoteCommandStart', {"dispenser"})
Citizen.Wait(1800)
ClearPedTasks(GetPlayerPed(-1))
end)

RegisterNetEvent("SD-Automaten:client:open:SnoepAutomaat")
AddEventHandler("SD-Automaten:client:open:SnoepAutomaat", function(Data)
	exports.ox_inventory:openInventory('shop', {type = 'SnoepAutomaat'})
Citizen.Wait(800)
	TriggerEvent('animations:client:EmoteCommandStart', {"dispenser"})
Citizen.Wait(1800)
    ClearPedTasks(GetPlayerPed(-1))
end)

RegisterNetEvent("SD-Automaten:client:open:FrisdrankAutomaat")
AddEventHandler("SD-Automaten:client:open:FrisdrankAutomaat", function(Data)
	exports.ox_inventory:openInventory('shop', {type = 'FrisdrankAutomaat'})
Citizen.Wait(800)
	TriggerEvent('animations:client:EmoteCommandStart', {"dispenser"})
Citizen.Wait(1800)
    ClearPedTasks(GetPlayerPed(-1))
end)

RegisterNetEvent("SD-Automaten:client:open:CoffeeAutomaat")
AddEventHandler("SD-Automaten:client:open:CoffeeAutomaat", function(Data)
	exports.ox_inventory:openInventory('shop', {type = 'CoffeeAutomaat'})
Citizen.Wait(800)
	TriggerEvent('animations:client:EmoteCommandStart', {"dispenser"})
Citizen.Wait(1800)
    ClearPedTasks(GetPlayerPed(-1))
end)



-- // Custom DrankAutomaten  (ox-target required) // --

Citizen.CreateThread(function()
    exports.qtarget:AddTargetModel(GetHashKey('prop_watercooler'), {
		options = {
			{
				icon = "fa-solid fa-droplet",
				label = "Water Automaat",
				event = 'SD-Automaten:client:open:WaterAutomaat',
			},
		},
		distance = 0.8
	})
end)

Citizen.CreateThread(function()
    exports.qtarget:AddTargetModel(GetHashKey('prop_vend_coffe_01'), {
		options = {
			{
				icon = "fas fa-coffee",
				label = "Koffie Automaat",
				event = 'SD-Automaten:client:open:CoffeeAutomaat',
			},
		},
		distance = 0.8
	})
end)

-------------------------
--- Dranken Automaten ---
-------------------------

Citizen.CreateThread(function()
    exports.qtarget:AddTargetModel(GetHashKey('prop_vend_soda_01'), {
		options = {
			{
				icon = "fas fa-candy-cane",
				label = "Frisdrank Automaat",
				event = 'SD-Automaten:client:open:FrisdrankAutomaat',
			},
		},
		distance = 0.8
	})
end)

Citizen.CreateThread(function()
    exports.qtarget:AddTargetModel(GetHashKey('prop_vend_soda_02'), {
		options = {
			{
				icon = "fas fa-candy-cane",
				label = "Frisdrank Automaat",
				event = 'SD-Automaten:client:open:FrisdrankAutomaat',
			},
		},
		distance = 0.8
	})
end)

-----------------------
--- Snoep Automaten ---
-----------------------

Citizen.CreateThread(function()
    exports.qtarget:AddTargetModel(GetHashKey('prop_vend_snak_01'), {
		options = {
			{
				icon = "fas fa-candy-cane",
				label = "Snoep Automaat",
				event = 'SD-Automaten:client:open:SnoepAutomaat',
			},
		},
		distance = 0.8
	})
end)

Citizen.CreateThread(function()
    exports.qtarget:AddTargetModel(GetHashKey('prop_vend_snak_01_tu'), {
		options = {
			{
				icon = "fas fa-candy-cane",
				label = "Snoep Automaat",
				event = 'SD-Automaten:client:open:SnoepAutomaat',
			},
		},
		distance = 0.8
	})
end)


