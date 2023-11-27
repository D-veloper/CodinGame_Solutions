-- The while loop represents the game.
-- Each iteration represents a turn of the game
-- where you are given inputs (the heights of the mountains)
-- and where you have to print an output (the index of the mountain to fire on)
-- The inputs you are given are automatically updated according to your last actions.

while true do
    local max = 0
    local imax = 0
    for i=0,8-1 do
       local  mountainH = tonumber(io.read()) -- represents the height of one mountain.
        if mountainH > max then
            max = mountainH
            imax = i
        end
    end
    
    -- Write an action using print()
    -- To debug: io.stderr:write("Debug message\n")
    print(imax) -- The index of the mountain to fire on.
end