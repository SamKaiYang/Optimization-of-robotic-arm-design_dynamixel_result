import random
MAX_LENGTH = 40
MIN_LENGTH = 5
total_arm_length = 50 # 固定值

diff_random_length = random.uniform(MIN_LENGTH, total_arm_length-MIN_LENGTH)
upper_arm_length = random.uniform(MIN_LENGTH, total_arm_length-diff_random_length)
lower_arm_length = total_arm_length - upper_arm_length

# 对 upper_arm_length 和 lower_arm_length 进行限制
if upper_arm_length > MAX_LENGTH:
    upper_arm_length = MAX_LENGTH
    lower_arm_length = total_arm_length - upper_arm_length
elif lower_arm_length > MAX_LENGTH:
    lower_arm_length = MAX_LENGTH
    upper_arm_length = total_arm_length - lower_arm_length
elif upper_arm_length < MIN_LENGTH:
    upper_arm_length = MIN_LENGTH
    lower_arm_length = total_arm_length - upper_arm_length
elif lower_arm_length < MIN_LENGTH:
    lower_arm_length = MIN_LENGTH
    upper_arm_length = total_arm_length - lower_arm_length

print("upper:", upper_arm_length)
print("lower:", lower_arm_length)

import numpy as np
q1_s = -180
q1_end = 180
q2_s = -50
q2_end = 230
q3_s = -150
q3_end = 150
q4_s = -180
q4_end = 180
q5_s = -180
q5_end = 180
q6_s = -180
q6_end = 180
N = 10 # 改為直接random 10個點
theta1 = np.around(q1_s + (q1_end - q1_s) * np.random.rand(N, 1), 1)
theta2 = np.around(q2_s + (q2_end - q2_s) * np.random.rand(N, 1), 1)
theta3 = np.around(q3_s + (q3_end - q3_s) * np.random.rand(N, 1), 1)
theta4 = np.around(q4_s + (q4_end - q4_s) * np.random.rand(N, 1), 1)
theta5 = np.around(q5_s + (q5_end - q5_s) * np.random.rand(N, 1), 1)
theta6 = np.around(q6_s + (q6_end - q6_s) * np.random.rand(N, 1), 1)
print("1:",theta1)
print("2:",theta2)
print("3:",theta3)
print("4:",theta4)
print("5:",theta5)
print("6:",theta6)

x = 4
x = max(-30, min(x, 30))
print("x:",x)