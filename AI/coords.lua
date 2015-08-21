function getFacingCoords(direction, x, y, z)
    if type(direction) == "number" then
        if direction == 1 then
            direction = "north"
        elseif direction == 2 then
            direction = "east"
        elseif direction == 3 then
            direction = "south"
        elseif direction == 4 then
            direction = "west"
        elseif direction == 5 then
            direction = "up"
        elseif direction == 6 then
            direction = "down"
        end
    end
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
    else
        error("Invalid Type: " .. type(direction), 2)
    end
end
