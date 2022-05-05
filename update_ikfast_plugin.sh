search_mode=OPTIMIZE_MAX_JOINT
srdf_filename=xarm.srdf
robot_name_in_srdf=xarm
moveit_config_pkg=xarm_moveit_config
robot_name=xarm
planning_group_name=xarm
ikfast_plugin_pkg=xarm_xarm_ikfast_plugin
base_link_name=xarm_base_link
eef_link_name=eef_base_link
ikfast_output_path=/home/scott/robot_ws/src/xarm_xarm_ikfast_plugin/src/xarm_xarm_ikfast_solver.cpp

rosrun moveit_kinematics create_ikfast_moveit_plugin.py\
  --search_mode=$search_mode\
  --srdf_filename=$srdf_filename\
  --robot_name_in_srdf=$robot_name_in_srdf\
  --moveit_config_pkg=$moveit_config_pkg\
  $robot_name\
  $planning_group_name\
  $ikfast_plugin_pkg\
  $base_link_name\
  $eef_link_name\
  $ikfast_output_path
