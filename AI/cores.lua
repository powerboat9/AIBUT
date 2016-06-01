function createCore
    return {
        actions = {},
        function addAction(self, name, actionList)
            self.actions[name] = function()
                local i = 1
                while true do
                    local act = actionList[1]
                    if act.type == "action" then
                        local ok = self.actions[act.name]()
                        if not ok then self:corrupt() end
                    
end

local function createDrive(reliefActionName, painActionName, funct)
    return {
        function 

local function
