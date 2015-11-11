local pendingActions = {}
local subroutines = {}
local goals = {}

function runSubroutine()

function runTurtleApi()
    local action = pendingActions[1]
    if action.type == "death" then
        if type(action.data) == string then
            local death = fs.open("AIBUT/data/flags/dead", w)
            death.write("true\n" .. action.data)
            fs.close(death)
        else
            fail()
        end
    elseif action.type == "movement" then
        if type(action.data) == "string" then
            turtle[action.data]()
        else
            fail()
        end
    elseif action.type == "install subroutine" then
        if type(action.data) == "table" then
            table.insert(subroutines, action.data)
        else
            fail()
        end
    elseif action.type == "add goal" then
        if type(action.data) == "table" then
            table.insert(goals, action.data)
        else
            fail()
        end
    else
        fail()
    end
    table.remove(pendingActions, 1)
end
