function getFacingCoords(direction, x, y, z)
    if type(direction) == "string" then
        directionLow = string.lower(direction)
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
