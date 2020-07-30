package computer.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import computer.dao.HDFSIndexDao;
import computer.entity.HDFSIndex;
import computer.service.HDFSIndexService;
import computer.util.PortUtil;
import computer.util.RedisUtil;
import computer.util.ShowUtil;
import lombok.extern.slf4j.Slf4j;
/**
 * 
 * @author dali
 * @date 2020-7-29
 * @Description hdfs业务类
 *
 */
@Service
@Slf4j
public class HDFSIndexServiceImpl implements HDFSIndexService{

	@Resource
	private HDFSIndexDao dao;
	
	//如果redis服务启动数据从redis中读写，否则从数据库中读写，true表示服务启动
	boolean flag = PortUtil.isPort(ShowUtil.host,6379);
	
	@Override
	public void create() throws Exception {
		HDFSIndex hdfsIndex = new HDFSIndex();
		Map<String,String> map = ShowUtil.getHDFSIndex();
		hdfsIndex.setConfiguredCapacity(Double.parseDouble(map.get("ConfiguredCapacity")));
		hdfsIndex.setPresentCapacity(Double.parseDouble(map.get("PresentCapacity")));
		hdfsIndex.setDfsRemaining(Double.parseDouble(map.get("DFSRemaining")));
		hdfsIndex.setNonDfsUsed(Double.parseDouble(map.get("NonDfsUsed")));
		if(flag) {
			RedisUtil.set("hdfsIndexMsg",hdfsIndex);
		} else {
			log.info("检测到没有启动redis，将数据写入数据库");
			dao.create(hdfsIndex);
		}
	}

	@Override
	public Object getHDFSIndex() {
		if(flag) {
			if(RedisUtil.hasKey("hdfsIndexMsg")) {
				Object result = RedisUtil.get("hdfsIndexMsg");
				return result;
			} else {
				log.error("从redis获取数据失败，请检查代码");
				return null;
			}
		} else {
			log.info("检测到没有启动redis，从数据库中获取数据");
			return dao.getHDFSIndex();
		}
	}

}
