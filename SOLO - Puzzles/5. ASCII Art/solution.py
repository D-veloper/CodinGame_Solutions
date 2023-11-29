import sys
import math

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

l = int(input())
h = int(input())
t = input()
for i in range(h):
    row = input()

    for i in range(len(t)):
        letter = t[i].upper()
        pos = 0

        if ord(letter) < ord('A') or ord(letter) > ord('Z'):
            pos = 104
        else:
            pos = (ord(letter) - ord('A')) * l

        for j in range(pos, pos + l):
            sys.stdout.write(row[j])
    print()

# Write an answer using print
# To debug: print("Debug messages...", file=sys.stderr, flush=True)

