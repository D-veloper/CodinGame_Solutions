-- Auto-generated code below aims at helping you parse
-- the standard input according to the problem statement.
-- ---
-- Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.

-- lightX: the X position of the light of power
-- lightY: the Y position of the light of power
-- initialTX: Thor's starting X position
-- initialTY: Thor's starting Y position
next_token = string.gmatch(io.read(), "[^%s]+")
lightX = tonumber(next_token())
lightY = tonumber(next_token())
initialTX = tonumber(next_token())
initialTY = tonumber(next_token())

-- game loop
while true do
    remainingTurns = tonumber(io.read()) -- The remaining amount of turns Thor can move. Do not remove this line.
    
    -- Write an action using print()
    -- To debug: io.stderr:write("Debug message\n")
    local direction = ""
    if initialTY < lightY then
        direction = direction.."S"
        initialTY = initialTY + 1

    elseif initialTY > lightY  then
        direction = direction.."N"
        initialTY = initialTY - 1
    end
    
    if initialTX < lightX then
        direction = direction.."E"
        initialTX = initialTX + 1

    elseif initialTX > lightX then
        direction = direction.."W"
        initialTX = initialTX - 1    
    end

    -- A single line providing the move to be made: N NE E SE S SW W or NW
    print(direction)
end