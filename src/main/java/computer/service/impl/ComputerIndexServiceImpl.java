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
	
	@Resource
	private RedisUtil redisUtil;
	
	@Resource
	private RedisUtil.redisString redisString;
	
	//如果redis服务启动数据从redis中读写，否则从数据库中读写，true表示服务启动
	boolean flag = PortUtil.isPort(ShowUtil.host,6379);
	
	//redis数据唯一标识
	long UUID = 0;
	
	//表中数据的数量
	private int count = 0;
	
	//将对象存入数据库，如果redis服务开启则存一份进入redis
	@Override
	public void create() throws JSchException, IOException {
		count = dao.getCount();
		if(count >= 1000) {
    		dao.deleteComputerIndex();//删除前500条记录
    	}
		ComputerIndex computerIndex = new ComputerIndex();
		computerIndex.setCpuUsage(ShowUtil.getCPUData());
		computerIndex.setMemoryUsage(ShowUtil.getMemoryData());
		computerIndex.setNetworkSpeed(ShowUtil.getNetworkData());
		dao.create(computerIndex);
		if(flag) {
			UUID = computerIndex.getId();
			redisString.set("computerMsg"+UUID,computerIndex);
			log.info("存入redis成功");
		}
	}

	@Override
	public Object getComputerIndex() {
		if(flag) {
			if(redisUtil.hasKey("computerMsg"+UUID)) {
				Object result = redisString.get("computerMsg"+UUID);
				log.info("获取数据成功");
				return result;
			} else {
				log.error("redis没有获得最新数据，请检查redis插入数据部分");
				return null;
			}
		}
		return dao.getComputerIndex();
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
