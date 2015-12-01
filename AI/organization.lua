function moveAllOfType(slot)
    for i = 1, 16 do
        

function compress()
    for i = 1, 16 do
        

function clearForCache()
    for i = 16, 1, -1 do
        turtle.select(i)
        local amountToMove

function sort(format)
    local slotContains = {}
    local slotExamine = 1
    local cacheSlot = clearForCache()
    for v in string.gmatch(format, "(.-);") do
        
