package computer.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import computer.service.ComputerIndexService;
import computer.service.HDFSIndexService;
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
	private ComputerIndexService computerIndexService;
	
	@Resource
	private HDFSIndexService HDFSIndexService;
	
	//用来返回页面
	@RequestMapping("/show")
	public String listData3(){
	    return "show";
	}	
    
    //用来返回计算机性能指标信息
    @RequestMapping("/getComputerIndex")
    @ResponseBody
    public Result get() throws Exception {
    	computerIndexService.create();
    	return Result.success(computerIndexService.getComputerIndex());
    }
    
    //用来返回大数据性能指标信息
    @RequestMapping("/getHDFSIndex")
    @ResponseBody
    public Result test() throws Exception {
    	HDFSIndexService.create();
    	return Result.success(HDFSIndexService.getHDFSIndex());
    }
}
























