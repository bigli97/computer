package computer;

import org.junit.Test;

import computer.util.RedisUtil;

public class RedisTest {
	@Test
	public void method() {
		RedisUtil.get("k1");//不能用redisTemplate为null
	}
}
