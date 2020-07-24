package computer;


import java.io.IOException;
import java.io.InputStream;

import org.apache.commons.io.IOUtils;
 
import com.jcraft.jsch.ChannelExec;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.Session;

public class ConnectTest {
	public static void main(String[] args) throws IOException, JSchException {
		// 设置你的LinuxIP地址，用户名密码，以及命令
		String host = "192.168.11.130";
		int port = 22;
		String user = "root";
		String password = "root";
		/**
		 * 查看cpu相关信息cat /proc/cpuinfo
		 * vmstat用来监控虚拟内存
		 * free用来观察内存使用情况
		 * top -b -n 1 | head -5	用来将top的结果更新一次后输出到档案内
		 * cat /proc/meminfo | grep -E -w 'MemTotal|MemFree|Buffers|Cached'
		 * cat /proc/net/dev
		 */
		//计算内存使用率
		String command = "cat /proc/net/dev";
		String res = exeCommand(host,port,user,password,command);
		System.out.println(res);
		//总内存量
//		String resultT = res.substring(18, 24);
		//空闲内存量
//		String resultF = res.substring(46, 52);
		//内存使用率=(总内存量-空闲内存量)/总内存量
//		double Musage = ((Double.parseDouble(resultT)-Double.parseDouble(resultF))/Double.parseDouble(resultT))*100;
//		System.out.println(resultT);
//		System.out.println(resultF);
		//保留两位小数
//		System.out.println("内存使用率："+String.format("%.2f", Musage)+"%");
		//计算cpu利用率
//		String command2 = "top -b -n 1 | head -3 | grep id";
//		String CPUspeed = exeCommand(host,port,user,password,command2);
//		String resultC = CPUspeed.substring(36, 40);
//		double finalC = 100-Double.parseDouble(resultC);
//		System.out.println(CPUspeed);
//		System.out.println(resultC);
//		System.out.println("cpu利用率："+String.format("%.1f", finalC)+"%");	
		//计算网速
//		String command1 = "./Nspeed.sh ens33";
//		String Nspeed = exeCommand(host,port,user,password,command1);
//		System.out.println("当前网络速度："+String.format("%.2f", Double.parseDouble(Nspeed))+"kb/s");		
		
	}
	
	
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
        String out = IOUtils.toString(in, "UTF-8");
        
        channelExec.disconnect();
        session.disconnect();
        
        return out;
    }

}
