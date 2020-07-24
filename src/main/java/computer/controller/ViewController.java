package computer.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jcraft.jsch.JSchException;

import computer.util.Result;
import computer.util.ShowUtil;
/**
 * 
 * @author dali
 * @date 2020-7-23
 * @Description 
 *
 */
@Controller
public class ViewController {
	
	//访问可视化页面
	@RequestMapping("/show")
	public String listData3(){
	    return "show";
	}	
    
    //用来返回计算机性能指标信息
    @RequestMapping("/showData")
    @ResponseBody
    public Object showData() throws JSchException, IOException{
    	List<Double> lists = new ArrayList<>();
    	lists.add(ShowUtil.getCPUData());
    	lists.add(ShowUtil.getMemoryData());
    	lists.add(ShowUtil.getNetworkData());
    	return Result.success(lists);
    }
    
}
























