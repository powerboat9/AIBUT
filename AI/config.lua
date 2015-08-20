hive = {126, 76, -156}

allowBlockBreak = function(id, meta, facing)
    x, y, z = gps.locate(5)
    if not x then
        return false, "GPS unavailable"
    end
    
    if hive[1] != x or hive[2] != y or hive[3] != z then
        return true, "Will not damage hive"
    else
        return false, "Will damage hive"
    end
end
