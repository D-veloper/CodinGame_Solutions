-- Auto-generated code below aims at helping you parse
-- the standard input according to the problem statement.

n = tonumber(io.read()) -- the number of temperatures to analyse
next_token = string.gmatch(io.read(), "[^%s]+")
local temp = 5526
if n == 0 then
    temp = 0
end
for i=0,n-1 do
    -- t: a temperature expressed as an integer ranging from -273 to 5526
    t = tonumber(next_token())
    if temp > 0 then
        if temp > math.abs(t) then
            temp = t
        end

    elseif temp < 0 then
        if math.abs(temp) > math.abs(t) or math.abs(temp) == t then
            temp = t
        end
    end
end

-- Write an answer using print()
-- To debug: io.stderr:write("Debug message\n")

print(temp)