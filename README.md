##### 项目简介

计算机性能指标展现  
利用springboot+echarts获取Linux中的内存使用率，CPU利用率以及实时网速

##### 环境依赖

CentOS7
jdk 1.8

##### 启动步骤

1、启动虚拟机，关闭防火墙  
2、在虚拟机当前目录（/root）写入Nspeed.sh（实时网速获取脚本文件），该文件位于resource目录下  
3、自定义computer.ShowUtil中的虚拟机配置  
4、进入启动类Application进行启动  
5、访问http://localhost:8080/show  
注：如果没有lombok插件，去computer.util.result删除@Data注解，然后手动生成get，set方法  

##### 运行结果  
![image-20200724171003475](C:\Users\93593\AppData\Roaming\Typora\typora-user-images\image-20200724171003475.png)
