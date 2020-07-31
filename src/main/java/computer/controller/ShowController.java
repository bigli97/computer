package computer.controller;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import computer.dao.ComputerIndexDao;
import computer.dao.HDFSIndexDao;
import computer.dao.UserDao;
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
@RestController
public class ShowController {
	
	@Resource
	private ComputerIndexService computerIndexService;
	
	@Resource
	private HDFSIndexService HDFSIndexService;
	
	@Resource
	private UserDao udao;
	
	@Resource
	private ComputerIndexDao cdao;
	
	@Resource
	private HDFSIndexDao hdao;
	
    //用来返回计算机性能指标信息
    @RequestMapping("/getComputerIndex")
    public Result getComputerIndex() throws Exception {
    	computerIndexService.create();
    	return Result.success(computerIndexService.getComputerIndex());
    }
    
    //用来返回大数据性能指标信息
    @RequestMapping("/getHDFSIndex")
    public Result getHDFSIndex() throws Exception {
    	HDFSIndexService.create();
    	return Result.success(HDFSIndexService.getHDFSIndex());
    }
    
    //校验用户信息
    @RequestMapping("/checklogin")
    public Result checklogin(String username,String password) {
    	if(password.equals(udao.getPassword(username))) {
    		return Result.success();
    	} else {
    		return Result.fail("账号或者密码错误");
    	}
    }
    
    //获取计算机展示信息
    @RequestMapping("/getComputerAll")
    public Result getComputerAll() throws Exception {
    	return Result.success(cdao.getAll());
    }
    
    //获取hdfs展示信息
    @RequestMapping("/getHDFSAll")
    public Result getHDFSAll() throws Exception {
    	return Result.success(hdao.getAll());
    }
}
























