import sys
import math

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

n = int(input())  # the number of temperatures to analyse
temp = 5526
if n == 0:
    temp = 0
for i in input().split():
    # t: a temperature expressed as an integer ranging from -273 to 5526
    t = int(i)

    if temp > 0:
        if temp > abs(t):
            temp = t
    elif temp < 0:
        if abs(temp) > abs(t) or abs(temp) == t:
            temp = t

# Write an answer using print
# To debug: print("Debug messages...", file=sys.stderr, flush=True)

print(temp)
