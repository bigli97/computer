package computer.util;

import java.io.IOException;
import java.net.Socket;

import javax.swing.JOptionPane;

import lombok.extern.slf4j.Slf4j;
/**
 * 
 * @author dali
 * @date 2020-7-27
 * @Description 用于判断某个端口是否启动
 *
 */
@Slf4j
public class PortUtil {
	public static boolean isPort(String address, int redisPort) {
		Socket client = null;
		try {
			client = new Socket(address, redisPort);
			client.close();
			return true;
		} catch (IOException e) {
			return false;
		}
    }
 
	/**
	 * 
	 * @param address	目标主机IP
	 * @param redisPort	redis端口
	 * @param hdfsport	hdfs端口
	 * @param isCheck	是否开启自检
	 */
    public static void checkPort(String address, int redisPort, int hdfsport, boolean isCheck) {
    	if(isCheck) {
    		if(!isPort(address,hdfsport)) {
        		String message ="hdfs服务未启动，为了数据完整性请先启动hdfs";
                JOptionPane.showMessageDialog(null, message);
                System.exit(1);
        	}
        	if(!isPort(address, redisPort)) {
        		String message ="redis服务未启动，继续表示不使用缓存";
            	if(JOptionPane.OK_OPTION != JOptionPane.showConfirmDialog(null, message))
                    System.exit(1);
        	}
    	} else {
    		log.info("********************自检服务未开启********************");
    	}
    }
}
