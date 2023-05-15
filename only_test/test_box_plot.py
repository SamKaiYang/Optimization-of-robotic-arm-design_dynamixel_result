import matplotlib.pyplot as plt
import numpy as np

# 產生一些隨機數據
np.random.seed(42)
data = np.random.normal(loc=0, scale=1, size=100)

# 繪製四分位距圖
plt.boxplot(data)

# 添加標題和軸標籤
plt.title('Box Plot')
plt.xlabel('Data')

# 顯示圖形
plt.show()

import matplotlib.pyplot as plt
import numpy as np

# 假設有一個包含獎勵數據的列表
reward_data = [0.2, 0.5, 0.7, 0.3, 0.9, 0.4, 0.6, 0.8, 0.1, 1.0]

# 繪製四分位距圖
plt.boxplot(reward_data)

# 添加標題和軸標籤
plt.title('Reward Distribution')
plt.xlabel('Step')
plt.ylabel('Reward')

# 顯示圖形
plt.show()


import matplotlib.pyplot as plt
import numpy as np

# 假設有三組資料
data1 = [1, 2, 3, 4, 5]
data2 = [2, 4, 6, 8, 10]
data3 = [3, 6, 9, 12, 15]
# 將資料放入一個列表中
data = [data1, data2, data3]

# 標籤名稱
labels = ['Group 1', 'Group 2', 'Group 3']

box_colors = ['lightpink','lightgreen','lightblue']
# 繪製多筆資料的四分位距圖並設定標籤名稱
box = plt.boxplot(data, patch_artist=True, labels=labels)

# 為每個箱子設置顏色
for patch, color in zip(box['boxes'], box_colors):
    patch.set(facecolor=color)
# 添加標題和軸標籤
plt.title('Box Plot of Multiple Data')
plt.xlabel('Data Group')
plt.ylabel('Value')

# 顯示圖形
plt.show()




