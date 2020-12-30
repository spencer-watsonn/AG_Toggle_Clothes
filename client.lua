-- toggleMask
local toggleMask = 'mask' -- Defines the command for toggleMask
local drawableMask
local textureMask

-- toggleHat
local toggleHat = 'hat' -- Defines the command for toggleHat
local drawableHat
local textureHat

Citizen.CreateThread(function()
	TriggerEvent('chat:addSuggestion', "/" .. toggleMask, 'Toggles mask On/Off')
	TriggerEvent('chat:addSuggestion', "/" .. toggleHat, 'Toggles hat On/Off')
end)

RegisterCommand(toggleMask, function()
	local ped = GetPlayerPed(-1)

	-- Does player have a mask
	-- If yes, save mask and switch to no mask 
	-- If no, switch to saved mask and reset vars
	if GetPedDrawableVariation(ped, 1) ~= 0 then
		-- Saves current mask variation
		drawableMask = GetPedDrawableVariation(ped, 1)
		textureMask = GetPedTextureVariation(ped, 1)
		
		SetPedComponentVariation(ped, 1, 0, -1, 1) -- Sets mask to no mask
	else
		SetPedComponentVariation(ped, 1, drawableMask, textureMask, 1) -- Sets mask to saved mask
		drawableMask = nil
		textureMask = nil
	end
end)

RegisterCommand(toggleHat, function()
	local ped = GetPlayerPed(-1)

	-- Does player have a hat
	-- If yes, save hat and switch to no hat
	-- If no, switch to saved hat and reset vars
	if GetPedPropIndex(ped, 0) ~= -1 then
		-- Saves current hat variation
		drawableHat = GetPedPropIndex(ped, 0)
		textureHat = GetPedPropTextureIndex(ped, 0)
		
		ClearPedProp(ped, 0) -- Sets hat to no hat
	else
		SetPedPropIndex(ped, 0, drawableHat, textureHat, false) -- Sets hat to saved hat
		drawableHat = nil
		textureHat = nil
	end
end)
