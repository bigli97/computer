##### 项目简介

计算Linux虚拟机指标包括内存使用率，cpu使用率，实时网速。获取hdfs的健康信息，包括配置容量，现有容量，DFS余量，非DFS使用量。并进行可视化展示

##### 技术需要

【必用】spring boot + Echarts + thymeleaf + jdk8以上【选用】Redis+Vue+Bootstrap

##### 启动步骤

1、启动虚拟机，关闭防火墙  
2、在虚拟机当前目录（/root）写入Nspeed.sh（实时网速获取脚本文件），该文件位于resource目录下  
3、自定义computer.ShowUtil中的虚拟机配置  
4、将根目录下的computer_index.sql导入数据库   
5、启动Linux的HDFS服务  
6、进入启动类Application进行启动  
7、访问http://localhost:8080/home或者http://127.0.0.1:8080/home  
 

注：（1）建议安装lombok插件。如果没有lombok插件，删除lombok自带的注解，手动生成get，set方法  
	（2）若启用redis服务，步骤2配置过则无需配置。若想自定义ip端口号，进入
computer.service.impl.ComputerIndexServiceImpl进行配置  
	（3）就算不启动redis服务，该项目也可以正常运行  
	（4）需要连接互联网，hdfs和jsch通信使用  
	（5）登录用户名密码admin 123

##### 运行结果  
![Linux指标](https://raw.githubusercontent.com/bigli97/computer/master/src/main/resources/image/Linux%E6%8C%87%E6%A0%87.gif)
