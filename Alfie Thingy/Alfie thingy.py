import sys
import time
import random
min_val = -sys.maxsize
max_val = sys.maxsize
print("Alfie thingy but... GERMANY PYTHON")
print(sys.version)
while True:
    print(f"Alfie's favourite number is {random.randint(min_val, max_val)}")
    time.sleep(1)
input("\nPress Enter to exit...")