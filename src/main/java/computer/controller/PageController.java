package computer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	//用来返回Linux展示页面
	@RequestMapping("/show")
	public String listData3(){
	    return "show";
	}
	
	//用来返回登录页面
	@RequestMapping("/home")
	public String login(){
	    return "login";
	}
	
	//用来返回列表页面
	@RequestMapping("/list")
	public String list(){
	    return "list";
	}
}
