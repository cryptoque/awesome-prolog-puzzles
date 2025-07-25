from z3 import *
import time

start = time.perf_counter()

# Create solver instance
s = Solver()

# Each dwarf is either honest (1) or liar (0)
Red, Orange, Yellow, Green, Blue, Black, White = Bools('Red Orange Yellow Green Blue Black White')

# Alias for easy reference
dwarfs = [Red, Orange, Yellow, Green, Blue, Black, White]

# Red: "Black has a delicious apple"
s.add(Red == Black)

# Orange: "There are exactly three delicious apples"
total_honest = Sum([If(d, 1, 0) for d in dwarfs])
s.add(If(Orange, total_honest == 3, total_honest != 3))

# Yellow: "Orange and I are the same type"
s.add(If(Yellow, Orange == Yellow, Orange != Yellow))

# Blue: "White and I are not the same type"
s.add(If(Blue, White != Blue, White == Blue))

# Black: "Green and I are not the same type"
s.add(If(Black, Green != Black, Green == Black))

# White: "Red has a delicious apple"
s.add(White == Red)

# Solve
if s.check() == sat:
    m = s.model()
    result = {str(d): m[d] for d in dwarfs}
    print("Delicious apples are held by:")
    for dwarf, honest in result.items():
        if honest: print(f"  {dwarf}")
else:
    print("No solution found.")

end = time.perf_counter()
print(f"Runtime: {end - start:.6f} seconds")
