'''
import tensorflow as tf
from tensorboard.backend.event_processing.event_accumulator import EventAccumulator
import matplotlib.pyplot as plt

# 指定 event 文件的路徑
event_file = "./Mar29_14-29-40_ws2020/events.out.tfevents.1680092980.ws2020"

# 建立一個 EventAccumulator 對象來讀取 event 文件
event_acc = EventAccumulator(event_file)
event_acc.Reload()

# 取得所有 summary keys
tags = event_acc.Tags()["scalars"]
print(type(tags))
# 從 event 文件中讀取數據
steps = []
value = []
for tag in tags:
    events = event_acc.Scalars(tag)
    print(tag)
    steps = [event.step for event in events]
    value = [event.value for event in events]
    if tag == "trained-model/Loss_per_frame/":
        # 繪製圖表
        plt.plot(steps, value)
        plt.title("trained-model/Loss_per_frame/")
        plt.xlabel("Step")
        plt.ylabel("Loss")
        plt.show()
    elif tag == "trained-model/train_step_reward/":
        # 繪製圖表
        plt.plot(steps, value)
        plt.title("trained-model/train_step_reward/")
        plt.xlabel("Step")
        plt.ylabel("Reward")
        plt.show()
    elif tag == "trained-model/loss_log/":
        # 繪製圖表
        plt.plot(steps, value)
        plt.title("trained-model/loss_log/")
        plt.xlabel("Step")
        plt.ylabel("Loss")
        plt.show()
    elif tag == "trained-model/Average_Return/":
        # 繪製圖表
        plt.plot(steps, value)
        plt.title("trained-model/Average_Return/")
        plt.xlabel("Step")
        plt.ylabel("Reward")
        plt.show()
    elif tag == "tested-model/test_step_reward/":
        # 繪製圖表
        plt.plot(steps, value)
        plt.title("tested-model/test_step_reward/")
        plt.xlabel("Step")
        plt.ylabel("Reward")
        plt.show()
    elif tag == "tested-model/test_episode_reward/":
        # 繪製圖表
        plt.plot(steps, value)
        plt.title("tested-model/test_episode_reward/")
        plt.xlabel("Episode")
        plt.ylabel("Reward")
        plt.show()
'''
### 比較多個events
# plt.savefig('figure.png', dpi=300)
# '''
import tensorflow as tf
from tensorboard.backend.event_processing.event_accumulator import EventAccumulator
import matplotlib.pyplot as plt

# 指定 event 文件的路徑
event_files = ["./Mar18_12-50-25_ws2030/events.out.tfevents.1679140225.ws2030", "./Mar29_14-29-40_ws2020/events.out.tfevents.1680092980.ws2020", "./Apr02_13-15-21_ws2030/events.out.tfevents.1680434121.ws2030"]

# 設定圖表的樣式
plt_themes = ["seaborn-darkgrid", "ggplot", "dark_background", "bmh", "fivethirtyeight"]
plt.style.use(plt_themes[0])
# plt.legend(bbox_to_anchor=(1.05, 1), loc='upper right')
# 建立一個 Figure 物件和多個 Axes 物件
fig, axs = plt.subplots(3, 2, figsize=(10, 10))

# 從每個 event 文件中讀取數據，並繪製在對應的子圖上
for i, event_file in enumerate(event_files):
    # 建立一個 EventAccumulator 對象來讀取 event 文件
    event_acc = EventAccumulator(event_file)
    event_acc.Reload()

    # 取得所有 summary keys
    tags = event_acc.Tags()["scalars"]
    color = ['red', 'green', 'blue']
    linestyle = ['dashed', 'dotted', 'dashdot']
    Log = ['DQN','DDQN','C51']
    # 從 event 文件中讀取數據
    for tag in tags:
        events = event_acc.Scalars(tag)
        steps = [event.step for event in events]
        value = [event.value for event in events]
        
        # 繪製在對應的子圖上
        if tag == "trained-model/Loss_per_frame/":
            axs[0, 0].plot(steps, value, label=Log[i], color=color[i], marker='o', linestyle=linestyle[i], linewidth=0.5, markersize=0.5)
            axs[0, 0].set_xlabel("Step")
            axs[0, 0].set_ylabel("Loss")
            axs[0, 0].legend(bbox_to_anchor=(1.05, 1), loc='upper right')
        elif tag == "trained-model/train_step_reward/":
            axs[0, 1].plot(steps, value, label=Log[i], color=color[i], marker='o', linestyle=linestyle[i], linewidth=0.5, markersize=0.5)
            axs[0, 1].set_xlabel("Step")
            axs[0, 1].set_ylabel("Reward")
            axs[0, 1].legend(bbox_to_anchor=(1.05, 1), loc='upper right')
        elif tag == "trained-model/loss_log/":
            axs[1, 0].plot(steps, value, label=Log[i], color=color[i], marker='o', linestyle=linestyle[i], linewidth=0.5, markersize=0.5)
            axs[1, 0].set_xlabel("Step")
            axs[1, 0].set_ylabel("Loss")
            axs[1, 0].legend(bbox_to_anchor=(1.05, 1), loc='upper right')
        elif tag == "trained-model/Average_Return/":
            axs[1, 1].plot(steps, value, label=Log[i], color=color[i], marker='o', linestyle=linestyle[i], linewidth=0.5, markersize=0.5)
            axs[1, 1].set_xlabel("Step")
            axs[1, 1].set_ylabel("Reward")
            axs[1, 1].legend(bbox_to_anchor=(1.05, 1), loc='upper right')
        elif tag == "tested-model/test_step_reward/":
            axs[2, 0].plot(steps, value, label=Log[i], color=color[i], marker='o', linestyle=linestyle[i], linewidth=0.5, markersize=0.5)
            axs[2, 0].set_xlabel("Step")
            axs[2, 0].set_ylabel("Reward")
            axs[2, 0].legend(bbox_to_anchor=(1.05, 1), loc='upper right')
        elif tag == "tested-model/test_episode_reward/":
            axs[2, 1].plot(steps, value, label=Log[i], color=color[i], marker='o', linestyle=linestyle[i], linewidth=0.5, markersize=0.5)
            axs[2, 1].set_xlabel("Episode")
            axs[2, 1].set_ylabel("Reward")
            axs[2, 1].legend(bbox_to_anchor=(1.05, 1), loc='upper right')
# 顯示圖表
plt.savefig('plot_tensorborad_log.png', dpi=300)
plt.show()
# '''