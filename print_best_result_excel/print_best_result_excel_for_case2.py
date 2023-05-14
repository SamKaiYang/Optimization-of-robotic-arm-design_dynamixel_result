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
file_path = './ddqn_tested_reward_state'
file_prefix = 'tested_reward_state_'  # 或者是其他開頭字串 # 1-A-10

# 獲取符合開頭字串的所有檔案路徑
file_list = [os.path.join(file_path, f) for f in os.listdir(file_path) if f.startswith(file_prefix)]
print('file_list:',file_list)

# Use list comprehension to extract the parts from the file names
parts_list = [file_name.split('/')[-1].split('.')[0].split('_')[-1] for file_name in file_list]

print(parts_list)

df_list = [pd.read_excel(f,header=None, \
                   names=['ratio', 'torque', 'consuption', 'reachable', 'manipulator', 'axis2', 'axis3', 'all_length',\
                           'nan', 'reward', 'nan', 'motor2', 'motor3']) for f in file_list]

for _ in range(len(file_list)):
        df_sorted = df_list[_].sort_values(by=['reachable', 'manipulator', 'consuption'], ascending=[False, False, True])
        print('file_list:',file_list[_])
        print('parts_list:',parts_list[_])
        # 打印排序后的DataFrame，以确认最佳值
        print(df_sorted)

        # 访问最佳值的行和列
        best_reachable = df_sorted.iloc[0]['reachable']
        best_manipulator = df_sorted.iloc[0]['manipulator']
        best_power_consumption = df_sorted.iloc[0]['consuption']
        best_ratio = df_sorted.iloc[0]['ratio']
        best_torque = df_sorted.iloc[0]['torque']
        
        print(df_sorted.iloc[0].transpose())

        print("------最佳配置-----")
        best_axis2 = df_sorted.iloc[0]['axis2']
        best_torque = df_sorted.iloc[0]['axis3']
        best_motor2 = df_sorted.iloc[0]['motor2']
        best_motor3 = df_sorted.iloc[0]['motor3']
        # print(best_reachable)
        # print(best_manipulator)
        # print(best_power_consumption)

        # 與原設計比較
        f_ori = "tested_state_original_design.xlsx"
        ori_df = pd.read_excel(f_ori,header=None, \
                        names=['mission_name', 'ratio','torque', 'consuption', 'reachable', 'manipulator', 'axis2', 'axis3',\
                                'motor2', 'motor3'])
        # 搜尋特定欄位中的值 mission_name# 選擇第一列
        mission_name_row = ori_df.iloc[:,0]

        # 搜尋第一列中特定的值
        search_value = parts_list[_]
        if search_value in mission_name_row.values:
                # 印出特定值所在的欄位位置
                index = list(mission_name_row.values).index(search_value)
                print(f'The search value "{search_value}" was found in column {index + 1}.')
                # mission_ori_result = ori_df.iloc[index]
                # 访问值的行和列
                ori_reachable = ori_df.iloc[index]['reachable']
                ori_manipulator = ori_df.iloc[index]['manipulator']
                ori_power_consumption = ori_df.iloc[index]['consuption']
                ori_ratio = ori_df.iloc[index]['ratio']
                ori_torque = ori_df.iloc[index]['torque']
                print(ori_df.iloc[index].transpose())
                # print("mission_ori_result:",mission_ori_result)
        else:
                print(f'The search value "{search_value}" was not found in the first row.')
