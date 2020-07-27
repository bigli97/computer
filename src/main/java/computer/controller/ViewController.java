package computer.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import computer.service.ComputerIndexService;
import computer.util.Result;
/**
 * 
 * @author dali
 * @date 2020-7-23
 * @Description 
 *
 */
@Controller
public class ViewController {
	
	@Resource
	private ComputerIndexService service;
	
	//用来返回页面
	@RequestMapping("/show")
	public String listData3(){
	    return "show";
	}	
    
    //用来返回计算机性能指标信息
    @RequestMapping("/get")
    @ResponseBody
    public Result get() throws Exception {
    	service.create();
    	return Result.success(service.getComputerIndex());
    }
}
























