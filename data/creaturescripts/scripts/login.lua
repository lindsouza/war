local firstItems = {2050, 2382}

function onLogin(player)
	local loginStr = "Welcome to " .. configManager.getString(configKeys.SERVER_NAME) .. "!"
	player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
    	player:addExperience(15694800, false)

	-- Stamina
	nextUseStaminaTime[player.uid] = 0

	-- Promotion
	local vocation = player:getVocation()
	local promotion = vocation:getPromotion()
	if player:isPremium() then
		local value = player:getStorageValue(STORAGEVALUE_PROMOTION)
		if not promotion and value ~= 1 then
			player:setStorageValue(STORAGEVALUE_PROMOTION, 1)
		elseif value == 1 then
			player:setVocation(promotion)
		end
	elseif not promotion then
		player:setVocation(vocation:getDemotion())
	end

    --First items
		player:addItem(firstItems[i], 1)
		player:addItem(player:getSex() == 0 and 2651 or 2650, 1)
		player:addItem(1987, 1):addItem(2674, 1)

	-- Events
	player:registerEvent("PlayerDeath")
	player:registerEvent("DropLoot")
    	player:registerEvent("Teams")
	return true
end
