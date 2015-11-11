local leader = nil
local level = nil

os.loadAPI("AIBUT/config")
local mode = config.type
os.unloadAPI("AIBUT/config")

local stack = {
    admin_control = {
        action = function(params)
            local code = nil
            local i = 0
            for v in ipairs(params) do
                i++
                if i ~= 1 then
                    code = code .. " "
                end
                code = code .. v
            end
        end,
        level = 4,--4 = admin, 3 = trade, 2 = leader, 1 = self
        expires = -1--Time in ticks world has been loaded
    }
}

function locateByGPS()

function establishLead(id)
    rednet.broadcast("getLeader " .. os.getComputerID())
    local id, msg = rednet.receive("herd", 10)
    _, _, leader, level = string.find(msg, "^giveLeader (%d+) level (%d+)$")
    if not (leader and level) then
        return establishLead(id)
    end
end

function findID(herdIDs, findID)
