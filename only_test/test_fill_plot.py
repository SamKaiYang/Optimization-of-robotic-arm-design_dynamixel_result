import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
y_mean = np.sin(x)
y_std = 0.1 * np.random.randn(len(x))  # 模擬的標準差

plt.plot(x, y_mean, color='b', label='Mean')
plt.fill_between(x, y_mean - y_std, y_mean + y_std, color='b', alpha=0.3, label='Uncertainty')

plt.xlabel('X軸')
plt.ylabel('Y軸')
plt.legend()
plt.show()

import itertools

a1 = [5.1, 25.3, 44.7]
a2 = [5.1, 25.3, 44.7]

combinations = []
for num1 in a1:
    for num2 in a2:
        combinations.append(num1 + num2)

print(combinations)