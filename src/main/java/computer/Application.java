package computer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import computer.util.PortUtil;

@SpringBootApplication
public class Application {
	public static void main(String[] args) {
		//判断Redis服务是否启动,fasle表示取消自检服务
		PortUtil.checkPort("192.168.11.130",6379,true);
        SpringApplication.run(Application.class, args);
    }
}