import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import math as pi
# 讀取Excel檔案並匯入DataFrame
df = pd.read_excel('joint_states.xlsx')

plt.plot(df['time'], ((df['E_joint1']*0.001 *5.074)), label='E_joint1', color='blue', linewidth=2, linestyle='solid')
plt.plot(df['time'], ((df['E_joint2']*0.001 *5.074)), label='E_joint2', color='red', linewidth=2, linestyle='dashed')
plt.plot(df['time'], (df['E_joint3']*0.001 *5.074), label='E_joint3', color='green', linewidth=2, linestyle='dotted')
plt.plot(df['time'], (df['E_joint4']*0.001 *5.074), label='E_joint4', color='orange', linewidth=2, linestyle='dashdot')
plt.plot(df['time'], (df['E_joint5']*0.001 *5.074), label='E_joint5', color='purple', linewidth=2, linestyle='solid')
plt.plot(df['time'], (df['E_joint6']*0.001 *5.074), label='E_joint6', color='brown', linewidth=2, linestyle='dashed')
plt.plot(df['time'], (df['E_joint7']*0.001 *5.074), label='E_joint7', color='pink', linewidth=2, linestyle='dotted')
plt.title('Joint Torque')
plt.show()

fig, (ax1, ax2, ax3, ax4) = plt.subplots(4, 1)

ax1.plot(df['time'], df['P_joint1'], label='P_joint1', color='blue', linewidth=2, linestyle='solid')
ax1.plot(df['time'], df['P_joint2'], label='P_joint2', color='red', linewidth=2, linestyle='dashed')
ax1.plot(df['time'], df['P_joint3'], label='P_joint3', color='green', linewidth=2, linestyle='dotted')
ax1.plot(df['time'], df['P_joint4'], label='P_joint4', color='orange', linewidth=2, linestyle='dashdot')
ax1.plot(df['time'], df['P_joint5'], label='P_joint5', color='purple', linewidth=2, linestyle='solid')
ax1.plot(df['time'], df['P_joint6'], label='P_joint6', color='brown', linewidth=2, linestyle='dashed')
ax1.plot(df['time'], df['P_joint7'], label='P_joint7', color='pink', linewidth=2, linestyle='dotted')
ax1.set_title('Joint Position')

ax2.plot(df['time'], df['V_joint1'], label='V_joint1', color='blue', linewidth=2, linestyle='solid')
ax2.plot(df['time'], df['V_joint2'], label='V_joint2', color='red', linewidth=2, linestyle='dashed')
ax2.plot(df['time'], df['V_joint3'], label='V_joint3', color='green', linewidth=2, linestyle='dotted')
ax2.plot(df['time'], df['V_joint4'], label='V_joint4', color='orange', linewidth=2, linestyle='dashdot')
ax2.plot(df['time'], df['V_joint5'], label='V_joint5', color='purple', linewidth=2, linestyle='solid')
ax2.plot(df['time'], df['V_joint6'], label='V_joint6', color='brown', linewidth=2, linestyle='dashed')
ax2.plot(df['time'], df['V_joint7'], label='V_joint7', color='pink', linewidth=2, linestyle='dotted')
ax2.set_title('Joint Velocity')

ax3.plot(df['time'], df['E_joint1'], label='E_joint1', color='blue', linewidth=2, linestyle='solid')
ax3.plot(df['time'], df['E_joint2'], label='E_joint2', color='red', linewidth=2, linestyle='dashed')
ax3.plot(df['time'], df['E_joint3'], label='E_joint3', color='green', linewidth=2, linestyle='dotted')
ax3.plot(df['time'], df['E_joint4'], label='E_joint4', color='orange', linewidth=2, linestyle='dashdot')
ax3.plot(df['time'], df['E_joint5'], label='E_joint5', color='purple', linewidth=2, linestyle='solid')
ax3.plot(df['time'], df['E_joint6'], label='E_joint6', color='brown', linewidth=2, linestyle='dashed')
ax3.plot(df['time'], df['E_joint7'], label='E_joint7', color='pink', linewidth=2, linestyle='dotted')
ax3.set_title('Joint Effort')
# 電流 to torque *0.001 *5.074
ax4.plot(df['time'], ((df['E_joint1']*0.001 *5.074)), label='E_joint1', color='blue', linewidth=2, linestyle='solid')
ax4.plot(df['time'], ((df['E_joint2']*0.001 *5.074)), label='E_joint2', color='red', linewidth=2, linestyle='dashed')
ax4.plot(df['time'], (df['E_joint3']*0.001 *5.074), label='E_joint3', color='green', linewidth=2, linestyle='dotted')
ax4.plot(df['time'], (df['E_joint4']*0.001 *5.074), label='E_joint4', color='orange', linewidth=2, linestyle='dashdot')
ax4.plot(df['time'], (df['E_joint5']*0.001 *5.074), label='E_joint5', color='purple', linewidth=2, linestyle='solid')
ax4.plot(df['time'], (df['E_joint6']*0.001 *5.074), label='E_joint6', color='brown', linewidth=2, linestyle='dashed')
ax4.plot(df['time'], (df['E_joint7']*0.001 *5.074), label='E_joint7', color='pink', linewidth=2, linestyle='dotted')
ax4.set_title('Joint Torque')
plt.show()


# plt.plot(df['time'], (df['E_joint1']*24*0.6), label='E_joint1', color='blue', linewidth=2, linestyle='solid')
# plt.plot(df['time'], (df['E_joint2']*24*0.6), label='E_joint2', color='red', linewidth=2, linestyle='dashed')
# plt.plot(df['time'], (df['E_joint3']*24*0.6), label='E_joint3', color='green', linewidth=2, linestyle='dotted')
# plt.plot(df['time'], (df['E_joint4']*24*0.6), label='E_joint4', color='orange', linewidth=2, linestyle='dashdot')
# plt.plot(df['time'], (df['E_joint5']*24*0.6), label='E_joint5', color='purple', linewidth=2, linestyle='solid')
# plt.plot(df['time'], (df['E_joint6']*24*0.6), label='E_joint6', color='brown', linewidth=2, linestyle='dashed')
# plt.plot(df['time'], (df['E_joint7']*24*0.6), label='E_joint7', color='pink', linewidth=2, linestyle='dotted')
# plt.title('Joint Torque')
# plt.show()
# 弧度/秒 to RPM

# 公式 τ = (I ∗ V ∗ E ∗60)/(rpm ∗ 2π)


# 讀取Excel檔案並匯入DataFrame
df = pd.read_excel('joint_states_cmd.xlsx')
# 創建一個具有兩個子圖的圖形，佈局為 2 行 x 1 列
fig, (ax1, ax2, ax3) = plt.subplots(3, 1)

# 讀取Excel檔案並匯入DataFrame
df = pd.read_excel('joint_states_cmd.xlsx')
# 創建一個具有兩個子圖的圖形，佈局為 2 行 x 1 列
fig, (ax1, ax2, ax3, ax4) = plt.subplots(4, 1)

ax1.plot(df['time'], df['P_joint1'], label='P_joint1', color='blue', linewidth=2, linestyle='solid')
ax1.plot(df['time'], df['P_joint2'], label='P_joint2', color='red', linewidth=2, linestyle='dashed')
ax1.plot(df['time'], df['P_joint3'], label='P_joint3', color='green', linewidth=2, linestyle='dotted')
ax1.plot(df['time'], df['P_joint4'], label='P_joint4', color='orange', linewidth=2, linestyle='dashdot')
ax1.plot(df['time'], df['P_joint5'], label='P_joint5', color='purple', linewidth=2, linestyle='solid')
ax1.plot(df['time'], df['P_joint6'], label='P_joint6', color='brown', linewidth=2, linestyle='dashed')
ax1.plot(df['time'], df['P_joint7'], label='P_joint7', color='pink', linewidth=2, linestyle='dotted')
ax1.set_title('Joint Position')

ax2.plot(df['time'], df['P_joint1'].diff() / df['time'].diff(), label='V_joint1', color='blue', linewidth=2, linestyle='solid')
ax2.plot(df['time'], df['P_joint2'].diff() / df['time'].diff(), label='V_joint2', color='red', linewidth=2, linestyle='dashed')
ax2.plot(df['time'], df['P_joint3'].diff() / df['time'].diff(), label='V_joint3', color='green', linewidth=2, linestyle='dotted')
ax2.plot(df['time'], df['P_joint4'].diff() / df['time'].diff(), label='V_joint4', color='orange', linewidth=2, linestyle='dashdot')
ax2.plot(df['time'], df['P_joint5'].diff() / df['time'].diff(), label='V_joint5', color='purple', linewidth=2, linestyle='solid')
ax2.plot(df['time'], df['P_joint6'].diff() / df['time'].diff(), label='V_joint6', color='brown', linewidth=2, linestyle='dashed')
ax2.plot(df['time'], df['P_joint7'].diff() / df['time'].diff(), label='V_joint7', color='pink', linewidth=2, linestyle='dotted')
ax2.set_title('Joint Velocity')

# TODO: fixed acc 
ax3.plot(df['time'], df['P_joint1'].diff() / df['time'].diff()/df['time'][:-1].diff(), label='V_joint1', color='blue', linewidth=2, linestyle='solid')
ax3.plot(df['time'], df['P_joint2'].diff() / df['time'].diff()/df['time'][:-1].diff(), label='V_joint2', color='red', linewidth=2, linestyle='dashed')
ax3.plot(df['time'], df['P_joint3'].diff() / df['time'].diff()/df['time'][:-1].diff(), label='V_joint3', color='green', linewidth=2, linestyle='dotted')
ax3.plot(df['time'], df['P_joint4'].diff() / df['time'].diff()/ df['time'][:-1].diff(), label='V_joint4', color='orange', linewidth=2, linestyle='dashdot')
ax3.plot(df['time'], df['P_joint5'].diff() / df['time'].diff()/ df['time'][:-1].diff(), label='V_joint5', color='purple', linewidth=2, linestyle='solid')
ax3.plot(df['time'], df['P_joint6'].diff() / df['time'].diff()/ df['time'][:-1].diff(), label='V_joint6', color='brown', linewidth=2, linestyle='dashed')
ax3.plot(df['time'], df['P_joint7'].diff() / df['time'].diff()/ df['time'][:-1].diff(), label='V_joint7', color='pink', linewidth=2, linestyle='dotted')
ax3.set_title('Joint Acc')

ax4.plot(df['time'], df['E_joint1'], label='E_joint1', color='blue', linewidth=2, linestyle='solid')
ax4.plot(df['time'], df['E_joint2'], label='E_joint2', color='red', linewidth=2, linestyle='dashed')
ax4.plot(df['time'], df['E_joint3'], label='E_joint3', color='green', linewidth=2, linestyle='dotted')
ax4.plot(df['time'], df['E_joint4'], label='E_joint4', color='orange', linewidth=2, linestyle='dashdot')
ax4.plot(df['time'], df['E_joint5'], label='E_joint5', color='purple', linewidth=2, linestyle='solid')
ax4.plot(df['time'], df['E_joint6'], label='E_joint6', color='brown', linewidth=2, linestyle='dashed')
ax4.plot(df['time'], df['E_joint7'], label='E_joint7', color='pink', linewidth=2, linestyle='dotted')
ax4.set_title('Joint Effort')
plt.show()
