function getFacingCoords(direction, x, y, z)
    if type(direction) == "string" then
        directionLow = string.lower(direction)
        elseif directionLow == "up" then
            return x, y + 1, z
        elseif directionLow == "down" then
            return x, y - 1, z
        else
            error("Invalid Direction: " .. direction, 2)
        end
