#!/usr/bin/env python

from enum import IntEnum
# from Queue import Queue
import rospy
import rospkg
import os
import time
import csv
from sensor_msgs.msg import JointState
import pandas as pd
import openpyxl

#
# topic_name = '/left_arm/robotis/present_joint_states'
topic_name = '/left_arm/robotis/goal_joint_states'


#
file_name = 'joint_states_cmd.xlsx'

#
df = pd.DataFrame(columns=['time', 'P_joint1', 'P_joint2', 'P_joint3', 'P_joint4', 'P_joint5', 'P_joint6', 'P_joint7'\
    , 'V_joint1', 'V_joint2', 'V_joint3', 'V_joint4', 'V_joint5', 'V_joint6', 'V_joint7'\
    , 'E_joint1', 'E_joint2', 'E_joint3', 'E_joint4', 'E_joint5', 'E_joint6', 'E_joint7'])

#
count = 0

#
start_time = time.time()

#
def callback(data):
    global df, count
    #
    current_time = time.time() - start_time
    #
    row_data = [current_time] + list(data.position) + list(data.velocity) + list(data.effort)
    # print(list(data.position))
    df.loc[count] = row_data
    count += 1
    print(count)

#
rospy.init_node('joint_state_listener', anonymous=True)

#
rospy.Subscriber(topic_name, JointState, callback)

#
try:
    rospy.spin()
except KeyboardInterrupt:
    print("Shutting down")

#
rospack = rospkg.RosPack()
path = os.path.join(rospack.get_path('strategy'), 'data')
if not os.path.exists(path):
    os.makedirs(path)
file_path = os.path.join(path, file_name)
df.to_excel(file_path, index=False)
print("Data saved to {}".format(file_path))