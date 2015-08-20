hive = {126, 76, -156}

allowBlockBreak = function(id, meta, facing)
    x, y, z = gps.locate(5)
    if not x then
        return false, "GPS unavailable"
    end
    
    if hive[1] == x and hive[2] == y and hive[3] == z then
        return false, "Will damage hive"
    else
        return true, "Will not damage hive"
    end
end
