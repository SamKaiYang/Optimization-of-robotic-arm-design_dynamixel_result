import pandas as pd
import os
# 读取Excel文件
# df = pd.read_excel('C51-6-variable-20230508-193940/tested_reward_state_1-A-10.xlsx', header=None, \
                #    names=['ratio', 'torque', 'consuption', 'reachable', 'manipulator', 'axis2', 'axis3', 'all_length',\
                #            'nan', 'reward', 'nan', 'motor2', 'motor3'])
# df = pd.read_excel('test_result_excel/tested_reward_state_1-A-10.xlsx', header=None, \
                #    names=['ratio', 'torque', 'consuption', 'reachable', 'manipulator', 'axis2', 'axis3', 'all_length',\
                #            'nan', 'reward', 'nan', 'motor2', 'motor3'])
# 設定要讀取的檔案路徑和開頭字串
file_path = './test_result_excel'
file_prefix = 'tested_reward_state_'  # 或者是其他開頭字串 # 1-A-10

# 獲取符合開頭字串的所有檔案路徑
file_list = [os.path.join(file_path, f) for f in os.listdir(file_path) if f.startswith(file_prefix)]
print('file_list:',file_list)
df_list = [pd.read_excel(f,header=None, \
                   names=['ratio', 'torque', 'consuption', 'reachable', 'manipulator', 'axis2', 'axis3', 'all_length',\
                           'nan', 'reward', 'nan', 'motor2', 'motor3']) for f in file_list]

for _ in range(len(file_list)):
        df_sorted = df_list[_].sort_values(by=['reachable', 'manipulator', 'consuption'], ascending=[False, False, True])
        print('file_list:',file_list[_])
        # 打印排序后的DataFrame，以确认最佳值
        print(df_sorted)

        # 访问最佳值的行和列
        best_reachable = df_sorted.iloc[0]['reachable']
        best_manipulator = df_sorted.iloc[0]['manipulator']
        best_power_consumption = df_sorted.iloc[0]['consuption']
        best_ratio = df_sorted.iloc[0]['ratio']
        best_torque = df_sorted.iloc[0]['torque']
        
        print(df_sorted.iloc[0].transpose())
        # print(best_reachable)
        # print(best_manipulator)
        # print(best_power_consumption)