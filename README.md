##### 项目简介

Linux性能指标展现  
利用springboot+echarts+jq+mybatis+redis获取Linux中的内存使用率，CPU利用率、以及实时网速以及HDFS中的一些信息

##### 技术需要

CentOS 7  
jdk 1.8  
mysql 5.7  
redis（可无）

##### 启动步骤

1、启动虚拟机，关闭防火墙  
2、在虚拟机当前目录（/root）写入Nspeed.sh（实时网速获取脚本文件），该文件位于resource目录下  
3、自定义computer.ShowUtil中的虚拟机配置  
4、将根目录下的computer_index.sql导入数据库   
5、进入启动类Application进行启动  
6、访问http://localhost:8080/show或者http://127.0.0.1:8080/show  
 

注：（1）建议安装lombok插件。如果没有lombok插件，删除lombok自带的注解，手动生成get，set方法  
	（2）若启用redis服务，步骤2配置过则无需配置。若想自定义ip端口号，进入
computer.service.impl.ComputerIndexServiceImpl进行配置  
	（3）就算不启动redis服务，该项目也可以正常运行  

##### 运行结果  
![计算机指标](https://raw.githubusercontent.com/bigli97/computer/master/src/main/resources/image/%E8%AE%A1%E7%AE%97%E6%9C%BA%E6%8C%87%E6%A0%87.gif)
