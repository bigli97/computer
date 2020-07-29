package computer.util;

import java.util.concurrent.TimeUnit;

import javax.annotation.Resource;

import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;


/**
 * 
 * @author dali
 * @date 2020-7-28
 * @Description redis工具类，只设置了几个常用的
 *
 */
@Component
public class RedisUtil {
	
	private static RedisTemplate<String, Object> redisTemplate;
	
	@Resource
	//对方法名字没有硬性规定
    public void setRedisTemplate(RedisTemplate<String, Object> redisTemplate) {
		RedisUtil.redisTemplate = redisTemplate;
    }
	
	//判断是否含有该记录
	public static boolean hasKey(String key) {
		try {
			return redisTemplate.hasKey(key);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	//获得某条记录
	public static Object get(String key) {
		try {
			return key == null ? null : redisTemplate.opsForValue().get(key);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//插入某条记录
	public static boolean set(String key, Object value) {
		try {
			redisTemplate.opsForValue().set(key, value);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	//插入某条记录，可以设置过期时间，单位为秒，小于0为永久
	public static boolean set(String key, Object value, long time) {
		try {
			if (time > 0) {
				redisTemplate.opsForValue().set(key, value, time, TimeUnit.SECONDS);
			}
			else {
				set(key, value);
			}
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	//指定某个缓存失效时间
	public static boolean expire(String key, long time) {
		try {
			if (time > 0) {
				redisTemplate.expire(key, time, TimeUnit.SECONDS);
			}
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}	
	
	//获取过期时间，返回0表示为永久
	public static long getExpire(String key) {
		return redisTemplate.getExpire(key, TimeUnit.SECONDS);
	}
	
	//删除缓存
	@SuppressWarnings("unchecked")
	public static void del(String... key) {
		if (key != null && key.length > 0) {
			if (key.length == 1) {
				redisTemplate.delete(key[0]);
			}
			else {
				redisTemplate.delete(CollectionUtils.arrayToList(key));
			}
		}
	}
	
}