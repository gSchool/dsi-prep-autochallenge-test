import matplotlib.pyplot as plt
import numpy as np


x_vals = np.linspace(-2 * np.pi, 2*np.pi, 25)
plt.figure(figsize=(6, 6))
plt.scatter(x_vals, np.sin(x_vals))
plt.savefig('correct_solution.png')