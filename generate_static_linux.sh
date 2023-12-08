#!/bin/bash
# 这是一个 sh 脚本的示例，用来执行 cpptest 的相关命令
# 设置工作目录的变量
WORKSPACE_DIR=/home/devtest/myagent/_work/work_space
# 删除工作目录，如果存在的话
rm -rf $WORKSPACE_DIR
# 创建工作目录
mkdir $WORKSPACE_DIR
# 使用 cpptesttrace 工具来收集构建信息
"/home/devtest/cpptest-pro-2022.1.0/cpptest/bin/cpptesttrace" make clean all
# 使用 cpptestcli 工具来执行静态分析，并生成报告
"/home/devtest/cpptest-pro-2022.1.0/cpptest/cpptestcli" -data $WORKSPACE_DIR -config "conf/pro/cpptest_settings.properties" -settings "conf/pro/localsettings.properties" -report "build/reports/cpp-pro/static" -bdf "cpptestscan.bdf"
