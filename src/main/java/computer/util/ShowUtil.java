package computer.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.commons.io.IOUtils;

import com.jcraft.jsch.ChannelExec;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.Session;

/**
 * 
 * @author dali
 * @date 2020-7-23
 * @Description 展示数据的工具类
 *
 */

public class ShowUtil {
	
	//用户需自动配置LinuxIP地址，用户名密码
	public static final String host = "192.168.11.130";
	private static final String user = "root";
	private static final String password = "root";
	//默认数值，不需要改动
	private static final int port = 22;
	private static String command = "";
	private static String result = "";
	
	//连接Linux虚拟机
	public static String exeCommand(String host, int port, String user, String password, String command) throws JSchException, IOException {
        JSch jsch = new JSch();
        Session session = jsch.getSession(user, host, port);
        session.setConfig("StrictHostKeyChecking", "no");
        session.setPassword(password);
        session.connect();
        ChannelExec channelExec = (ChannelExec) session.openChannel("exec");
        InputStream in = channelExec.getInputStream();
        channelExec.setCommand(command);
        channelExec.setErrStream(System.err);
        channelExec.connect();
        String result = IOUtils.toString(in, "UTF-8");
        //释放资源
        channelExec.disconnect();
        session.disconnect();
        return result;
    }
	
	//计算内存利用率
	public static double getMemoryData() throws JSchException, IOException {
		command = "cat /proc/meminfo | grep -E -w 'MemTotal|MemFree'";
		result = exeCommand(host,port,user,password,command);
		//总内存量
		String MemTotal = result.substring(18, 24);
		//空闲内存量
		String MemFree = result.substring(46, 52);
		//内存使用率=(总内存量-空闲内存量)/总内存量
		double Memusage = ((Double.parseDouble(MemTotal)-Double.parseDouble(MemFree))/Double.parseDouble(MemTotal))*100;
		//保留一位小数
		Memusage = Double.parseDouble(String.format("%.1f", Memusage));
		return Memusage;
	}
	
	//计算CPU利用率
	public static double getCPUData() throws JSchException, IOException {
		command = "top -b -n 1 | head -3 | grep id";
		result = exeCommand(host,port,user,password,command);
		//空闲CPU百分比
		String CpuFreeusage = result.substring(36, 40);
		//内存使用率=100-空闲
		double Cpuusage = 100-Double.parseDouble(CpuFreeusage);
		//保留一位小数
		Cpuusage = Double.parseDouble(String.format("%.1f", Cpuusage));
		return Cpuusage;
	}
	
	//计算实时网速
	public static double getNetworkData() throws JSchException, IOException {
		command = "./Nspeed.sh ens33";
		result = exeCommand(host,port,user,password,command);
		double NetworkSpeed = Double.parseDouble(String.format("%.2f", Double.parseDouble(result)));
		return NetworkSpeed;
	}
	
}




















