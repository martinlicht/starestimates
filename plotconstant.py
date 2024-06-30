#!/usr/bin/env python3

import numpy as np
import matplotlib.pyplot as plt


def EFNT(p):
    return (p * np.sin(np.pi / p)) / (2 * np.pi * ((p - 1) ** (1 / p)) )
    
    
# Define the function f(p)
def f(p):
    return EFNT(p) + ( EFNT(p) ** p + p * EFNT(p) ** (p-1) ) ** (1/p)  - (1/p) ** (1/p)

# Generate p values from 1 to 100
ps = np.linspace(1.01, 100, 1000)
ys = f(ps)

print(ps)
print(ys)

# Plot the function
plt.plot( ps, ys, label='f(p)')
plt.xlabel('p')
plt.ylabel('f(p)')
plt.title('Plot of f(p) from 1 to 100')
plt.legend()
plt.grid(True)
plt.show()


