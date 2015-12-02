function moveAllOfType(slot, name, disallow)
    disallow = disallow or function(slot) return true end
    name = name or ((turtle.getItemCount(slot) ~= 0) and turtle.getItemDetail(slot)) or error("Invalid Item Name")
    for i = 1, 16 do
        turtle.select(i)
        if ((turtle.getItemDetail().name == name) or not name) and (slot ~= i) and disallow(i) then
            turtle.transferTo(slot)
        end
    end
end

function compress()
    for i = 1, 15 do
        moveAllOfType(i, nil, function(p1) return p1 > i end)
    end
end

function clearForCache()
    local needCompress = true
    for i = 1, 16 do
        if turtle.getItemCount(i) == 0 then
            needCompress = false
        end
    end
    if needCompress then
        compress()
    end
    if turtle.getItemCount(16) ~= 0 then
        for i = 1, 15 do
            if turtle.getItemCount(i) == 0 then
                turtle.select(16)
                turtle.transferTo(i)
                return true
            end
        end
    end
    return false
end

function

function sort(format)
    local slotContains = {}
    local slotExamine = 1
    if not clearForCache() then
        printError("Can't clear an inventory slot")
        return false
    end
    for v in string.gmatch(format, "(.-);") do
        
