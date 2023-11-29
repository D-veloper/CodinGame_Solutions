-- Auto-generated code below aims at helping you parse
-- the standard input according to the problem statement.

L = tonumber(io.read())
H = tonumber(io.read())
T = io.read()
for i=0,H-1 do
    ROW = io.read()

    for i = 1, #T do
        local letter = T:sub(i,i):upper()
        local pos

        if (string.byte(letter) < string.byte('A')) or (string.byte(letter) > string.byte('Z')) then
            pos = 105
        else
            pos = ((string.byte(letter) - string.byte('A')) * L) + 1
        end

        for j = pos, (pos + L)-1 do
            io.write(ROW:sub(j,j))
        end
    end
    print()
end

-- Write an answer using print()
-- To debug: io.stderr:write("Debug message\n")
