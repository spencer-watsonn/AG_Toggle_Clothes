ESX = nil
mask = true
ped = GetPlayerPed(-1)

drawableFace = GetPedDrawableVariation(ped, 0)
textureFace = GetPedTextureVariation(ped, 0)

drawableMask = GetPedDrawableVariation(ped, 1)
textureMask = GetPedTextureVariation(ped, 1)

drawableHair = GetPedDrawableVariation(ped, 2)
textureHair = GetPedTextureVariation(ped, 2)

drawableTorso = GetPedDrawableVariation(ped, 3)
textureTorso = GetPedTextureVariation(ped, 3)

drawableLeg = GetPedDrawableVariation(ped, 4)
textureLeg = GetPedTextureVariation(ped, 4)

drawableBag = GetPedDrawableVariation(ped, 5)
textureBag = GetPedTextureVariation(ped, 5)

drawableShoes = GetPedDrawableVariation(ped, 6)
textureShoes = GetPedTextureVariation(ped, 6)

drawableAccessory = GetPedDrawableVariation(ped, 7)
textureAccessory = GetPedTextureVariation(ped, 7)

drawableUndershirt = GetPedDrawableVariation(ped, 8)
textureUndershirt = GetPedTextureVariation(ped, 8)

drawableKevlar = GetPedDrawableVariation(ped, 9)
textureKevlar = GetPedTextureVariation(ped, 9)

drawableBadge = GetPedDrawableVariation(ped, 10)
textureBadge = GetPedTextureVariation(ped, 10)

drawableTorso2 = GetPedDrawableVariation(ped, 11)
textureTorso2 = GetPedTextureVariation(ped, 11)

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()    
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(1, 244) then 
			SetPedComponentVariation(ped, 0, drawableFace, textureFace, 1)
			SetPedComponentVariation(ped, 2, drawableHair, textureHair, 1)
			SetPedComponentVariation(ped, 3, drawableTorso, textureTorso, 1)
			SetPedComponentVariation(ped, 4, drawableLeg, textureLeg, 1)
			SetPedComponentVariation(ped, 5, drawableBag, textureBag, 1)
			SetPedComponentVariation(ped, 6, drawableShoes, textureShoes, 1)
			SetPedComponentVariation(ped, 7, drawableAccessory, textureAccessory, 1)
			SetPedComponentVariation(ped, 8, drawableUndershirt, textureUndershirt, 1)
			SetPedComponentVariation(ped, 9, drawableKevlar, textureKevlar, 1)
			SetPedComponentVariation(ped, 10, drawableBadge, textureBadge, 1)
			SetPedComponentVariation(ped, 11, drawableTorso2, textureTorso2, 1)
			if mask then
				SetPedComponentVariation(ped, 1, 0, 0, 1)
				mask = false
			else 
				SetPedComponentVariation(ped, 1, drawableMask, textureMask, 1)
				mask = true
			end
		end		
	end	
end)