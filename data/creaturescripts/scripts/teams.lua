--One guild need to have the id 1, here is the red team/guild
function onLogin(player)
    local redlooktype = {lookAddons =  player:getOutfit().lookAddons, lookType = player:getOutfit().lookType, lookHead = 74, lookBody = 94, lookLegs = 113, lookFeet = 132}
    local bluelooktype = { lookAddons =  player:getOutfit().lookAddons, lookType = player:getOutfit().lookType, lookHead = 49, lookBody = 86, lookLegs = 69, lookFeet = 105}

	local guild = player:getGuild():getId()

    if guild == 1 then
    player:setOutfit(redlooktype , -1)   
    else
    player:setOutfit(bluelooktype , -1)
    end   

	return true
end
