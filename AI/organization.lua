function moveAllOfType(slot, name)
    for i = 1, 16 do
        turtle.select(i)
        if (turtle.getItemDetail().name == name) and (slot ~= i) then
            turtle.transferTo(slot)
        end
    end
end

function compress()
    

function clearForCache()
    if turtle.getItemCount(16) ~= 0 then
        for i = 1, 15 do
            if turtle.getItemCount(i) == 0 then
                turtle.select(16)
                turtle.transferTo(i)
            end
        end
    else
        for i = 16, 1, -1 do
            turtle.select(i)
            local amountToMove

function sort(format)
    local slotContains = {}
    local slotExamine = 1
    local cacheSlot = clearForCache()
    for v in string.gmatch(format, "(.-);") do
        
