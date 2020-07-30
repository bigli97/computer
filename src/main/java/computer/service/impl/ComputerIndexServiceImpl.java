package computer.service.impl;

import java.io.IOException;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jcraft.jsch.JSchException;

import computer.dao.ComputerIndexDao;
import computer.entity.ComputerIndex;
import computer.service.ComputerIndexService;
import computer.util.PortUtil;
import computer.util.RedisUtil;
import computer.util.ShowUtil;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ComputerIndexServiceImpl implements ComputerIndexService{

	@Resource
	private ComputerIndexDao dao;
	
	//如果redis服务启动数据从redis中读写，否则从数据库中读写，true表示服务启动
	boolean flag = PortUtil.isPort(ShowUtil.host,6379);
	
	//表中数据的数量
	private int count = 0;
	
	@Override
	public void create() throws JSchException, IOException {	
		ComputerIndex computerIndex = new ComputerIndex();
		computerIndex.setCpuUsage(ShowUtil.getCPUData());
		computerIndex.setMemoryUsage(ShowUtil.getMemoryData());
		computerIndex.setNetworkSpeed(ShowUtil.getNetworkData());
		if(flag) {
			RedisUtil.set("computerMsg",computerIndex);
		} else {
			log.info("检测到没有启动redis，将数据写入数据库");
			//如果数据库超1000条记录，那么删除前500条
			count = dao.getCount();
			if(count >= 1000) {
	    		dao.deleteComputerIndex();
	    		log.info("已帮助您清理掉冗余数据");
	    	}
			dao.create(computerIndex);
		}
	}

	@Override
	public Object getComputerIndex() {
		if(flag) {
			if(RedisUtil.hasKey("computerMsg")) {
				Object result = RedisUtil.get("computerMsg");
				return result;
			} else {
				log.error("从redis获取数据失败，请检查代码");
				return null;
			}
		} else {
			log.info("检测到没有启动redis，从数据库中获取数据");
			return dao.getComputerIndex();
		}
	}

	@Override
	public void deleteComputerIndex() {
		dao.deleteComputerIndex();
	}

	@Override
	public int getCount() {
		return dao.getCount();
	}
	
}
