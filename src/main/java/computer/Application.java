package computer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import computer.util.PortUtil;

@SpringBootApplication
public class Application {
	public static void main(String[] args) {
		//fasle表示不自检
		PortUtil.checkPort("192.168.11.130",6379,true);
        SpringApplication.run(Application.class, args);
    }
}