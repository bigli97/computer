package computer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import computer.util.PortUtil;

@SpringBootApplication
public class Application {
	public static void main(String[] args) {
		//true表示开启自检服务
		PortUtil.checkPort("192.168.11.130",6379,50070,true);
        SpringApplication.run(Application.class, args);
    }
}