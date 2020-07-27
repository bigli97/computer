package computer.util;

import java.io.IOException;
import java.net.Socket;

import javax.swing.JOptionPane;
/**
 * 
 * @author dali
 * @date 2020-7-27
 * @Description 用于判断某个端口是否启动
 *
 */
public class PortUtil {
	public static boolean isPort(String address, int port) {
		Socket client = null;
		try {
			client = new Socket(address, port);
			client.close();
			return true;
		} catch (IOException e) {
			return false;
		}
    }
 
    public static void checkPort(String address, int port, boolean shutdown) {
    	if(shutdown && !isPort(address, port)) {
    		String message =String.format("端口%d未启动，继续表示不使用redis启动项目",port);
        	if(JOptionPane.OK_OPTION != JOptionPane.showConfirmDialog(null, message))
                System.exit(1);
    	}
    }
}
