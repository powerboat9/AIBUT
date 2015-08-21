function getSides()
    return {
        "north",
        "east",
        "south",
        "west",
        "up",
        "down"
    }
end

function getFacingCoords(direction, x, y, z)
    directionLow = ""
    
    if type(direction) == "number" then
        directionLow = getSides()[direction]
        if not directionLow then
            error("Invalid Direction ID", 2)
        end
    elseif type(direction) == "string" then
        local directionLow = string.lower(direction)
    else
        error("Invalid Type: " .. type(direction), 2)
    end
        
    if directionLow == "east" then
        return x + 1, y, z
    elseif directionLow == "west" then
        return x - 1, y, z
    elseif directionLow == "up" then
        return x, y + 1, z
    elseif directionLow == "down" then
        return x, y - 1, z
    elseif directionLow == "south" then
        return x, y, z + 1
    elseif directionLow == "north" then
        return x, y, z - 1
    else
        error("Invalid Direction: " .. direction, 2)
    end
end
