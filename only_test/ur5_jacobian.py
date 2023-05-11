import numpy as np

# UR5机械臂DH参数
theta = [0, 0, 0, 0, 0, 0]
a = [0, -0.425, -0.3922, 0, 0, 0]
d = [0.1625, 0, 0, 0.1333, 0.0997, 0.0996]
alpha = [np.pi/2, 0, 0, np.pi/2, -np.pi/2, 0]

# 计算机械臂末端执行器的位置和姿态
T = np.eye(4)
for i in range(6):
    Ti = np.array([[np.cos(theta[i]), -np.sin(theta[i])*np.cos(alpha[i]), np.sin(theta[i])*np.sin(alpha[i]), a[i]*np.cos(theta[i])],
                   [np.sin(theta[i]), np.cos(theta[i])*np.cos(alpha[i]), -np.cos(theta[i])*np.sin(alpha[i]), a[i]*np.sin(theta[i])],
                   [0, np.sin(alpha[i]), np.cos(alpha[i]), d[i]],
                   [0, 0, 0, 1]])
    T = np.dot(T, Ti)
p = T[:3, 3]
R = T[:3, :3]

# 计算机械臂末端执行器的线速度和角速度
Jv = np.zeros((3, 6))
Jo = np.zeros((3, 6))
for i in range(6):
    # 计算机械臂第i个关节的位置和方向
    Ti = np.eye(4)
    for j in range(i):
        Tj = np.array([[np.cos(theta[j]), -np.sin(theta[j])*np.cos(alpha[j]), np.sin(theta[j])*np.sin(alpha[j]), a[j]*np.cos(theta[j])],
                       [np.sin(theta[j]), np.cos(theta[j])*np.cos(alpha[j]), -np.cos(theta[j])*np.sin(alpha[j]), a[j]*np.sin(theta[j])],
                       [0, np.sin(alpha[j]), np.cos(alpha[j]), d[j]],
                       [0, 0, 0, 1]])
        Ti = np.dot(Ti, Tj)

    # 计算机械臂第i个关节的旋转轴方向向量和位置向量
    zi = Ti[:3, 2]
    print("zi",zi)
    pi = Ti[:3, 3]
    print("pi",pi)

    # 计算机械臂末端执行器的线速度和角速度
    Jv[:, i] = np.cross(zi, p-pi)
    print("Jv[:, i]",Jv[:, i])
    Jo[:, i] = zi
    print("Jo[:, i]",Jo[:, i])

# 计算机械臂的雅可比矩阵
J = np.vstack((Jv, Jo))
print(J)